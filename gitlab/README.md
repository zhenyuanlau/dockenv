# GitLab

## Hosts

```hosts
127.0.0.1 gitlab.example.com
```

## Access

```shell
open http://gitlab.example.com:8080
```

## Login

password for root:

```shell
docker exec -it gitlab-ce /bin/bash

$ cat /etc/gitlab/initial_root_password 
```
