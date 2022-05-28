#!/usr/bin/env bash

#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ikigai
# ░▓ code   ▓ https://github.com/yedhink/bashed-on-a-feeling
# ░▓ 	    ▓
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
# this is a custom prompt that i made when i started struggling with maintaining my repos and was not able to find a git-prompt of my liking
# FEATURES :
#	  MINAMILISTIC 
#	  INFORMATIVE  
#	  FAST         
#
#  "ahh..ahh..ah..bashed-on-a-feeling!"
#

# # # # # # # # # # # #
# set your icons here #
# # # # # # # # # # # #
: ${no_remote_added:=''} 
: ${commiticon:=''} # or you can try f737 with a nerd font, which's way cooler ;)
: ${added_but_not_committed:=''}
: ${committed_and_clean:=''}
: ${ahead:=''}
: ${behind:=''}
: ${committed_but_modified_before_push:=''}
: ${untracked_files:=''}
: ${gitprompt_normal:='git'}
: ${gitprompt_diverged:=''}

# # # # # # # # # # # #
#  the colors for use #
# # # # # # # # # # # #
boldGreen=$gpAMa
boldWhite=$gpBrn
dirfg=$gpDir
bgBlue=$gpBck
rst="$(tput sgr0)"                  # Reset text - \\e[0m

read a_but_not_c c_but_not_p c_but_m_before_p untracked gbranch commitstot behindby aheadby<<< $( echo | xargs -n 1 -P 8 ~/.cal.sh )

gbranch="$boldWhite$gbranch"

if [ "$a_but_not_c" == 0 ]; then
	a_but_not_c=""
else
	a_but_not_c="$boldWhite$a_but_not_c$boldGreen$(echo $added_but_not_committed)"
fi

if [ "$c_but_not_p" -gt 0 ]; then
	((c_but_not_p = c_but_not_p - 1 ))
fi

if [ "$aheadby" != -1 ]; then
	if [ "$aheadby" == 0 ] && [ "$behindby" == 0 ]; then
		gitprompt=$gitprompt_normal
		aheadby="$boldGreen$(echo $committed_and_clean)"
		behindby=""
	else
		gitprompt=$gitprompt_normal
		if [ "$aheadby" != 0 ] && [ "$behindby" != 0 ]; then
			aheadby="$boldWhite$aheadby$boldGreen$(echo $ahead)"
			behindby="$boldWhite$behindby$boldGreen$(echo $behind)"
			gitprompt=$gitprompt_diverged
		elif [ "$aheadby" == 0 ] && [ "$behindby" != 0 ]; then
			aheadby=""
			behindby="$boldWhite$behindby$boldGreen$(echo $behind)"
		else
			aheadby="$boldWhite$aheadby$boldGreen$(echo $ahead)"
			behindby=""
		fi
	fi
else
	gitprompt=$gitprompt_normal
	aheadby="$boldGreen$(echo $no_remote_added)"
	behindby=""
fi


if [ "$c_but_m_before_p" == 0 ]; then
	c_but_m_before_p=""
else
	c_but_m_before_p="$boldWhite$c_but_m_before_p$boldGreen$(echo $committed_but_modified_before_push)"
fi

if [ "$untracked" == 0 ]; then
	untracked=""
else
	untracked="$boldWhite$untracked$boldGreen$(echo $untracked_files)"
fi

# Create a string
printf -v PS1RHS "\e[0m \e[0;1;31m%s %s %s %s %s %s\e[0m" "$gbranch" "$a_but_not_c" "$aheadby" "$behindby" "$c_but_m_before_p" "$untracked"

# Strip ANSI commands before counting length
PS1RHS_stripped=$(sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" <<<"$PS1RHS")
local Save=$(tput sc) # Save cursor position
local Rest=$(tput rc) # Restore cursor to save point

# bashed-git-prompt \m/
PS1='\[$dirfg\]\w \[$rst\]\[$boldGreen\] $commitstot $commiticon\n \[$boldWhite\]\[$bgBlue\] $gitprompt\[$rst\] '
export PS1="\[${Save}\e[${COLUMNS}C\e[${#PS1RHS_stripped}D${PS1RHS}${Rest}\]${PS1}"
