#linux加域控
yum install -y sssd
yum install -y realmd
yum install -y oddjob
yum install -y oddjob-mkhomedir
yum install -y adcli
yum install -y samba-common
yum install -y samba-common-tools
yum install -y krb5-workstation
yum install -y openldap-clients
yum isntall -y policycoreutils-python

cat /etc/resolv.conf

realm join --user=admin example.com

realm list
