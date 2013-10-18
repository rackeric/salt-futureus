mysql-server:
  pkg:
    - installed
/etc/mysql/my.cnf:
  file:
    - managed
    - source: salt://mysql/my.cnf
