#!/usr/bin/env bash

words=(I am ${@:2:2} and $4)
echo ${words[*]}
