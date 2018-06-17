function tux {
  if [ -z "$1" ]
  then
      ps -o ruser:40,command ax | grep '[n]ew-session -s' | ruby -ne '$_ =~ /^(\w+).*-s (\w+)/; puts "#{$1} started #{$2}"'
  else
      tmux -S /tmp/$1 new-session -s $1 -d
      chmod 700 /tmp/$1
      tmux -S /tmp/$1 attach -t $1
  fi
}

function pub {
  if [ -z "$TMUX" ]; then
    echo "must be run from inside tmux with \$TMUX set"
  else
    tmux_socket=$(echo $TMUX | cut -d',' -f1)
    chmod 777 $tmux_socket
    tmux refresh-client -S
  fi
}
