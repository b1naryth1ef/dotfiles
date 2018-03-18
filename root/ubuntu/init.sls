include:
  - ssh
  - zsh
  - vim
  - ubuntu.sudoers

packages:
  pkg.installed:
    - pkgs:
      - vim
      - cmake
      - curl
      - wget
      - gnupg
      - gnupg-agent
      - python-pip

google-chrome-stable:
  pkgrepo.managed:
    - name: 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb stable main'
    - file: /etc/apt/sources.list.d/google-chrome.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub
    - require_in:
      - pkg: google-chrome-stable

  pkg.latest: []

# andrei:
#   user.present:
#     - shell: /bin/zsh
#     - require:
#       - pkg: zsh

