FROM golang:1.17 as builder

# Create image from scratch
FROM scratch

COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

COPY traefik-cloudflare-tunnel /traefik-cloudflare-tunnel

ENTRYPOINT [ "/traefik-cloudflare-tunnel" ]