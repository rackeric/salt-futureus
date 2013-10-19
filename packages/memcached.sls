memcached:
  pkg:
    - installed
/etc/memcached.conf:
  file:
    - managed
    - source: salt://config_files/memcached.conf
