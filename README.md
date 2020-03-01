# auditd_toolkit
auditd_toolkit.sh
script for configuring auditd collection

# selinux port for auditing
semanage port -a -t audit_port_t -p tcp 2888 # use whatever port you want to forward the logs to (REPLACEWITHPORT in template!)

# rsyslog forwarder/listener example
rsyslog/\*.conf
can be used for forwarding audit logs - although it is recommended to use audisp instead.

# audit rules examples
The auditing rules contain all additional optional webserver rules for tomcat, nginx, apache. Active exploitation of the ghostcat vulnerability while writing files is discovered by the tomcat ruleset.

├── 00_init.rules
├── 10_standard.rules
├── 11_self_auditing_auditd.rules
├── 20_filter.rules
├── 40_access_control.rules
├── 50_special.rules
├── 60_software.rules
├── 80_highlevel.rules
├── 90_tomcat.rules.optional
├── 91_nginx.rules.optional
├── 92_apache.rules.optional
└── 100_activate.rules


