# haveged

[![](https://badge.imagelayers.io/dit4c/haveged:latest.svg)](https://imagelayers.io/?images=dit4c/haveged:latest)

An entropy gathering service for hosts where entropy is in short supply:
<http://www.issihosts.com/haveged/>

Based on [Alpine Linux](http://www.alpinelinux.org/) to keep the image small.

To actually increase entropy (as opposed to supplementing the exisiting pool) requires `CAP_SYS_ADMIN`:
```
docker run -ti -d --name entropy_source --cap-add SYS_ADMIN dit4c/haveged
```

After starting, check that your available entropy is back over 1000:
```
cat /proc/sys/kernel/random/entropy_avail
```
