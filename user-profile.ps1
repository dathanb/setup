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

$env:path = "$env:Path;$env:USERPROFILE\bin\kitty"
$env:path = "$env:Path;$env:USERPROFILE\bin\sysinternals"

<#
.Description
gs is short for "git status".
#>
function gs { git status }

<#
.Description
gpu is short for "git push origin --set-upstream"
#>
function gpu { git push origin --set-upstream }

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
gw is short for "./gradlew"
#>
function gw { ./gradlew.bat @Args }

<#
.Description
make neovim accessible as vim
#>
function vim { nvim @Args }

cd $Env:USERPROFILE
