FROM        haskell:8.10.4-buster
MAINTAINER  Jacek Karwowski <jac.karwowski@gmail.com>

RUN stack --resolver lts-17.15 --system-ghc install Agda-2.6.1.3

VOLUME /artifact/
COPY . /artifact/
