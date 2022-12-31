FROM ubuntu:22.04

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP.UTF-8

RUN adduser -q --gecos "" --disabled-login clanguser \
    && apt update \
    && apt install -y language-pack-ja cmake clang clang-tidy clang-format ninja-build lcov valgrind doxygen \
    && rm -fr /var/lib/apt/lists/*
