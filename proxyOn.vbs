' Turn on Proxy server
' Written by Nuwan Jaliyagoda (E15)
' Update : 10/02/2018

Option Explicit

Dim Temp 

Temp = WriteReg("HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable","1","REG_DWORD")
Temp = WriteReg("HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer","http://cachex.pdn.ac.lk:3128","REG_SZ")
 
WScript.Echo "Proxy set to cachex.pdn.ac.lk:3128"

Function WriteReg(RegPath, Value, RegType)
      'Regtype should be "REG_SZ” for string, "REG_DWORD” for a integer,…
      '”REG_BINARY” for a binary or boolean, and "REG_EXPAND_SZ” for an expandable string
      Dim objRegistry, Key
      Set objRegistry = CreateObject("Wscript.shell")

      Key = objRegistry.RegWrite(RegPath, Value, RegType)
      WriteReg = Key
End Function


