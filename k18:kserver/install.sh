#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
# -------------------------------------
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kadm5.acl  /var/kerberos/krb5kdc/kadm5.acl
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf

/usr/sbin/kdb5_util create -s -P masterkey
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kjulia julia"
kadmin.local -q "addprinc -pw ksuperuser superuser"
kadmin.local -q "addprinc -pw kuser01 user01"
kadmin.local -q "addprinc -pw kuser03 user03"
kadmin.local -q "addprinc -pw kuser02 user02"
kadmin.local -q "addprinc -randkey host/sshd.edt.org"

#kadmin.local -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"    exportar claus
