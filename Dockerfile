ARG tag="debian:latest"
FROM ${tag}

# Set locale to fix character encoding
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV DEBIAN_FRONTEND=noninteractive

# Install a few things that might be helpful
RUN apt-get update && apt-get install -y \
  devscripts \
  debhelper \
  equivs \
  less \
  vim 

COPY run_and_copy.sh /
WORKDIR /make

VOLUME /out
ENTRYPOINT ["/run_and_copy.sh"]
CMD ["bash"]
