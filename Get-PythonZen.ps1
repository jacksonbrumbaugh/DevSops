function Get-PythonZen {
  $ScriptHome = $PSScriptRoot
  $ZenFilePath = Join-Path $ScriptHome "ZenOfPython.json"

  $FoundZen = Test-Path $ZenFilePath
  if ( -not $FoundZen ) {
    Write-Warning "Failed to locate the Zen of Python JSON file at the below path"
    Write-Warning $ZenFilePath
    throw
  }

  $ZenObject = Get-Content $ZenFilePath | ConvertFrom-Json

  Write-Output $ZenObject
} # End function
