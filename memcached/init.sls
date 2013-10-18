memcached:
  pkg:
    - installed
/etc/memcached.conf:
  file:
    - managed
    - source: salt://memcached/memcached.conf
