#!/usr/bin/env bash

git=`which git`
while read -ra Z; do
	if [[ "${Z[@]}" == \*\ * ]]; then
		gbranch="${Z[1]}"
		break
	fi
done <<< "$($git branch 2> /dev/null)"

((cno=0))
while read -r Z; do
	[[ "$Z" == commit* ]] && ((cno+=1))
done <<< "$($git log 2> /dev/null)"

$git rev-list --left-right --count origin/master..."$gbranch" >/dev/null 2>&1
if [ "$?" == 0 ];then
	rev=`$git rev-list --left-right --count origin/master..."$gbranch"`;
	beh=$(cut -f1 <<< $rev )
	ahe=$(cut -f2 <<< $rev )

    echo -e "$($git diff --cached --name-only | wc -l)"\
        "$($git diff --stat origin/master.. | wc -l)"\
        "$($git diff --name-status | wc -l)"\
        "$($git ls-files --others --exclude-standard | wc -l)"\
        "$gbranch"\
        "${cno}"\
        "$beh"\
        "$ahe"
else
	beh="-1"
	ahe="-1"
    echo -e "$($git diff --cached --name-only | wc -l)"\
        "0"\
        "$($git diff --name-status | wc -l)"\
        "$($git ls-files --others --exclude-standard | wc -l)"\
        "$gbranch"\
        "${cno}"\
        "$beh"\
        "$ahe"
fi

