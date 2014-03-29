#!/bin/bash

set -e

mounts="${@}"
targets=()

rpcbind

for mnt in "${mounts[@]}"; do
  src=$(echo $mnt | awk -F':' '{ print $1 }')
  target=$(echo $mnt | awk -F':' '{ print $2 }')
  targets+=("$target")

  mkdir -p $target

  mount -t nfs -o proto=tcp,port=2049 ${NFS_PORT_2049_TCP_ADDR}:${src} ${target}
done

exec inotifywait -m "${targets[@]}"
