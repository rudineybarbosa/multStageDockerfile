FROM golang:1.17.0-alpine as stage1

WORKDIR /usr/share/rudiney/teste
COPY hello-world .

FROM scratch
WORKDIR /usr/share/rudiney/teste
COPY --from=stage1 /usr/share/rudiney/teste/hello-world .
ENTRYPOINT [ "./hello-world"]