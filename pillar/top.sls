base:
  '*':
    - vim
    - i3
    - secrets.ssh
    - hosts/{{ grains.host }}
