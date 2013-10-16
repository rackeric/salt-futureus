uwsgi_startup:
  file.managed:
    - name: /etc/init/uwsgi.conf
    - source: salt://uwsgi/uwsgi.upstart
    - user: root
    - group: root
    - mode: '0660'


uwsgi_install:
  user.present:
    - name: uwsgi
    - shell: /bin/false
    - home: /nonexistent
    - createhome: false
    - gid: 33
  file.managed:
    - name: /etc/uwsgi/uwsgi.yaml
    - source: salt://uwsgi/uwsgi.yaml.jinja
    - user: uwsgi
    - mode: '0660'
    - require:
      - user: uwsgi_install
  pip.installed:
    - name: uwsgi
    - require:
      - pkg: python-pip_install
      - pkg: libcap-dev_install
