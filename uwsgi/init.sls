uwsgi_install:
  pkg.installed:
    - pkgs:
      - uwsgi
      - uwsgi-plugin-python
  service.running:
    - name: uwsgi
    - enable: True
    - reload: True
    - require:
      - pkg: uwsgi_install
