FROM mcr.microsoft.com/devcontainers/cpp:0-debian-11

# Let CMake pick the compiler; don't pin a version.
ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        enscript \
        ghostscript \
        poppler-utils \
        acl \
        clang \
        gdb \
        lldb \
        valgrind \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
