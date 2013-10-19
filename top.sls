base:
  'role:webserver':
    - match: grain
    - upgrade
    - nginx
    - nginx_sites
    - directories

  'role:database':
    - match: grain
    - upgrade
    - mysql

  'role:backend':
    - match: grain
    - upgrade
    - redis
    - solr
    - python27

  'role:cache':
    - match: grain
    - upgrade
    - memcached

  'role:application':
    - match: grain
    - upgrade
    - python27
    - uwsgi
    - uwsgi_sites

  'role:all':
    - match: grain
    - upgrade
    - nginx
    - uwsgi
    - directories
    - nginx_sites
    - uwsgi_sites
    - python_apps
    - redis
    - solr
    - mysql
    - memcached
