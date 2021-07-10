FROM alpine:3.14.0
ARG bcftools_commit

RUN apk add --update-cache \
    build-base git \
    bash bzip2-dev curl-dev xz-dev zlib-dev

# Adapted from http://samtools.github.io/bcftools/howtos/install.html.
RUN git clone --recurse-submodules git://github.com/samtools/htslib.git
RUN git clone git://github.com/samtools/bcftools.git
WORKDIR /bcftools
RUN git checkout $bcftools_commit
ENV BCFTOOLS_PLUGINS=/bcftools/plugins
RUN make install

# Also install htslib
WORKDIR /htslib
RUN make install

RUN apk del build-base git

