base:
  '*':
  'roles:webserver':
    - match: grain
    - upgrade
    - nginx

  'roles:database':
    - match: grain
    - upgrade
    - mysql

  'roles:backend':
    - match: grain
    - upgrade
    - redis
    - solr
    #- python NEEDED
    #- memcach client NEEDED

  'roles:cache':
    - match: grain
    - upgrade
    - memcached

  'roles:application':
    - match: grain
    - upgrade
    #- python NEEDED
    #- memcache client NEEDED
    #- apache NO LONGER WANTED, BUT WHAT TO DO?

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
