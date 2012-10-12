put(){
  echo "export $1_$2=$3" >> $_WHIM_ROOT/$1.db
}

del(){
  echo "unset $1_$2" >> $_WHIM_ROOT/$1.db
}

get(){
  source $_WHIM_ROOT/$1.db
  eval r=\$$(echo "$1_$2")
  echo $r
}

list(){
  if [ ! -e $_WHIM_ROOT/$1.db ]; then
    exit
  fi
  source $_WHIM_ROOT/$1.db
  for i in $(env | grep "$1_" | cut -d= -f1 ); do
    eval r=\$$i; echo $(echo $i | sed -e "s/$1_//") $r;
  done
}
