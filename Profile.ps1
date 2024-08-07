# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    Î» <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    Î» <PostPrompt> |
#>

[ScriptBlock]$PrePrompt = {

}

# Replace the cmder prompt entirely with this.
# [ScriptBlock]$CmderPrompt = {}

[ScriptBlock]$PostPrompt = {

}

## <Continue to add your own>

$env:path = "$env:Path;$env:USERPROFILE\bin\putty"
$env:path = "$env:Path;$env:USERPROFILE\AppData\Local\Programs\Python\Python37"
$env:path = "$env:Path;$env:USERPROFILE\AppData\Local\Programs\Python\Python37\scripts"
$env:path = "$env:Path;$env:USERPROFILE\bin\sysinternals"
$env:path = "$env:Path;$env:USERPROFILE\bin\nvm"
$env:path = "$env:Path;$env:USERPROFILE\bin\gradle\bin"
$env:path = "$env:Path;$env:USERPROFILE\bin\git"
$env:GIT_SSH = "$env:USERPROFILE\bin\putty\plink.exe"
$env:JAVA_HOME = "C:\Program Files\Java\jdk-11.0.1"


<#
.Description
gs is short for "git status".
#>
function gs { git status }

<#
.Description
gpu is short for "git push origin --set-upstream" master
#>
function gpu { git push origin --set-upstream master }

<#
.Description
gr is short for "git rebase"
#>
function gr { git rebase @Args }

<#
.Description
gco is short for "git checkout"
#>
function gco { git checkout @Args }

<#
.Description
mklink just calls the cmd mklink facility
#>
function mklink { cmd /c mklink @Args }

<#
.Description
alias for "git branch"
#>
function gb { git branch @Args }

<#
.Description
alias for "git checkout -b"
#>
function gnb { git checkout -b @Args }

<#
.Description
alias for "git commit"
#>
function gci { git commit @Args }
if (Test-Path alias:gci)
{
  Remove-Item -Force alias:gci
}

<#
.Description
alias for "git pull --ff-only"
#>
function gff { git pull --ff-only }

function run-asadmin
{
	If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
		$arguments = "& '" + $myinvocation.mycommand.definition + "'" 
		Start-Process powershell -Verb runAs -ArgumentList $arguments 
		Break 
	} else {
		iex "$arguments"
	}
}

<#
.Description
ggr is short for "git go root"
#>
function ggr {
  $dir= & git rev-parse --show-toplevel
  if ($LastExitCode -ne 0) {
    Write-Error "Not in a git repository"
    return
  }
  cd $dir
}

<#
.Description
gw is short for "./gradlew"
#>
function gw { ./gradlew.bat @Args }

<#
.Description
Remove merged branches
#>
function GitCleanMergedBranches {
	git branch --merged | ?{$_ -notmatch '^\*|master|main'} | %{ git branch -d $_.Trim() }
}

<#
.Description
Fast-forward merge from origin and clean merged branches
#>
function GitFastForwardAndPrune {
	git pull --ff-only --prune
	GitCleanMergedBranches
}

New-Alias gffp GitFastForwardAndPrune


<#
.Description
Use neovim when invoking vim
#>
function vim { nvim @Args }

<#
.Description
PowerShell version of the UNIX which command
#>
New-Alias which Get-Command


cd $Env:USERPROFILE


