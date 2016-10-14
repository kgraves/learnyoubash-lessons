#!/usr/bin/env bash

evens() {
  # base case
  if [[ $1 -eq $2 ]]; then
    return
  fi

  indent=$3
  if [[ $(( $1 % 2 )) -eq 0 ]]; then

    # print indentation
    for (( i=0; i < $indent; i++ )); do
      # echo -n " "
      echo -n ' '
    done

    echo $1
    indent=$(( indent + 1 ))
  fi

  # [[ $(( $1 % 2 )) -eq 0 ]] && echo $1
  evens $(( $1 + 1 )) $2 $indent
}

main() {
  echo $FUNCNAME
  evens $1 $2 1
}

main $1 $2
