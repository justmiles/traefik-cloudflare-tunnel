# traefik-clo

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
