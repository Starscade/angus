PS2="\[\e[1;7m\] \$ \[\e[0m\] "

export PATH="./:~:~/.x:$PATH"

klar(){
	clear
	for (( l=1; l<=$LINES; l++ )); do
		echo
	done
}
ll(){
	if [ -f "$1" ]; then
		_1="."
	else
		_1="$1"
	fi
	ls -AFGHhl --color=never --group-directories-first $_1 | tail -n+2 | less
}
wd(){
	cd "$1"
	ll
}

alias cc="sudo cp -aiv"
alias die="sudo kill -9"
alias e="vi"
alias instol="sudo apt install"
alias lnk="ln -s"
alias mk="sudo mkdir -pv"
alias mm="sudo mv -iv"
alias ops="top"
alias purg="sudo apt autoremove --purge"
alias rr="rm -Irv"
alias qq="clear ; exit"
alias src="~/.bash_aliases"
alias up="sudo apt update ; sudo apt full-upgrade -y ; sudo apt autoremove -y ; sudo apt autoclean -y"
alias xx="chmod +x"
