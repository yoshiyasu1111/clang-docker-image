FROM ubuntu:22.04

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP.UTF-8

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates language-pack-ja g++ git cmake ninja-build python3 \
    && git clone -b llvmorg-15.0.6 --depth=1 https://github.com/llvm/llvm-project.git \
    && cd llvm-project/ \
    && cmake -S llvm -B build -DLLVM_ENABLE_PROJECTS="clang;lldb" -DCMAKE_BUILD_TYPE=Release -G Ninja \
    && cmake --build build \
    && cmake --build build -- install \
    && cd ../ \
    && rm -fr llvm-project \
    && apt-get purge -y g++ git cmake ninja-build \
    && apt-get autoremove -y \
    && rm -fr /var/lib/apt/lists/*
