nginx:
  pkg.installed

/etc/nginx/sites-enabled/testisivu.conf:
  file.managed:
    - source: salt://nginx/testisivu.conf

nginx.service:
  service.running:
    - name: nginx
    - watch:
      - file: /etc/nginx/sites-enabled/testisivu.conf
