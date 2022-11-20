ARG ARCH="amd64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest

LABEL maintainer="Navid Yaghoobi <navidys@fedoraproject.org>"

COPY ./test_image /bin/test_image

EXPOSE 9882
USER nobody
ENTRYPOINT [ "/bin/test_image" ]
