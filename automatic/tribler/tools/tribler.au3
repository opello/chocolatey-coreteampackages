#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
	Opt('WinWaitDelay',100)
	Opt('WinDetectHiddenText',1)
	Opt('MouseCoordMode',0)
EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---



Run($CmdLine[1])

# Accept license
_WinWaitActivate("Tribler 6.4.1 Setup ","Please review the")
Send("{TAB}{SPACE}{ENTER}")

# Disable desktop icon
_WinWaitActivate("Tribler 6.4.1 Setup ","Choose which feature")
Send("{DOWN}{SPACE}{ENTER}")

# Install to default path
_WinWaitActivate("Tribler 6.4.1 Setup ","Choose Install Locat")
Send("{ENTER}")

# Do not start Tribler after install
_WinWaitActivate("Tribler 6.4.1 Setup ","Completing the")
Send("{SPACE}{ENTER}")

Exit
