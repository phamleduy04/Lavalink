FROM azul/zulu-openjdk-alpine:13

# Run as non-root user
RUN addgroup -g 322 lavalink && \
    adduser -u 322 -G lavalink lavalink
USER lavalink

WORKDIR /opt/Lavalink

COPY Lavalink.jar Lavalink.jar

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-Xmx4G", "-jar", "Lavalink.jar"]
