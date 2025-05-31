ARG WEBSOCIFY_VERSION
FROM isayme/websockify:${NOVNC_VERSION}

ARG NOVNC_VERSION
ENV NOVNC_VERSION ${NOVNC_VERSION}
ENV WEBSOCIFY_VERSION ${WEBSOCIFY_VERSION}

WORKDIR /app

# noVNC web files
ADD noVNC.tar.gz .
RUN mv noVNC-${NOVNC_VERSION} web

CMD ["/app/websockify", "server", "--web", "./web"]
