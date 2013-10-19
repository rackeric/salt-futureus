/srv/www/domain.com/application/wsgi_configuration_module.py:
  file.managed:
    - source: salt://python_apps/wsgi_configuration_module.py
    - user: root
    - group: root
    - mode: '0655'
