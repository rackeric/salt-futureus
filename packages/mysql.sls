mysql-server:
  pkg:
    - installed
/etc/mysql/my.cnf:
  file:
    - managed
    - source: salt://database/config_files/my.cnf
