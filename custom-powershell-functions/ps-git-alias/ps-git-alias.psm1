# personal alias for git
function g() {
	git
}

function gs() {
	git status
}

function gcf() {
	git config
}

function gco() {
	git checkout
}

function gs() {
	git status
}

function gb() {
	git branch
}

function gcom() {
	git commit -m 
}

function gaa() { 
	git add . 
}

function glg() {
	git log
}

function grl() {
	git reflog
}

function gd() { 
	git diff
}

function grs() {
	git reset
}

function gr() {
	git remote
}

function gpsh() { 
	git push
}

function gpl() {
	git pull
}

function gme() { 
	git merge
}

function gcp() { 
	git cherry-pick
}

function grb() { 
	git rebase
}

Export-ModuleMember -Function g
Export-ModuleMember -Function gs
Export-ModuleMember -Function gcf
Export-ModuleMember -Function gco
Export-ModuleMember -Function gs
Export-ModuleMember -Function gb
Export-ModuleMember -Function gcom
Export-ModuleMember -Function gaa
Export-ModuleMember -Function glg
Export-ModuleMember -Function grl
Export-ModuleMember -Function gd
Export-ModuleMember -Function grs
Export-ModuleMember -Function gr
Export-ModuleMember -Function gpsh
Export-ModuleMember -Function gpl
Export-ModuleMember -Function gme
Export-ModuleMember -Function gcp
Export-ModuleMember -Function grb
