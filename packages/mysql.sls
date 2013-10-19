mysql-server:
  pkg:
    - installed
/etc/mysql/my.cnf:
  file:
    - managed
    - source: salt://config_files/my.cnf
