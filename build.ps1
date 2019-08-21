get-path
$whereCommands = @("cmd /c where git",  "cmd /c where bla", "cmd /c where svn")
foreach ($Command in $whereCommands) {Invoke-Expression $Command ; if($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode) }}


