#!/bin/bash
# (poetry run pytest --cov=. --cov-fail-under=100 && git commit -am 'wip') || git reset --hard HEAD
clear
sleep 1
test() {
  poetry run pytest > /dev/null 2>&1
  return $?
}

coverage() {
  poetry run coverage report main.py > /dev/null 2>&1
  return $?
}

pass() {
  GREEN="\e[32m"
  echo -e "$GREEN  /#######   /######   /######   /###### "
  echo -e "$GREEN | ##__  ## /##__  ## /##__  ## /##__  ##"
  echo -e "$GREEN | ##  \ ##| ##  \ ##| ##  \__/| ##  \__/"
  echo -e "$GREEN | #######/| ########|  ###### |  ###### "
  echo -e "$GREEN | ##____/ | ##__  ## \____  ## \____  ##"
  echo -e "$GREEN | ##      | ##  | ## /##  \ ## /##  \ ##"
  echo -e "$GREEN | ##      | ##  | ##|  ######/|  ######/"
  echo -e "$GREEN |__/      |__/  |__/ \______/  \______/ "
}

fail() {
  git reset --hard HEAD > /dev/null 2>&1
  RED="\e[31m"
  echo -e "$RED ________   ______   ______  __       "
  echo -e "$RED|        \ /      \ |      \|  \      "
  echo -e "$RED| ########|  ######\ \######| ##      "
  echo -e "$RED| ##__    | ##__| ##  | ##  | ##      "
  echo -e "$RED| ##  \   | ##    ##  | ##  | ##      "
  echo -e "$RED| #####   | ########  | ##  | ##      "
  echo -e "$RED| ##      | ##  | ## _| ##_ | ##_____ "
  echo -e "$RED| ##      | ##  | ##|   ## \| ##     \\"
  echo -e "$RED \\##       \\##   \\## \\###### \\########"
}

test
if [ $? -ne 0 ]
then
  fail
  echo
  echo
  echo "The tests failed!"
  exit 1
fi

coverage
if [ $? -ne 0 ]
then
  fail
  echo "Coverage failed!"
  exit 2
fi

git commit -am "wip" > /dev/null 2>&1
pass
exit 0