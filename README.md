Docker NFS Server
================

Usage
----
```bash
docker run -d --name nfs cpuguy83/nfs-server /path/to/share /path/to/share2 /path/to/shareN
```

```bash
docker run -d --name nfs-client --link nfs:nfs cpuguy83/nfs-client /:/media
``` 
