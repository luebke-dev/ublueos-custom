FROM ghcr.io/secureblue/bluefin-nvidia-userns-hardened:latest
COPY build.sh /tmp/build.sh
RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
