FROM alpine:3.8

MAINTAINER Joel Nitta <joelnitta@gmail.com>

####################################################################
# Application: NCBI BLAST+
# Version: 2.7.1
# Description: Finds regions of similarity between biological
# sequences
####################################################################

ENV APPS_HOME=/apps
ENV APP_NAME=ncbi-blast
ENV VERSION=2.7.1
ENV DEST=$APPS_HOME/$APP_NAME

# Install dependencies
RUN apk add --update --no-cache python curl

# Install ncbi-blast+
RUN mkdir -p $DEST && \
    curl ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/$VERSION/$APP_NAME-$VERSION+-x64-linux.tar.gz \
      | tar -zxC $DEST

ENV PATH $DEST/bin:$PATH

WORKDIR /home

CMD ["bash"]
