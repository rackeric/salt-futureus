uwsgitop_install:
  pip.installed:
    - name: uwsgitop
    - require:
      - pip: uwsgi_install
