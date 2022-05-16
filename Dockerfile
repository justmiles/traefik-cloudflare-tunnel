FROM golang:1.17 as builder

WORKDIR /go/src

COPY *.go /go/src/
COPY go.* /go/src/

RUN CGO_ENABLED=0 go build -o traefik-cloudflare-tunnel 

# Create image from scratch
FROM scratch

COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=builder /go/src/traefik-cloudflare-tunnel /traefik-cloudflare-tunnel

ENTRYPOINT [ "/traefik-cloudflare-tunnel" ]