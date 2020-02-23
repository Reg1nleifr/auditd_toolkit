# auditd_toolkit
auditd_toolkit.sh
script for configuring auditd collection

# rsyslog forwarder example
rsyslog/\*.conf
can be used for forwarding audit logs - although it is recommended to use audisp instead.

# audit rules examples
rules.d/\*.rules - ruleset that is recommended for any server.

rules.d\/*.<webservername>.optional - optional if the webserver is installed. Needs adjustment.
  
rules.d\/*.heavyload.optional - optional if the server can handle these events.

