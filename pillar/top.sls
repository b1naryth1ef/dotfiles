base:
  '*':
    - secrets.ssh
    - hosts/default
    - hosts/{{ grains.host }}
