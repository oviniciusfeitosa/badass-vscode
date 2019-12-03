#!/bin/bash
input="./config/extensions"
while IFS= read -r line
do
  echo "[ $line - Installing ]"
  code --install-extension $line
  echo "[ $line - Installed ]"
done < "$input"
