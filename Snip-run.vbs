'Visual basic code to run the powershell script silently in BG

Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File ""Snip.ps1""", 0, False
