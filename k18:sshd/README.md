# Kerberos Server
## @edt ASIX M11-SAD Curs 2018-2019

**danicano/k18:khost** client  kerberos simple. Contacta al 
  servidor *kserver.edt.org*. Permet la autenticació dels 
  usuaris habituals pere, pau (admin), jordi, anna, marta, 
  marta/admin i julia.

Execució:
```
docker netweork create mynet

docker run --rm --name kserver.edt.org -h kserver.edt.org --network mynet -d danicano/k18:kserver

docker run --rm --name khost -h khost --network mynet -it danicano/k18:khost

docker run --rm --name sshd.edt.org -h sshd.edt.org --network mynet -d danicano/k18:sshd
```

