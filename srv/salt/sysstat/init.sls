sysstat:
  pkg.installed

/etc/default/sysstat:
  file.managed:
    - source: salt://sysstat/sysstat

sysstat.service:
  service.running:
    - name: sysstat
    - watch:
      - file: /etc/default/sysstat
