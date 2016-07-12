Docker NFS Server
================

Usage
----
```bash
docker run -d --name nfs cpuguy83/nfs-server /path/to/share /path/to/share2 /path/to/shareN
```

```bash
docker run -d --name nfs-client --link nfs:nfs cpuguy83/nfs-client /path/on/nfs/server:/path/on/client
``` 

Links

http://container42.com/2014/03/29/docker-quicktip-4-remote-volumes/
