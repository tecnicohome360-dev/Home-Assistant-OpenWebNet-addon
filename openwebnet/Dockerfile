# Default to a concrete Alpine base so the add-on builds even when the
# Supervisor does not provide BUILD_FROM (no build.yaml). Stays overridable.
ARG BUILD_FROM=alpine:3.20
FROM ${BUILD_FROM}

# Add env
ENV LANG=C.UTF-8

# Setup base (bash for run.sh, jq to read options, socat for the bridge)
RUN apk add --no-cache bash jq socat

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
