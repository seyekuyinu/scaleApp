#!/bin/bash
while getopts  "j:p:" flag
do
  if [ $flag == "j" ]; then
    JSTD=$OPTARG
  elif [ $flag == "p" ]; then
    PORT=$OPTARG
  fi
done

if [ -z "$PORT" ]; then
	PORT=9876
fi

if [ -z "$JSTD" ]; then
	#JSTD=`ls ../jstestdriver/[jJ]s[tT]est[dD]river*.jar`
	JSTD=`ls lib/[jJ]s[tT]est[dD]river*.jar`
fi

#java -jar $JSTD --port $PORT --runnerMode DEBUG
java -jar $JSTD --port $PORT
