/etc/uwsgi/apps-available/test.empulsegroup.com.xml:
  file.managed:
    - source: salt://uwsgi_sites/test.empulsegroup.com.xml
    - user: root
    - group: root
    - mode: '0655'
    - require:
      - pkg: uwsgi_install
/etc/uwsgi/apps-enabled/test.empulsegroup.com.xml:
  file.symlink:
    - target: /etc/uwsgi/apps-available/test.empulsegroup.com.xml
