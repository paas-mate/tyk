FROM shoothzj/compile:go AS compiler

RUN git clone --depth 1 https://github.com/TykTechnologies/tyk

RUN cd tyk && \
    go build

FROM shoothzj/base:go

ENV TYK_HOME /opt/tyk

COPY --from=compiler /tyk/tyk /opt/tyk/tyk
COPY --from=compiler /tyk/templates /opt/tyk/templates

WORKDIR /opt/tyk
