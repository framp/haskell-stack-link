FROM alpine
LABEL description="Builds API static binary"
MAINTAINER Nnwww <johndororo@gmail.com>

# update repositories (add edge main & community)
RUN echo "https://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "https://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# install ghc + cabal, sources
RUN apk update && apk upgrade && \
    apk add alpine-sdk git linux-headers ca-certificates gmp-dev zlib-dev curl upx

# install stack
RUN curl -sSL https://get.haskellstack.org/ | sh
