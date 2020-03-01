# auditd_toolkit
auditd_toolkit.sh
script for configuring auditd collection

# selinux port for auditing
semanage port -a -t audit_port_t -p tcp 2888 # use whatever port you want to forward the logs to (REPLACEWITHPORT in template!)

# rsyslog forwarder/listener example
rsyslog/\*.conf
can be used for forwarding audit logs - although it is recommended to use audisp instead.

# audit rules examples
