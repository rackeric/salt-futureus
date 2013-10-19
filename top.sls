base:
  'role:webserver':
    - match: grain
    - webserver

  'role:database':
    - match: grain
    - database

  'role:backend':
    - match: grain
    - backend

  'role:cache':
    - match: grain
    - cache

  'role:application':
    - match: grain
    - application
