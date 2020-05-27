#!/usr/bin/env bash
MAX=9
for ((i = 1; i <= $MAX; ++i)) do
  echo "[$i] Run Exercise $i;"
done
echo "Please enter a number:"
read NUM
if ! [[ $NUM =~ ^[0-9]+$ ]] || [[ $NUM < 1 ]] || [[ $MAX < $NUM ]]; then
  echo "input should be 1, 2, ..., $MAX"
  exit
fi

run() {
  echo "Exercise ${NUM}: Running..."
  cd "exercise${NUM}"
  ls -lt
  # for ((i = 1; i <= $#; ++i)) do
  for FILENAME in "$@"; do 
    echo "Exercise $NUM: $FILENAME.java"

    # javac $FILENAME.java
    # java $FILENAME ../pride-and-prejudice.txt

    java $FILENAME.java ../pride-and-prejudice.txt
  done
  # rm *.class
}

if [[ $NUM == 1 ]]; then
  run TermFreq
elif [[ $NUM == 2 ]]; then
  run Four Five
elif [[ $NUM == 3 ]]; then
  run Eleven Twelve Thirteen
elif [[ $NUM == 4 ]]; then
  run Eight Nine
elif [[ $NUM == 5 ]]; then
  run Fourteen TwentyEight TwentyNine
elif [[ $NUM == 6 ]]; then
  run Twenty TwentyOne TwentyTwo
elif [[ $NUM == 7 ]]; then
  run Seventeen

  echo "Exercise $NUM: Nineteen"
  cd nineteen/bin/
  java -jar framework.jar ./pride-and-prejudice.txt
elif [[ $NUM == 8 ]]; then
  echo "TwentySix will take around 11 seconds to run. Please be patient..."
  run TwentySix TwentySeven
elif [[ $NUM == 9 ]]; then
  run ThirtyThree
else
  echo "Exercise ${NUM}: Working in Progress..."
fi
