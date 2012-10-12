#!/usr/bin/env bash

source $_WHIM_ROOT/lib/kiev.sh

export EC2_HOME=$_WHIM_ROOT/ec2_home/ec2-api-tools-1.6.3.1

check_for_config() {
  if [ ! -e ~/.whimrc ]; then
    echo "~/.whimrc doesnt exist, run whim copy-config copy an example"
    exit
  else
    source ~/.whimrc
    if [ "$AWS_ACCESS_KEY" = "12345" ]; then
      echo "configure your ~/.whimrc first"
      exit
    fi
  fi
  source ~/.whimrc
}



check_for_config
