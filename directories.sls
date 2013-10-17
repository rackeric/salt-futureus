/srv/www/test.empulsegroup.com/public_html/static:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - groups
      - mode
/srv/www/test.empulsegroup.com/application:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - groups
      - mode
/srv/www/test.empulsegroup.com/logs:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - groups
      - mode
