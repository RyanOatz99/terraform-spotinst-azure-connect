import time
import click
import json

from spotinst_sdk2 import SpotinstSession


@click.group()
@click.pass_context
def cli(ctx, *args, **kwargs):
    ctx.obj = {}
    session = SpotinstSession()
    ctx.obj['client'] = session.client("admin")


@cli.command()
@click.argument('name')
@click.pass_context
def create(ctx, *args, **kwargs):
    """Create a new Spot Account"""
    account_name = "'" + kwargs.get('name') + "'"
    result = ctx.obj['client'].create_account(kwargs.get('name'))
    time.sleep(10)
    click.echo(json.dumps(result))


@cli.command()
@click.argument('account-id')
@click.pass_context
def delete(ctx, *args, **kwargs):
    """Delete a Spot Account"""
    try:
        response = ctx.obj['client'].delete_account(kwargs.get('account_id'))
        print(json.dumps(response))
    except:
        print("did not delete")
        print(json.dumps(response))


@cli.command()
@click.option('--account_id', type=str, required=True)
@click.option('--client_id', type=str, required=True)
@click.option('--client_secret', type=str, required=True)
@click.option('--tenant_id', type=str, required=True)
@click.option('--subscription_id', type=str, required=True)
@click.pass_context
def set_cloud_credentials(account_id, client_id, client_secret, tenant_id, subscription_id):
    """Set Azure credentials to Spot Account"""
    session = SpotinstSession()
    client = session.client("setup_azure")
    client.account_id = account_id
    azurecredentials = AzureCredentials(client_id, client_secret, tenant_id, subscription_id)
    try:
        response = client.set_credentials(azurecredentials)
        print(json.dumps(response))
    except:
        print(json.dumps(response))


@cli.command()
@click.option(
    '--filter',
    required=False,
    help='Return matching records. Syntax: key=value'
)
@click.option(
    '--attr',
    required=False,
    help='Return only the raw value of a single attribute'
)
@click.option(
    '--name',
    required=False,
    help='Return the account ID for the matching account name'
)
@click.pass_context
def get(ctx, *args, **kwargs):
    """Returns ONLY the first match"""
    time.sleep(5)
    result = ctx.obj['client'].get_accounts()
    if kwargs.get('filter'):
        k, v = kwargs.get('filter').split('=')
        result = [x for x in result if x[k] == v]
    if kwargs.get('attr'):
        if result:
            result = result[0].get(kwargs.get('attr'))
            click.echo(result)
    else:
        if result:
            result = [x for x in result if x['name'] == kwargs.get('name')]
            click.echo(json.dumps(result[0]))
        else:
            fail = {"account_id": "failed"}
            click.echo(json.dumps(fail))


if __name__ == "__main__":
    cli()
