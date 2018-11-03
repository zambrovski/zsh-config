alias gcb='gradle clean build'

# dynamically choose gradlew or global.
function gradle() {
  # Stop the search on this folder.
  # "/" is the highest possible, but you can go for $HOME for example
  STOP="/"

  # Location of Maven.
  # $GRADLE_HOME/bin/mvn is an option...
  GRADLE_CMD="/usr/local/bin/gradle"

  # ----------------------------------------------------------------------------
  # Don't edit below this line
  #
  DIR="$( pwd )"
  FILE=null

  while [ $DIR != $STOP ]
  do
    if [ -e "gradlew" ]
      then
        FILE="$DIR/gradlew"
        break
      else
        DIR="$( dirname "$DIR" )"
    fi
  done

  if [ $FILE != "null" ]
    then
      CMD=$FILE
    else
      CMD=$GRADLE_CMD
  fi

  # execute gradle command with args
  echo "Calling $CMD $@"
  $CMD $@
}
