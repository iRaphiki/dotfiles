# Funtions
function lsHidden {
    ls -Hidden
}
function st2h {
    shutdown /s /t 7200 
}
function gitStatus {
  git status
}
function gitAddCommit {
  git add . && git commit
}
function gitCheckout {
  git checkout
}
function gitLogShort {
  git log --oneline --graph
}
function gitLogPretty {
  git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
}
# Alias 
Set-Alias winfetch pwshfetch-test-1  
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias g goto
Set-Alias la lsHidden 
Set-Alias grep findstr
Set-Alias cat bat
Set-Alias fh filehhash
Set-Alias gs gitStatus
Set-Alias gac gitAddCommit 
Set-Alias gco gitCheckout
Set-Alias gls gitLogShort 
Set-Alias glp gitLogPretty
Set-Alias v 'C:\Users\rafae\.local\bin\lvim.ps1'

# Icons
Import-Module -Name Terminal-Icons

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue | 
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function goto {
  param (
    $location
  )

  Switch ($location) {
    "pj" {
      Set-Location -Path "E:\Code\projects"
    }
	  "mpj" {
		  Set-Location -Path "E:\Code\projects\iraphiki"
	  }
    "ws" {
      Set-Location -Path "E:\Code\projects\iraphiki\ws"
    }
    "cs" {
      Set-Location -Path "E:\MyDrive\Brain"
    } 
    default {
      Write-Output "Invalid location"
    }
  }
}

# StarShip config and var
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = " 者 iraphiki"
Invoke-Expression (&starship init powershell)

