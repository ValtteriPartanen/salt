nginx:
  pkg.installed

/etc/nginx/sites-enabled/testisivu.conf:
  file.managed:
    - source: salt://nginx/testisivu.conf

/var/www/testisivu.com:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

nginx.service:
  service.running:
    - name: nginx
    - watch:
      - file: /etc/nginx/sites-enabled/testisivu.conf
