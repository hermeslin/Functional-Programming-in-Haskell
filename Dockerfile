FROM debian:bullseye

ARG GHC_VERSION
ARG CABAL_VERSION
ARG INSTALL_STACK
ARG INSTALL_HLS

RUN apt update && apt install -y

## required packages https://www.haskell.org/ghcup/install/#version-11-12
RUN apt install -y build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | \
    BOOTSTRAP_HASKELL_NONINTERACTIVE=1 \
    BOOTSTRAP_HASKELL_GHC_VERSION=${GHC_VERSION} \
    BOOTSTRAP_HASKELL_CABAL_VERSION=${CABAL_VERSION} \
    BOOTSTRAP_HASKELL_INSTALL_STACK=${INSTALL_STACK} \
    BOOTSTRAP_HASKELL_INSTALL_HLS=${INSTALL_HLS} \
    BOOTSTRAP_HASKELL_ADJUST_BASHRC=P \
    sh

ENV PATH=/root/.cabal/bin:/root/.ghcup/bin:/root/.stack/bin:${PATH}
