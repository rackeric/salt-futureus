  /etc/nginx/sites-available/test.empulsegroup.com:
    file.managed:
      - source: salt://nginx_sites/test.empulsegroup.com
      - user: root
      - group: root
      - mode: '0655'
      - require:
        - pkg: nginx_install
  /etc/nginx/sites-enabled/test.empulsegroup.com:
    file.symlink:
      - target: /etc/nginx/sites-available/test.empulsegroup.com
