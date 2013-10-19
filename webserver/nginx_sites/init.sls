#  /etc/nginx/sites-available/domain.com:
#    file.managed:
#      - source: salt://webserver/config_files/domain.com
#      - user: root
#      - group: root
#      - mode: '0655'
#      - require:
#        - pkg: nginx_install
#  /etc/nginx/sites-enabled/domain.com:
#    file.symlink:
#      - target: /etc/nginx/sites-available/domain.com
