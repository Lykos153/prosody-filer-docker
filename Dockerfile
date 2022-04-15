FROM alpine

ARG VERSION=1.0.2

RUN apk add --no-cache curl && \
    curl -Lo /usr/local/bin/prosody-filer https://github.com/ThomasLeister/prosody-filer/releases/download/v${VERSION}/prosody-filer_linux_x86_64 && \
    apk del curl && \
    chmod +x /usr/local/bin/prosody-filer

CMD [ "prosody-filer" ]
