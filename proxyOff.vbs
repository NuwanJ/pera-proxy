' Turn off Proxy server
' Written by Nuwan Jaliyagoda (E15)
' Update : 10/02/2018

Option Explicit

Dim Temp 

' Set Proxy Enable to 0
Temp = WriteReg("HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable","0","REG_DWORD")
WScript.Echo "Proxy turned off."

Function WriteReg(RegPath, Value, RegType)
      'Regtype should be "REG_SZ” for string, "REG_DWORD” for a integer,…
      '”REG_BINARY” for a binary or boolean, and "REG_EXPAND_SZ” for an expandable string
      Dim objRegistry, Key
      Set objRegistry = CreateObject("Wscript.shell")
      Key = objRegistry.RegWrite(RegPath, Value, RegType)
End Function