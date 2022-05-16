module justmiles/traefik-cloudflare-tunnel

go 1.17

require (
	github.com/cloudflare/cloudflare-go v0.39.0
	github.com/go-resty/resty/v2 v2.7.0
	github.com/sirupsen/logrus v1.8.1
	github.com/traefik/traefik/v2 v2.6.6
)

require (
	github.com/containous/alice v0.0.0-20181107144136-d83ebdd94cbd // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/gorilla/context v1.1.1 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/gravitational/trace v0.0.0-20190726142706-a535a178675f // indirect
	github.com/jonboulle/clockwork v0.1.0 // indirect
	github.com/miekg/dns v1.1.45 // indirect
	github.com/patrickmn/go-cache v2.1.0+incompatible // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/traefik/paerser v0.1.5 // indirect
	github.com/vulcand/predicate v1.1.0 // indirect
	golang.org/x/crypto v0.0.0-20220513210258-46612604a0f9 // indirect
	golang.org/x/mod v0.4.2 // indirect
	golang.org/x/net v0.0.0-20220225172249-27dd8689420f // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
	golang.org/x/term v0.0.0-20210927222741-03fcf44c2211 // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/time v0.0.0-20220224211638-0e9765cccd65 // indirect
	golang.org/x/tools v0.1.6-0.20210726203631-07bc1bf47fb2 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
)

replace (
	github.com/abbot/go-http-auth => github.com/containous/go-http-auth v0.4.1-0.20200324110947-a37a7636d23e
	github.com/go-check/check => github.com/containous/check v0.0.0-20170915194414-ca0bf163426a
	github.com/gorilla/mux => github.com/containous/mux v0.0.0-20181024131434-c33f32e26898
)

replace github.com/cloudflare/cloudflare-go => github.com/justmiles/cloudflare-go v0.39.1-0.20220514220619-ed137f796f9b
