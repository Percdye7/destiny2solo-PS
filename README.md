# Destiny 2 Solo - Windows PowerShell Script
###### A Windows PowerShell Script to Block Destiny 2 Matchmaking, which creates Solo Mode Lobbys to farm Bounties etc.

Make sure to activate this script **IN ORBIT** and then go where you want

## Hey i ran the script but its saying "the execution of scripts is disabled on this system"

In this case:
1. -> Press your Windows Key
2. -> Type PowerShell
3. -> Right click on it
4. -> Run as Administrator
5. -> Paste this: set-executionpolicy remotesigned
6. -> Hit Enter

Note: You should change this Executionpolicy back to its default if you plan on never using this script again.
You can change it back to default By doing everything above but changing Step 5 to: set-executionpolicy Restricted

Here are the Official Microsoft Explanations about the Executionpolicys:
- **Restricted** -> Doesn't load configuration files or run scripts. The default execution policy for Windows client computers.
- **RemoteSigned** -> Requires that all scripts and configuration files downloaded from the Internet are signed by a trusted publisher. The default execution policy for Windows server computers.

You can look up these Explanations by yourself -> [On the Official Microsoft Documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.2#:~:text=RemoteSigned.%20Requires%20that,Windows%20client%20computers.).
