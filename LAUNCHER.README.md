# node.docker launcher

A script that changes enhances your development workflow.

## Installing

```bash
# Put node.docker launcher into /usr/sbin :
wget -O /usr/sbin/node.docker https://raw.githubusercontent.com/cusspvz/node.docker/master/launcher;
chmod +x /usr/sbin/node.docker;

# In case you have node and prefer an NPM package:
npm i -g node.docker
```

Will re-use container image if its on cache, otherwise it will pull from DH.
```bash
bash-3.2$ node.docker 0.12.7
> 0.12.7 is up and running from dockercache
(^C again to quit)
>
bash-3.2$ node.docker 4.1.1
Unable to find image 'cusspvz/node:4.1.1' locally
4.1.1: Pulling from cusspvz/node
9caf287e1f2d: Pull complete
8119db1f2d0a: Pull complete
61f0af81675f: Pull complete
e13c97fc9799: Pull complete
66df5dd9107b: Pull complete
ade3d319c76d: Pull complete
72a38303450d: Pull complete
1604dce4bbd4: Pul