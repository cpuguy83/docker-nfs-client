FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y nfs-common inotify-tools -qq
ADD nfs-client.sh /usr/local/bin/nfs-client
ENTRYPOINT ["/usr/local/bin/nfs-client"]

