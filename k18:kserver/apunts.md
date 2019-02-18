kadmin.local -q "list_principals"
kadmin.local --> interactiu
kinit pere: kpere  --> login pere
klist
kdestroy  --> logout pere/(eliminar tickert)
kinit superuser: ksuperuser; klist;kdestroy
kinit pere: kpere; klist; kadmin (ens diu que per fer kadmin em de ser pere/admin);kdestroy
kinit anna: kanna; klist; kadmin (Client 'anna/admin@EDT.ORG' not found in Kerberos database while initializing kadmin interface)
kadmin -p superuser:ksuperuser;
admin:  delprinc julia	
Are you sure you want to delete the principal "julia@EDT.ORG"? (yes/no): yes
Principal "julia@EDT.ORG" deleted.
Make sure that you have removed this principal from all ACLs before reusing.
kadmin:  quit
[root@kserver docker]# klist
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: anna@EDT.ORG

Valid starting     Expires            Service principal
02/18/19 11:32:10  02/19/19 11:32:10  krbtgt/EDT.ORG@EDT.ORG
kadmin -p pere     
Authenticating as principal pere with password.
Password for pere@EDT.ORG: 
kadmin:  listprincs
get_principals: Operation requires ``list`` privilege while retrieving list.
kadmin:  quit
[root@kserver docker]# kadmin -p pere/admin  --> (**-p** en nom de qui et vols connectar)(Volem ser **pere/admin**)
Authenticating as principal pere/admin with password.
Password for pere/admin@EDT.ORG: 
kadmin:  listprincs
K/M@EDT.ORG
anna@EDT.ORG
jordi@EDT.ORG
kadmin/admin@EDT.ORG
kadmin/changepw@EDT.ORG
kadmin/kserver@EDT.ORG
kiprop/kserver@EDT.ORG
krbtgt/EDT.ORG@EDT.ORG
marta@EDT.ORG
pau@EDT.ORG
pere/admin@EDT.ORG
pere@EDT.ORG
superuser@EDT.ORG
