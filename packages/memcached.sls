memcached:
  pkg:
    - installed
/etc/memcached.conf:
  file:
    - managed
    - source: salt://cache/config_files/memcached.conf
