memcached:
  pkg:
    - installed
/etc/memcached.conf:
  file:
    - managed
    - source: salt://application/config_files/memcached.conf
