# Kerberos Server
# @edt ASIX M11-SAD Curs 2018-2019

Execució:
```
docker netweork create mynet

docker run --rm --name kserver.edt.org -h kserver.edt.org --network mynet -d danicano/k18:kserver

docker run --rm --name khost -h khost --network mynet -it danicano/k18:khost
```
