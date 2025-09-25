; ===== Open CMD / PowerShell (normal + admin) =====
; AutoHotkey v2 — complete script

; ---------- CMD ----------
; Win + G → CMD at user folder
#g::
{
    Run('cmd.exe /k "color 2"', EnvGet("USERPROFILE"))
}

; Win + Shift + G → CMD as Admin at user folder
#+g::
{
    Run('*RunAs cmd.exe /k "color 2"', EnvGet("USERPROFILE"))
}

; ---------- PowerShell ----------
; Win + H → PowerShell (non-admin) at user folder
#h::
{
    Run("powershell.exe -NoExit -WindowStyle Normal", EnvGet("USERPROFILE"))
}

; Win + Shift + H → PowerShell as Admin at Windows\System32
#+h::
{
    Run("*RunAs powershell.exe -NoExit -WindowStyle Normal", A_WinDir "\System32")
}
