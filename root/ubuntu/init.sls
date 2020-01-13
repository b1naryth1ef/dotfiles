include:
  - ssh
  - zsh
  - vim
  - ubuntu.sudoers
  {%- if salt['pillar.get']('wm', none) %}
  - discord
  - enpass
  - ubuntu.chrome
  {% endif %}

packages:
  pkg.installed:
    - pkgs:
      - vim
      - cmake
      - curl
      - wget
      - gnupg
      - gpg-agent
      - python-pip

# andrei:
#   user.present:
#     - shell: /bin/zsh
#     - require:
#       - pkg: zsh

