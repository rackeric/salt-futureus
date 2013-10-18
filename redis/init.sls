redis_install:
  pkg.installed:
    - pkgs:
      - redis-server
  service.running:
    - name: redis-server
    - enable: True
    - reload: True
    - require:
      - pkg: redis_install
