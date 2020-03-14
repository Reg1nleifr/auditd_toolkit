# auditd_toolkit
```auditd_toolkit.sh```
script for configuring auditd collection

# selinux add port for forwarding audit events
Replace port 2888 with any other port
```semanage port -a -t audit_port_t -p tcp 2888```


# rsyslog forwarder/listener example
```
├── audit_forward.conf
└── audit_listen.conf
```

This rsyslog configuratoin can be used for forwarding audit logs - it is recommended to use audisp for forwarding audit events instead.

# audit rules examples
The auditing rules contain a set of recommended rules in the mitre style.
Additional 061_installed_software.rules.manual can be used for manually adding special watched software on the system.
Additional 061_application_data.rules.manual can be used for manually adding critical application data on the watched system.
Additional *.optional can be used for watching connection syscalls and unsuccessful file operations. These events are considered to be very noisy but might be required for compliance reasons.
Additional *.web rules for the webservers: tomcat, nginx, apache.
Active exploitation of the ghostcat vulnerability while writing files is discovered by the tomcat ruleset.

```
├── 000_initial.rules
├── 001_self_auditing.rules
├── 002_filter.rules
├── 010_special_files.rules
├── 020_standard_rules.rules
├── 030_recon_and_injection.rules
├── 040_access_control.rules
├── 060_software.rules
├── 061_installed_software.rules.manual
├── 062_application_data.rule.manual
├── 070_file_operations.rules
├── 090_tomcat.rules.web
├── 091_nginx.rules.web
├── 092_apache.rules.web
├── 100_account_related.rules
├── 102_connections.rules.optional
├── 103_unsuccessful.rules.optional
└── 999_activate.rules
```

