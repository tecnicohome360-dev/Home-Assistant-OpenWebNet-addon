# Hardcode the base image (no ARG BUILD_FROM) so the build cannot fail with
# "base name ($BUILD_FROM) should not be blank" when the Supervisor passes an
# empty BUILD_FROM. alpine:3.20 is multi-arch, so the right arch is resolved.
FROM alpine:3.20

# Add env
ENV LANG=C.UTF-8

# Setup base (bash for run.sh, jq to read options, socat for the bridge)
RUN apk add --no-cache bash jq socat

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
