/etc/uwsgi/apps-available/domain.com.xml:
  file.managed:
    - source: salt://application/config_files/domain.com.xml
    - user: root
    - group: root
    - mode: '0655'
    - require:
      - pkg: uwsgi_install
/etc/uwsgi/apps-enabled/domain.com.xml:
  file.symlink:
    - target: /etc/uwsgi/apps-available/domain.com.xml
