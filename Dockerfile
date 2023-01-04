FROM shoothzj/compile:go

RUN git clone --depth 1 https://github.com/TykTechnologies/tyk

RUN cd tyk && \
    go build
