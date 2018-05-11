ufw:
  pkg.installed

/etc/ufw/user.rules:
  file.managed:
    - source: salt://firewall/user.rules
    - require:
      - pkg: ufw

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://firewall/user6.rules
    - require:
      - pkg: ufw

ufw.service:
  cmd.run:
    - name: 'ufw enable'
    - require:
      - pkg: ufw
