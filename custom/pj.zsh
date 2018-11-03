# find all git projects in root and write pj config file.
function pj.scan() {
  if [ -z "$1" ]; then
    echo "Usage: pj.scan [rootDirectory]";
    return 1
  fi
  root=$1
  config=$ZSH_CUSTOM/pj-projects.zsh
  echo "... scanning $root"
  echo -n "PROJECT_PATHS=( " > $config

  # find all .git folders, move 2 levels up and make distinct
  for f in `find $root -name .git -exec dirname {} \; | xargs -n1 dirname | sort | uniq`
  do
    # then write to file
    echo -n "\"$f\" " >> $config
  done
  echo " )" >> $config

  cat $config
  echo "... done:"
}
