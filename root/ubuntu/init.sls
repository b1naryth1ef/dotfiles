include:
  - ssh
  - zsh
  - vim
  - ubuntu.sudoers
  - ubuntu.enpass
  - ubuntu.chrome

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

# andrei:
#   user.present:
#     - shell: /bin/zsh
#     - require:
#       - pkg: zsh

