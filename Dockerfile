FROM gcr.io/distroless/static-debian11:nonroot

COPY --chown=nonroot:nonroot dist/bnn /etc/bnn
COPY --chown=nonroot:nonroot --chmod=0755 dist/app /usr/local/bin/app

USER nonroot:nonroot
ENTRYPOINT ["/usr/local/bin/app", "/etc/bnn/test.txt"]
