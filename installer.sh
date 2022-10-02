# #!/bin/bash

SCRIPT="
# <---a start--->
alias a='source a.sh'
if [[ \`ls -a ~ | grep .a-dirs.txt\` = \"\" ]]; then
    echo ~ > .a-dirs.txt
fi
# <---a finish--->
"
BASHRC=`cat ~/.bashrc`

if [[ "$BASHRC" =~  "<---a start--->" ]]; then
    echo "すでにインストールされています。"
else
    echo "$BASHRC$SCRIPT" > ~/.bashrc
    pwd > ~/.a-dirs.txt
fi
