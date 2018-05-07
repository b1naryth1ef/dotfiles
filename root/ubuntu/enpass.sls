enpass:
  pkgrepo.managed:
    - name: 'deb http://repo.sinew.in/ stable main'
    - file: /etc/apt/sources.list.d/enpass.list
    - key_url: https://dl.sinew.in/keys/enpass-linux.key
    - require_in:
      - pkg: enpass

  pkg.installed: []

/usr/local/bin/enpass:
  file.symlink:
    - target: /opt/Enpass/bin/runenpass.sh
    - require:
      - pkg: enpass
