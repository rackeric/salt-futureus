nginx_install:
  pkgrepo.managed:
    - ppa: nginx/stable
    - require:
      - pkg: python-software-properties_install
  pkg.installed:
    - name: nginx-extras
    - require:
      - pkgrepo: nginx_install
  file.managed:
    - name: /etc/init/nginx.conf
    - source: salt://nginx/nginx.upstart
    - user: root
    - group: root
    - mode: '0640'
    - require:
      - pkg: nginx_install
  service.running:
    - name: nginx
    - enable: True
    - reload: True
    - require:
      - file: nginx_install
    - watch:
      - file: nginx_install
