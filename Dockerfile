ARG NOVNC_VERSION
ARG WEBSOCKIFY_VERSION

FROM alpine as builder
WORKDIR /app

ENV NOVNC_VERSION ${NOVNC_VERSION}
RUN echo ${NOVNC_VERSION}
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v${NOVNC_VERSION}.tar.gz -O noVNC.tar.gz
RUN tar xf noVNC.tar.gz && mv noVNC-${NOVNC_VERSION} web

FROM isayme/websockify:${WEBSOCKIFY_VERSION}

ENV NOVNC_VERSION ${NOVNC_VERSION}
ENV WEBSOCKIFY_VERSION ${WEBSOCKIFY_VERSION}

WORKDIR /app

# noVNC web files
COPY --from=builder /app/web ./

CMD ["/app/websockify", "server", "--web", "./web"]
