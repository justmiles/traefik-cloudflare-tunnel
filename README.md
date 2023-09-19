# traefik-cloudflare-tunnel

Sync Cloudflare Zero-Trust tunnels from Traefik routes

## Configuration

| Environment Variable  | Type   | Description                                                  |
| :-------------------- | ------ | ------------------------------------------------------------ |
| CLOUDFLARED_TOKEN     | String | Token for the `cloudflared` daemon. This is the token provided after [creating a tunnel](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide/#1-create-a-tunnel). |
| CLOUDFLARE_API_TOKEN  | String | A valid [cloudflare API token](https://dash.cloudflare.com/profile/api-tokens) |
| CLOUDFLARE_ACCOUNT_ID | String | Your account ID. Available in the URL at https://dash.cloudflare.com |
| CLOUDFLARE_TUNNEL_ID  | String | The ID of your cloudlfare tunnel                             |
| CLOUDFLARE_ZONE_ID    | String | The cloudflare zone ID of your site.                         |
| DOMAIN_NAME           | String | The domain name used for these tunnels                       |
| TRAEFIK_API_ENDPOINT | String | The HTTP uri to Traefik's API (example: http://192.168.1.100:8081)                       |
| TRAEFIK_SERVICE_ENDPOINT | String | The HTTP uri to Traefik's web entrypoint |
| TRAEFIK_ENTRYPOINT | String | Optional. Only target routes registered to these entrypoints |


**Cloudflare Permissions**

The `CLOUDFLARE_API_TOKEN` is your API token and you can create/obtain one here: https://dash.cloudflare.com/profile/api-tokens
The `CLOUDFLARE_ACCOUNT_ID` is your account ID is a 32 character hash unique to you. After you login to cloudflare, you can find it in the URL here: https://dash.cloudflare.com
The `CLOUDFLARE_TUNNEL_ID` is the ID of the Cloudflare tunnel. You can create one from the Zero Trust dashboard and navigating to Access -> Tunnels. The ID is under the name.

Ensure the permissions for your Cloudflare token matches the following:

- Account -> Cloudflare Tunnel -> Edit
- Account -> Zero Trust -> Edit
- User -> User Details -> Read
- Zone -> DNS -> Edit

## Example

`cd` into the `example` directory and update the `.env` with your CloudFlare info.

```bash
cd example
cp .env.example .env
vi .env
```

Run `docker-compose up` to start traefik, cloudflared, traefik-cloudflare-tunnel, and an example app.

```bash
docker-compose up
```

If authentication is correct, you should be able to browse to the provided tunnel!
