tar -cf backup.tar /home/xubuntu/:
  cron.present:
    - user: xubuntu
    - hour: '*/24'
