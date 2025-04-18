SHELL=/bin/bash -euo pipefail

.DEFAULT_GOAL := start

# https://reactjs.org/
# https://create-react-app.dev/docs/deployment/

start:
	npm start

.PHONY: build
build:
	npm run build

.PHONY: test
test:
	npm run test

.PHONY: certs
certs: dotfile=.env
certs:
	@mkdir -p tls/localhost
	mkcert \
		-cert-file ./tls/localhost/cert.pem \
		-key-file ./tls/localhost/key.pem \
		localhost 127.0.0.1 ::1
	@echo "HTTPS=true" > ${dotfile}
	@echo "SSL_CRT_FILE=tls/localhost/cert.pem" >> ${dotfile}
	@echo "SSL_KEY_FILE=tls/localhost/key.pem" >> ${dotfile}
	@echo "Created ${dotfile} file."
