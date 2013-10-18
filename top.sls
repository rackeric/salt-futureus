base:
  'roles:webserver':
    - match: grain
    - upgrade
    - nginx
    - nginx_sites
    - directories

  'roles:database':
    - match: grain
    - upgrade
    - mysql

  'roles:backend':
    - match: grain
    - upgrade
    - redis
    - solr
    - python27

  'roles:cache':
    - match: grain
    - upgrade
    - memcached

  'roles:application':
    - match: grain
    - upgrade
    - python27
    - uwsgi
    - uwsgi_sites

  'roles:all':
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
