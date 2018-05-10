asterisk:
  pkg.installed

/etc/asterisk/sip.conf:
  file.managed:
    - source: salt://asterisk/sip.conf

/etc/asterisk/extensions.conf:
  file.managed:
    - source: salt://asterisk/extensions.conf

/etc/asterisk/voicemail.conf:
  file.managed:
    - source: salt://asterisk/voicemail.conf

asteriskservice:
  service.running:
    - name: asterisk
    - watch:
      - file: /etc/asterisk/sip.conf
      - file: /etc/asterisk/extensions.conf
      - file: /etc/asterisk/voicemail.conf  
