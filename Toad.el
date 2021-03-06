EurekaLog 7.2.6.0  

Application:
------------------------------------------------------
  1.1 Start Date      : Fri, 8 Jun 2018 11:32:26 +0600
  1.2 Name/Description: Toad.exe - (Toad™ for Oracle®)
  1.3 Version Number  : 12.8.0.49
  1.4 Parameters      : 
  1.6 Up Time         : 19 second(s)

Exception:
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  2.1 Date       : Fri, 8 Jun 2018 11:32:45 +0600
  2.2 Address    : 0000000004256C65
  2.3 Module Name: Toad.exe - (Toad™ for Oracle®)
  2.5 Type       : EFOpenError
  2.6 Message    : Cannot open file "C:\Users\TM Hridoy\AppData\Roaming\Dell\Toad for Oracle\SettingsLocations.ini". The process cannot access the file because it is being used by another process.
  2.7 ID         : E3A60000
  2.8 Count      : 1
  2.11 Sent      : 0

User:
----------------------
  3.2 Name : TM Hridoy
  3.3 Email: 

Active Controls:
--------------------------------------------
  4.1 Form Class   : Chrome_WidgetWin_1
  4.2 Form Text    : New Tab - Google Chrome
  4.3 Control Class: TfrmSplash
  4.4 Control Text : 

Computer:
------------------------------------------------------------------------
  5.2 Total Memory    : 8481492992 (7.90 Gb)
  5.3 Free Memory     : 3885576192 (3.62 Gb)
  5.4 Total Disk      : 110614278144 (103.02 Gb)
  5.5 Free Disk       : 21958164480 (20.45 Gb)
  5.6 System Up Time  : 1 day(s), 17 hour(s), 40 minute(s), 24 second(s)
  5.7 Processor       : Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
  5.12 Virtual Machine: 

Operating System:
--------------------------------------------
  6.1 Type   : Microsoft Windows 10 (64 bit)
  6.2 Build #: 10586 (10.0.10586.1106)

Steps to reproduce:
------------
  8.1 Text: 


Call Stack Information:
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Methods |Details|Stack           |Address         |Module        |Offset          |Unit             |Class           |Procedure/Method                           |Line     |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|*Exception Thread: ID=38508; Parent=0; Priority=-2                                                                                                                         |
|Class=; Name=MAIN                                                                                                                                                          |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|04     |0000000000000000|0000000004256C65|Toad.exe      |00000000000C6C65|System.Classes   |TFileStream     |Create                                     |6807[14] |
|00000040|04     |00000000007FFB58|00000000042FD50A|Toad.exe      |000000000016D50A|System.IniFiles  |TMemIniFile     |LoadValues                                 |724[3]   |
|00000040|04     |00000000007FFBD8|00000000042FD01B|Toad.exe      |000000000016D01B|System.IniFiles  |TMemIniFile     |Create                                     |632[7]   |
|00000040|03     |00000000007FFC28|00000000091EECF4|Toad.exe      |000000000505ECF4|tdIniFiles       |TtdMemIniFile   |Create                                     |         |
|00000040|03     |00000000007FFC78|0000000005D73C59|Toad.exe      |0000000001BE3C59|UserProfile      |TtdUserProfile  |SaveEditionToINIEntry                      |         |
|00000040|03     |00000000007FFD08|000000000900254E|Toad.exe      |0000000004E7254E|ToadRegistration |TToadReg        |CheckToadLicense                           |         |
|00000040|03     |00000000007FFD68|000000000900A46C|Toad.exe      |0000000004E7A46C|ToadApplication  |TToadApplication|DoStartupTasks                             |         |
|00000040|03     |00000000007FFED8|0000000009340F77|Toad.exe      |00000000051B0F77|Toad             |                |Initialization                             |         |
|00000040|03     |00000000007FFF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |00000000007FFF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=4396; Parent=38508; Priority=0                                                                                                                          |
|Class=TSendThread; Name=[Unnamed thread] Kind: TThread. Thread function: CSLog.TSendThread.Execute + $0. Thread caller: CSLog.TSendThread.Create + $3C (CSLog.TSendThread.Execute)|
|DeadLock=0; Wait Chain=thread: [ 112C / 4396 ] is blocked                                                                                                                  |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE5154|ntdll.dll     |00000000000A5154|ntdll            |                |ZwWaitForSingleObject                      |         |
|00000040|03     |000000001141FCC8|00007FF9ECB9AAD9|KERNELBASE.dll|000000000001AAD9|KERNELBASE       |                | (possible PathIsRootW+8857)               |         |
|00000040|03     |000000001141FD68|0000000006741986|Toad.exe      |00000000025B1986|CSLog            |TSendThread     |Execute                                    |         |
|00000040|04     |000000001141FDC8|0000000004267A18|Toad.exe      |00000000000D7A18|System.Classes   |                |ThreadProc                                 |11769[11]|
|00000040|04     |000000001141FE28|000000000438B354|Toad.exe      |00000000001FB354|EThreadsManager  |                |NakedBeginThreadWrapper                    |1331[5]  |
|00000040|04     |000000001141FE78|000000000462102E|Toad.exe      |000000000049102E|EExceptionManager|                |DefaultThreadHandleException               |3682[6]  |
|00000040|04     |000000001141FED8|000000000438CE44|Toad.exe      |00000000001FCE44|EThreadsManager  |                |ThreadWrapperCT                            |1877[17] |
|00000040|03     |000000001141FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |000000001141FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=38408; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |0000000000E8FB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |0000000000E8FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |0000000000E8FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=34896; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |000000000128FB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |000000000128FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |000000000128FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=37088; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |000000000168FB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |000000000168FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |000000000168FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=34992; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |000000000F20FB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |000000000F20FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |000000000F20FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=37744; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |000000000F60FB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |000000000F60FF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |000000000F60FF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=38796; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |0000000013FDFB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |0000000013FDFF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |0000000013FDFF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=38560; Parent=0; Priority=0                                                                                                                             |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=                                                                                                                                                    |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE87E4|ntdll.dll     |00000000000A87E4|ntdll            |                | (possible RtlpNtMakeTemporaryKey+7796)    |         |
|00000040|03     |00000000143DFB48|00007FF9EFC6B5E3|ntdll.dll     |000000000002B5E3|ntdll            |                |RtlCreateMemoryBlockLookaside              |         |
|00000040|03     |00000000143DFF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |00000000143DFF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=2532; Parent=0; Priority=0                                                                                                                              |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=thread: [ 09E4 / 2532 ] is blocked                                                                                                                  |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9EFCE5C24|ntdll.dll     |00000000000A5C24|ntdll            |                |ZwWaitForMultipleObjects                   |         |
|00000040|03     |00000000147DF8D8|00007FF9ECBC3B49|KERNELBASE.dll|0000000000043B49|KERNELBASE       |                |WaitForMultipleObjectsEx                   |         |
|00000040|03     |00000000147DFBD8|00007FF9ED800C19|combase.dll   |0000000000090C19|combase          |                |HICON_UserMarshal                          |         |
|00000040|03     |00000000147DFE68|00007FF9ED838483|combase.dll   |00000000000C8483|combase          |                | (possible NdrOleInitializeExtension+4755) |         |
|00000040|03     |00000000147DFEB8|00007FF9ED800AE2|combase.dll   |0000000000090AE2|combase          |                |HICON_UserMarshal                          |         |
|00000040|03     |00000000147DFF28|00007FF9ED838DF7|combase.dll   |00000000000C8DF7|combase          |                | (possible NdrOleInitializeExtension+7175) |         |
|00000040|03     |00000000147DFF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |00000000147DFF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                           |
|Running Thread: ID=7320; Parent=0; Priority=2                                                                                                                              |
|Class=; Name=                                                                                                                                                              |
|DeadLock=0; Wait Chain=thread: [ 1C98 / 7320 ] is blocked                                                                                                                  |
|Comment=                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|7FFFFFFE|03     |0000000000000000|00007FF9ED0721B4|user32.dll    |00000000000321B4|user32           |                | (possible InvalidateRect+84)              |         |
|00000040|03     |0000000014BDFE88|00007FF9ED05CD6F|user32.dll    |000000000001CD6F|user32           |                |GetMessageA                                |         |
|00000040|03     |0000000014BDFEB8|00007FF9EA44320E|winmm.dll     |000000000000320E|winmm            |                | (possible timeBeginPeriod+430)            |         |
|00000040|03     |0000000014BDFF58|00007FF9EF9C8100|kernel32.dll  |0000000000018100|KERNEL32         |                | (possible GetSystemWindowsDirectoryW+1388)|         |
|00000040|03     |0000000014BDFF88|00007FF9EFC9C5B2|ntdll.dll     |000000000005C5B2|ntdll            |                |RtlUserThreadStart                         |         |
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modules Information:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|Handle          |Name                |Description                                        |Version            |Size    |Modified           |Path                                                                                                           |
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|0000000004190000|Toad.exe            |Toad™ for Oracle®                                  |12.8.0.49          |54497552|2015-10-06 18:54:02|C:\Program Files\Dell\Toad for Oracle 2015 R2 Suite\Toad for Oracle 12.8\                                      |
|000000000F750000|icmp.dll            |ICMP DLL                                           |6.2.10586.0        |3072    |2015-10-30 13:17:40|C:\Windows\System32\                                                                                           |
|0000000180000000|security.dll        |Security Support Provider Interface                |6.2.10586.0        |5120    |2015-10-30 13:17:53|C:\Windows\System32\                                                                                           |
|00007FF9B10F0000|hhctrl.ocx          |Microsoft® HTML Help Control                       |6.2.10586.0        |670720  |2015-10-30 13:17:54|C:\Windows\System32\                                                                                           |
|00007FF9B2CF0000|msxml3.dll          |MSXML 3.0                                          |8.110.10586.1007   |1900544 |2017-07-07 13:51:40|C:\Windows\System32\                                                                                           |
|00007FF9BDEC0000|efswrt.dll          |Storage Protection Windows Runtime DLL             |6.2.10586.839      |619520  |2017-03-04 11:16:55|C:\Windows\System32\                                                                                           |
|00007FF9C8D90000|edputil.dll         |EDP util                                           |6.2.10586.839      |305152  |2017-03-04 11:16:41|C:\Windows\System32\                                                                                           |
|00007FF9CD510000|browcli.dll         |Browser Service Client DLL                         |6.2.10586.212      |58368   |2016-03-29 13:57:44|C:\Windows\System32\                                                                                           |
|00007FF9D1D00000|wininet.dll         |Internet Extensions for Win32                      |11.0.10586.1176    |3403264 |2017-09-14 11:45:03|C:\Windows\System32\                                                                                           |
|00007FF9D7820000|msftedit.dll        |Rich Text Edit Control, v7.5                       |6.2.10586.1106     |3355136 |2017-09-05 11:04:14|C:\Windows\System32\                                                                                           |
|00007FF9D7BC0000|usp10.dll           |Uniscribe Unicode script processor                 |6.2.10586.0        |78848   |2015-10-30 13:17:58|C:\Windows\System32\                                                                                           |
|00007FF9D9C70000|qwave.dll           |Windows NT                                         |6.2.10586.839      |286720  |2017-03-04 10:41:46|C:\Windows\System32\                                                                                           |
|00007FF9DAEA0000|srvcli.dll          |Server Service Client DLL                          |6.2.10586.212      |110584  |2016-03-29 15:10:44|C:\Windows\System32\                                                                                           |
|00007FF9DB090000|urlmon.dll          |OLE32 Extensions for Win32                         |11.0.10586.1176    |1729024 |2017-09-14 11:49:18|C:\Windows\System32\                                                                                           |
|00007FF9DC220000|comctl32.dll        |User Experience Controls Library                   |6.10.10586.839     |2555232 |2017-03-04 13:08:21|C:\Windows\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.10586.839_none_a2ddba30a539a2ae\|
|00007FF9DC4B0000|wsock32.dll         |Windows Socket 32-Bit DLL                          |6.2.10586.0        |18432   |2015-10-30 13:17:42|C:\Windows\System32\                                                                                           |
|00007FF9DE320000|GdiPlus.dll         |Microsoft GDI+                                     |6.2.10586.1106     |1717760 |2017-09-05 11:43:30|C:\Windows\WinSxS\amd64_microsoft.windows.gdiplus_6595b64144ccf1df_1.1.10586.1106_none_9396e55ea8022558\       |
|00007FF9DE590000|oleacc.dll          |Active Accessibility Core Component                |7.2.10586.212      |411648  |2016-03-29 13:35:40|C:\Windows\System32\                                                                                           |
|00007FF9DE7B0000|davhlpr.dll         |DAV Helper DLL                                     |6.2.10586.0        |27136   |2015-10-30 13:17:48|C:\Windows\System32\                                                                                           |
|00007FF9DE7D0000|mpr.dll             |Multiple Provider Router DLL                       |6.2.10586.0        |101776  |2015-10-30 13:17:43|C:\Windows\System32\                                                                                           |
|00007FF9DEB90000|msimg32.dll         |GDIEXT Client DLL                                  |6.2.10586.0        |8704    |2015-10-30 13:17:58|C:\Windows\System32\                                                                                           |
|00007FF9E0530000|msxml6.dll          |MSXML 6.0                                          |6.30.10586.589     |2587696 |2016-09-07 11:34:05|C:\Windows\System32\                                                                                           |
|00007FF9E5640000|IPHLPAPI.DLL        |IP Helper API                                      |6.2.10586.0        |219040  |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9E5ED0000|logoncli.dll        |Net Logon Client DLL                               |6.2.10586.0        |240720  |2015-10-30 13:17:52|C:\Windows\System32\                                                                                           |
|00007FF9E7010000|iertutil.dll        |Run time utility for Internet Explorer             |11.0.10586.1176    |3700816 |2017-09-14 14:36:01|C:\Windows\System32\                                                                                           |
|00007FF9E7670000|oledlg.dll          |OLE User Interface Support                         |6.2.10586.0        |126976  |2015-10-30 13:17:51|C:\Windows\System32\                                                                                           |
|00007FF9E79A0000|DpOFeedb.dll        |DigitalPersona OTS Feedback                        |7.3.0.98           |863424  |2018-02-04 17:10:46|C:\Program Files\HP\HP ProtectTools Security Manager\Bin\                                                      |
|00007FF9E7BC0000|WinTypes.dll        |Windows Base Types DLL                             |6.2.10586.589      |1270064 |2016-09-07 11:25:09|C:\Windows\System32\                                                                                           |
|00007FF9E8040000|winspool.drv        |Windows Spooler Driver                             |6.2.10586.1106     |518656  |2017-09-05 11:56:24|C:\Windows\System32\                                                                                           |
|00007FF9E8160000|traffic.dll         |Microsoft Traffic Control 1.0 DLL                  |6.2.10586.0        |42496   |2015-10-30 13:17:37|C:\Windows\System32\                                                                                           |
|00007FF9E9400000|wmiclnt.dll         |WMI Client API                                     |6.2.10586.0        |45056   |2015-10-30 13:17:46|C:\Windows\System32\                                                                                           |
|00007FF9E9AC0000|WindowsCodecs.dll   |Microsoft Windows Codecs Library                   |6.2.10586.1106     |1777792 |2017-09-05 13:18:10|C:\Windows\System32\                                                                                           |
|00007FF9EA180000|wtsapi32.dll        |Windows Remote Desktop Session Host Server SDK APIs|6.2.10586.0        |64624   |2015-10-30 13:18:17|C:\Windows\System32\                                                                                           |
|00007FF9EA1A0000|dwmapi.dll          |Microsoft Desktop Window Manager API               |6.2.10586.0        |107520  |2015-10-30 13:17:58|C:\Windows\System32\                                                                                           |
|00007FF9EA1D0000|propsys.dll         |Microsoft Property System                          |7.0.10586.672      |1603224 |2016-10-25 14:37:45|C:\Windows\System32\                                                                                           |
|00007FF9EA410000|WINMMBASE.dll       |Base Multimedia Extension API DLL                  |6.2.10586.0        |166344  |2015-10-30 13:17:57|C:\Windows\System32\                                                                                           |
|00007FF9EA440000|winmm.dll           |MCI API DLL                                        |6.2.10586.0        |121992  |2015-10-30 13:17:57|C:\Windows\System32\                                                                                           |
|00007FF9EA9E0000|apphelp.dll         |Application Compatibility Client Library           |6.2.10586.589      |479744  |2016-09-07 10:36:46|C:\Windows\System32\                                                                                           |
|00007FF9EAB70000|uxtheme.dll         |Microsoft UxTheme Library                          |6.2.10586.0        |589312  |2015-10-30 13:18:15|C:\Windows\System32\                                                                                           |
|00007FF9EAFD0000|ntmarta.dll         |Windows NT MARTA provider                          |6.2.10586.0        |186496  |2015-10-30 13:17:52|C:\Windows\System32\                                                                                           |
|00007FF9EB010000|fwbase.dll          |Firewall Base DLL                                  |6.2.10586.162      |184320  |2016-02-24 11:43:51|C:\Windows\System32\                                                                                           |
|00007FF9EB520000|version.dll         |Version Checking and File Installation Libraries   |6.2.10586.0        |31528   |2015-10-30 13:18:17|C:\Windows\System32\                                                                                           |
|00007FF9EB630000|secur32.dll         |Security Support Provider Interface                |6.2.10586.0        |28160   |2015-10-30 13:17:52|C:\Windows\System32\                                                                                           |
|00007FF9EB770000|netutils.dll        |Net Win32 API Helpers DLL                          |6.2.10586.0        |42352   |2015-10-30 13:17:53|C:\Windows\System32\                                                                                           |
|00007FF9EB9C0000|userenv.dll         |Userenv                                            |6.2.10586.0        |113184  |2015-10-30 13:17:53|C:\Windows\System32\                                                                                           |
|00007FF9EBB30000|mswsock.dll         |Microsoft Windows Sockets 2.0 Service Provider     |6.2.10586.420      |357216  |2016-05-28 11:18:49|C:\Windows\System32\                                                                                           |
|00007FF9EBEE0000|sspicli.dll         |Security Support Provider Interface                |6.2.10586.1176     |175128  |2017-09-14 15:18:33|C:\Windows\System32\                                                                                           |
|00007FF9EC130000|winsta.dll          |Winstation Library                                 |6.2.10586.0        |332656  |2015-10-30 13:18:17|C:\Windows\System32\                                                                                           |
|00007FF9EC190000|bcrypt.dll          |Windows Cryptographic Primitives Library           |6.2.10586.713      |159640  |2016-11-22 16:36:34|C:\Windows\System32\                                                                                           |
|00007FF9EC260000|powrprof.dll        |Power Profile Helper DLL                           |6.2.10586.0        |294472  |2015-10-30 13:17:48|C:\Windows\System32\                                                                                           |
|00007FF9EC2B0000|kernel.appcore.dll  |AppModel API Host                                  |6.2.10586.0        |45016   |2015-10-30 13:17:47|C:\Windows\System32\                                                                                           |
|00007FF9EC2C0000|profapi.dll         |User Profile Basic API                             |6.2.10586.0        |68752   |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9EC2E0000|msasn1.dll          |ASN.1 Runtime APIs                                 |6.2.10586.0        |60440   |2015-10-30 13:17:52|C:\Windows\System32\                                                                                           |
|00007FF9EC2F0000|windows.storage.dll |Microsoft WinRT Storage API                        |6.2.10586.1176     |6605544 |2017-09-14 14:32:59|C:\Windows\System32\                                                                                           |
|00007FF9EC940000|bcryptPrimitives.dll|Windows Cryptographic Primitives Library           |6.2.10586.589      |431296  |2016-09-07 11:22:29|C:\Windows\System32\                                                                                           |
|00007FF9EC9B0000|crypt32.dll         |Crypto API32                                       |6.2.10586.916      |1848584 |2017-04-28 09:20:40|C:\Windows\System32\                                                                                           |
|00007FF9ECB80000|KERNELBASE.dll      |Windows NT BASE API Client DLL                     |6.2.10586.1176     |1998352 |2017-09-14 15:20:51|C:\Windows\System32\                                                                                           |
|00007FF9ECD70000|cfgmgr32.dll        |Configuration Manager DLL                          |6.2.10586.0        |264488  |2015-10-30 13:17:50|C:\Windows\System32\                                                                                           |
|00007FF9ECDC0000|netapi32.dll        |Net Win32 API DLL                                  |6.2.10586.212      |81144   |2016-03-29 15:07:11|C:\Windows\System32\                                                                                           |
|00007FF9ECDE0000|FirewallAPI.dll     |Windows Firewall API                               |6.2.10586.1176     |526336  |2017-09-14 12:38:52|C:\Windows\System32\                                                                                           |
|00007FF9ECF80000|SHCore.dll          |SHCORE                                             |6.2.10586.839      |725776  |2017-03-04 13:08:01|C:\Windows\System32\                                                                                           |
|00007FF9ED040000|user32.dll          |Multi-User Windows USER API Client DLL             |6.2.10586.1176     |1399224 |2017-09-14 13:44:50|C:\Windows\System32\                                                                                           |
|00007FF9ED1A0000|psapi.dll           |Process Status Helper                              |6.2.10586.0        |18656   |2015-10-30 13:17:50|C:\Windows\System32\                                                                                           |
|00007FF9ED210000|imm32.dll           |Multi-User Windows IMM32 API Client DLL            |6.2.10586.0        |230416  |2015-10-30 13:17:58|C:\Windows\System32\                                                                                           |
|00007FF9ED250000|advapi32.dll        |Advanced Windows 32 Base API                       |6.2.10586.1176     |671480  |2017-09-14 15:17:17|C:\Windows\System32\                                                                                           |
|00007FF9ED300000|rpcrt4.dll          |Remote Procedure Call Runtime                      |6.2.10586.1176     |1161672 |2017-09-14 15:09:04|C:\Windows\System32\                                                                                           |
|00007FF9ED420000|ws2_32.dll          |Windows Socket 2.0 32-Bit DLL                      |6.2.10586.420      |430312  |2016-05-28 11:20:21|C:\Windows\System32\                                                                                           |
|00007FF9ED490000|ole32.dll           |Microsoft OLE for Windows                          |6.2.10586.916      |1323272 |2017-04-28 09:32:38|C:\Windows\System32\                                                                                           |
|00007FF9ED5E0000|gdi32.dll           |GDI Client DLL                                     |6.2.10586.1176     |1597520 |2017-09-14 13:44:18|C:\Windows\System32\                                                                                           |
|00007FF9ED770000|combase.dll         |Microsoft COM for Windows                          |6.2.10586.1176     |2609424 |2017-09-14 14:36:46|C:\Windows\System32\                                                                                           |
|00007FF9ED9F0000|sechost.dll         |Host for SCM/SDDL/LSA Lookup APIs                  |6.2.10586.0        |371360  |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9EDA50000|oleaut32.dll        |OLEAUT32.DLL                                       |6.2.10586.916      |800080  |2017-04-28 10:30:09|C:\Windows\System32\                                                                                           |
|00007FF9EDB20000|clbcatq.dll         |COM+ Configuration Catalog                         |2001.12.10941.16384|662704  |2015-10-30 13:17:51|C:\Windows\System32\                                                                                           |
|00007FF9EDBD0000|shlwapi.dll         |Shell Light-weight Utility Library                 |6.2.10586.0        |332104  |2015-10-30 13:18:14|C:\Windows\System32\                                                                                           |
|00007FF9EDC30000|msvcrt.dll          |Windows NT CRT DLL                                 |7.0.10586.0        |633760  |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9EDCD0000|comdlg32.dll        |Common Dialogs DLL                                 |6.2.10586.839      |1062912 |2017-03-04 10:47:12|C:\Windows\System32\                                                                                           |
|00007FF9EE210000|shell32.dll         |Windows Shell Common Dll                           |6.2.10586.1176     |22560232|2017-09-14 14:33:49|C:\Windows\System32\                                                                                           |
|00007FF9EF770000|msctf.dll           |MSCTF Server DLL                                   |6.2.10586.1176     |1415200 |2017-09-14 13:46:03|C:\Windows\System32\                                                                                           |
|00007FF9EF9B0000|kernel32.dll        |Windows NT BASE API Client DLL                     |6.2.10586.589      |705576  |2016-09-07 11:39:18|C:\Windows\System32\                                                                                           |
|00007FF9EFC10000|imagehlp.dll        |Windows NT Image Helper                            |6.2.10586.0        |101776  |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9EFC30000|nsi.dll             |NSI User-mode interface DLL                        |6.2.10586.0        |24312   |2015-10-30 13:18:03|C:\Windows\System32\                                                                                           |
|00007FF9EFC40000|ntdll.dll           |NT Layer DLL                                       |6.2.10586.1106     |1819208 |2017-09-05 15:29:39|C:\Windows\System32\                                                                                           |
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Processes Information:
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|ID   |Name                                  |Description                                                              |Version           |Memory   |Priority    |Threads|Path                                                                                          |
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|0    |[System Process]                      |                                                                         |                  |0        |            |4      |                                                                                              |
|4    |System                                |                                                                         |                  |0        |Normal      |188    |                                                                                              |
|92   |svchost.exe                           |                                                                         |                  |0        |Normal      |37     |                                                                                              |
|216  |DPAgent.exe                           |DigitalPersona Local Agent                                               |9.3.11.49         |77352960 |Normal      |20     |C:\Program Files (x86)\HP\HP ProtectTools Security Manager\Bin\                               |
|364  |smss.exe                              |                                                                         |                  |0        |Above-Normal|2      |                                                                                              |
|408  |svchost.exe                           |                                                                         |                  |0        |Normal      |32     |                                                                                              |
|428  |igfxEM.exe                            |igfxEM Module                                                            |6.15.10.4771      |14114816 |Normal      |7      |C:\Windows\System32\                                                                          |
|532  |csrss.exe                             |                                                                         |                  |0        |High        |12     |                                                                                              |
|620  |wininit.exe                           |                                                                         |                  |0        |High        |1      |                                                                                              |
|756  |services.exe                          |                                                                         |                  |0        |Normal      |10     |                                                                                              |
|772  |lsass.exe                             |                                                                         |                  |0        |Normal      |8      |                                                                                              |
|848  |BtwRSupportService.exe                |                                                                         |                  |0        |Normal      |3      |                                                                                              |
|856  |svchost.exe                           |                                                                         |                  |0        |Normal      |28     |                                                                                              |
|896  |svchost.exe                           |                                                                         |                  |0        |Normal      |36     |                                                                                              |
|920  |svchost.exe                           |                                                                         |                  |0        |Normal      |16     |                                                                                              |
|1032 |IntelCpHDCPSvc.exe                    |                                                                         |                  |0        |Normal      |5      |                                                                                              |
|1040 |svchost.exe                           |                                                                         |                  |0        |Normal      |91     |                                                                                              |
|1076 |svchost.exe                           |                                                                         |                  |0        |Normal      |13     |                                                                                              |
|1116 |DpHostW.exe                           |                                                                         |                  |0        |Normal      |24     |                                                                                              |
|1188 |svchost.exe                           |                                                                         |                  |0        |Normal      |32     |                                                                                              |
|1312 |svchost.exe                           |                                                                         |                  |0        |Normal      |27     |                                                                                              |
|1328 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |7790592  |Normal      |7      |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|1392 |WUDFHost.exe                          |                                                                         |                  |0        |Normal      |10     |                                                                                              |
|1496 |igfxCUIService.exe                    |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|1580 |IntelCpHeciSvc.exe                    |                                                                         |                  |0        |Normal      |9      |                                                                                              |
|1768 |hpservice.exe                         |                                                                         |                  |0        |Normal      |2      |                                                                                              |
|1780 |Calculator.exe                        |                                                                         |10.1705.1705.10001|34971648 |Normal      |26     |C:\Program Files\WindowsApps\Microsoft.WindowsCalculator_10.1705.1301.1000_x64__8wekyb3d8bbwe\|
|1816 |svchost.exe                           |                                                                         |                  |0        |Normal      |15     |                                                                                              |
|1868 |wlanext.exe                           |                                                                         |                  |0        |Normal      |3      |                                                                                              |
|1884 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |35008512 |Normal      |16     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|1904 |conhost.exe                           |                                                                         |                  |0        |Normal      |1      |                                                                                              |
|1916 |spoolsv.exe                           |                                                                         |                  |0        |Normal      |13     |                                                                                              |
|1960 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |111345664|Normal      |9      |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|2084 |CxUtilSvc.exe                         |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|2168 |dasHost.exe                           |                                                                         |                  |0        |Normal      |1      |                                                                                              |
|2188 |OfficeClickToRun.exe                  |                                                                         |                  |0        |Normal      |21     |                                                                                              |
|2228 |SynTPHelper.exe                       |Synaptics Pointing Device Helper                                         |19.0.19.65        |3760128  |Above-Normal|1      |C:\Program Files\Synaptics\SynTP\                                                             |
|2268 |TNSLSNR.EXE                           |                                                                         |                  |0        |Normal      |3      |                                                                                              |
|2292 |svchost.exe                           |                                                                         |                  |0        |Normal      |11     |                                                                                              |
|2312 |oracle.exe                            |                                                                         |                  |0        |Normal      |31     |                                                                                              |
|2324 |sqlwriter.exe                         |                                                                         |                  |0        |Normal      |5      |                                                                                              |
|2400 |svchost.exe                           |                                                                         |                  |0        |Normal      |8      |                                                                                              |
|2444 |SynTPEnhService.exe                   |                                                                         |                  |0        |Normal      |5      |                                                                                              |
|2456 |MsMpEng.exe                           |                                                                         |                  |0        |Normal      |28     |                                                                                              |
|2576 |MicTray64.exe                         |mic tray icon                                                            |1.6.0.1           |1982464  |Below-Normal|5      |C:\Windows\System32\                                                                          |
|3060 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |103374848|Normal      |42     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|3104 |sqlservr.exe                          |                                                                         |                  |0        |Normal      |59     |                                                                                              |
|3200 |DpCardEngine.exe                      |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|3456 |IAStorDataMgrSvc.exe                  |                                                                         |                  |0        |Normal      |7      |                                                                                              |
|3536 |hpqwmiex.exe                          |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|3624 |NisSrv.exe                            |                                                                         |                  |0        |Normal      |8      |                                                                                              |
|3676 |jhi_service.exe                       |                                                                         |                  |0        |Normal      |2      |                                                                                              |
|3932 |WmiPrvSE.exe                          |                                                                         |                  |0        |Normal      |6      |                                                                                              |
|4092 |LMS.exe                               |                                                                         |                  |0        |Normal      |6      |                                                                                              |
|4176 |taskhostw.exe                         |Host Process for Windows Tasks                                           |6.2.10586.0       |17608704 |Normal      |10     |C:\Windows\System32\                                                                          |
|4768 |PresentationFontCache.exe             |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|4812 |SkypeHost.exe                         |                                                                         |10.1.2123.36      |3334144  |Normal      |9      |C:\Program Files\WindowsApps\Microsoft.Messaging_2.15.20002.0_x86__8wekyb3d8bbwe\             |
|4968 |IDMan.exe                             |Internet Download Manager (IDM)                                          |6.26.8.2          |24887296 |Normal      |8      |C:\Program Files (x86)\Internet Download Manager\                                             |
|4976 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |74264576 |Normal      |14     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|4980 |SearchIndexer.exe                     |                                                                         |                  |0        |Normal      |29     |                                                                                              |
|5320 |Video.UI.exe                          |                                                                         |10.17062.1291.0   |30572544 |Normal      |18     |C:\Program Files\WindowsApps\Microsoft.ZuneVideo_10.17062.12911.1000_x64__8wekyb3d8bbwe\      |
|5472 |GoogleCrashHandler64.exe              |                                                                         |                  |0        |Low         |3      |                                                                                              |
|5488 |GoogleCrashHandler.exe                |                                                                         |                  |0        |Low         |5      |                                                                                              |
|5552 |SystemSettingsBroker.exe              |System Settings Broker                                                   |6.2.10586.0       |21336064 |Above-Normal|30     |C:\Windows\System32\                                                                          |
|5560 |MpCmdRun.exe                          |                                                                         |                  |0        |Normal      |8      |                                                                                              |
|5572 |chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |32296960 |Low         |14     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|6528 |OneDrive.exe                          |Microsoft OneDrive                                                       |18.65.329.2       |31739904 |Normal      |13     |C:\Users\TM Hridoy\AppData\Local\Microsoft\OneDrive\                                          |
|6944 |KMPlayer.exe                          |The KMPlayer                                                             |3.6.0.87          |434249728|Above-Normal|50     |C:\Program Files (x86)\The KMPlayer\                                                          |
|7088 |RuntimeBroker.exe                     |Runtime Broker                                                           |6.2.10586.1176    |50974720 |Normal      |39     |C:\Windows\System32\                                                                          |
|7572 |DpAgent.exe                           |DigitalPersona 64-bit Helper Process                                     |7.3.0.98          |5783552  |Normal      |1      |C:\Program Files\HP\HP ProtectTools Security Manager\Bin\                                     |
|7788 |Toad.exe                              |Toad™ for Oracle®                                                        |12.8.0.49         |301756416|Normal      |15     |C:\Program Files\Dell\Toad for Oracle 2015 R2 Suite\Toad for Oracle 12.8\                     |
|8056 |svchost.exe                           |Host Process for Windows Services                                        |6.2.10586.0       |44433408 |Normal      |17     |C:\Windows\System32\                                                                          |
|8120 |winlogon.exe                          |                                                                         |                  |0        |High        |5      |                                                                                              |
|9600 |explorer.exe                          |Windows Explorer                                                         |6.2.10586.839     |131141632|Normal      |96     |C:\Windows\                                                                                   |
|12176|SmartAudio3.exe                       |DTS Audio Control Panel                                                  |3.0.54.12         |17244160 |Below-Normal|20     |C:\Program Files\CONEXANT\SA3\HP-NB-AIO\                                                      |
|12196|chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |8392704  |Normal      |2      |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|15448|sihost.exe                            |Shell Infrastructure Host                                                |6.2.10586.0       |28790784 |Normal      |17     |C:\Windows\System32\                                                                          |
|16112|devenv.exe                            |Microsoft Visual Studio 2012                                             |11.0.50727.1      |112885760|Normal      |24     |C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\                              |
|22144|IEMonitor.exe                         |Internet Download Manager agent for click monitoring in IE-based browsers|6.22.1.1          |8945664  |Normal      |1      |C:\Program Files (x86)\Internet Download Manager\                                             |
|33284|SystemSettings.exe                    |Settings                                                                 |6.2.10586.11      |61353984 |Normal      |20     |C:\Windows\ImmersiveControlPanel\                                                             |
|34036|quickphrase.exe                       |QuickPhrase                                                              |4.0.0.90          |9781248  |Normal      |1      |C:\Program Files (x86)\TypingMaster\QuickPhrase\                                              |
|34856|HPRadioMgr64.exe                      |HP Radio Manager                                                         |1.1.19.1          |9248768  |Normal      |7      |C:\Program Files (x86)\HP\HP Wireless Button Driver\                                          |
|34996|csrss.exe                             |                                                                         |                  |0        |High        |14     |                                                                                              |
|35008|SynTPEnh.exe                          |Synaptics TouchPad 64-bit Enhancements                                   |19.0.19.65        |20877312 |Above-Normal|10     |C:\Program Files\Synaptics\SynTP\                                                             |
|35016|taskeng.exe                           |                                                                         |                  |0        |Below-Normal|5      |                                                                                              |
|35216|svchost.exe                           |                                                                         |                  |0        |Normal      |4      |                                                                                              |
|35412|HPSupportSolutionsFrameworkService.exe|                                                                         |                  |0        |Normal      |9      |                                                                                              |
|35424|ApplicationFrameHost.exe              |Application Frame Host                                                   |6.2.10586.0       |31895552 |Normal      |8      |C:\Windows\System32\                                                                          |
|35684|dllhost.exe                           |                                                                         |                  |0        |Normal      |6      |                                                                                              |
|35904|SearchUI.exe                          |Search and Cortana application                                           |6.2.10586.1106    |101326848|Normal      |32     |C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\                                |
|36244|ShellExperienceHost.exe               |Windows Shell Experience Host                                            |6.2.10586.1106    |81080320 |Normal      |58     |C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\                                      |
|36456|dwm.exe                               |                                                                         |                  |0        |High        |12     |                                                                                              |
|36540|NetworkUXBroker.exe                   |Network UX Broker                                                        |6.2.10586.420     |17432576 |Above-Normal|8      |C:\Windows\System32\                                                                          |
|36564|IAStorIcon.exe                        |IAStorIcon                                                               |14.8.13.1060      |32772096 |Normal      |7      |C:\Program Files\Intel\Intel(R) Rapid Storage Technology\                                     |
|36764|chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |114872320|Normal      |16     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|36836|chrome.exe                            |Google Chrome                                                            |66.0.3359.181     |66576384 |Normal      |19     |C:\Program Files (x86)\Google\Chrome\Application\                                             |
|36956|Toad.exe                              |Toad™ for Oracle®                                                        |12.8.0.49         |249815040|Normal      |11     |C:\Program Files\Dell\Toad for Oracle 2015 R2 Suite\Toad for Oracle 12.8\                     |
|36984|audiodg.exe                           |Windows Audio Device Graph Isolation                                     |6.2.10586.218     |10084352 |Normal      |9      |C:\Windows\System32\                                                                          |
|37032|fontdrvhost.exe                       |                                                                         |                  |0        |Normal      |6      |                                                                                              |
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Assembler Information:
---------------------------------------------------------------------------------------------------------------------------------------------------------------
; Base Address: $4256000, Allocation Base: $4190000, Region Size: 119693312
; Allocation Protect: PAGE_EXECUTE_WRITECOPY, Protect: PAGE_EXECUTE_READWRITE
; State: MEM_COMMIT, Type: MEM_IMAGE
; 
;
; System.TFileStream.Create (Line=6807 - Offset=393)
; --------------------------------------------------
0000000004256C09  488D4D40          LEA  RCX, [RBP+$40]
0000000004256C0D  488B95C0000000    MOV  RDX, [RBP+$000000C0]
0000000004256C14  E827CFFAFF        CALL -$0530D9                    ; ($0000000004203B40) System.ExpandFileName
0000000004256C19  488B4540          MOV  RAX, [RBP+$40]
0000000004256C1D  48894558          MOV  [RBP+$58], RAX
0000000004256C21  C6456011          MOV  BYTE PTR [RBP+$60], $11
0000000004256C25  E8D6B8F5FF        CALL -$0A472A                    ; ($00000000041B2500->00007FF9EF9CB710) KERNEL32. (possible IsBadHugeReadPtr+144) (Line=0)
0000000004256C2A  488D4D38          LEA  RCX, [RBP+$38]
0000000004256C2E  89C2              MOV  EDX, EAX
0000000004256C30  E82B7CFBFF        CALL -$0483D5                    ; ($000000000420E860) System.SysErrorMessage
0000000004256C35  488B4538          MOV  RAX, [RBP+$38]
0000000004256C39  48894568          MOV  [RBP+$68], RAX
0000000004256C3D  C6457011          MOV  BYTE PTR [RBP+$70], $11
0000000004256C41  488B0D5823FEFF    MOV  RCX, [REL -$0001DCA8]       ; ($0000000004238FA0) EFOpenError Data as ANSI: 'P#.'; Data as UNICODE: '遐У'
0000000004256C48  B201              MOV  DL, 1
0000000004256C4A  4C8B053FF77005    MOV  R8, [REL $0570F73F]         ; ($0000000009966390) Data as ANSI: 'ÐÊ..'; Data as UNICODE: '쫐О'
0000000004256C51  4C8D4D58          LEA  R9, [RBP+$58]
0000000004256C55  C744242001000000  MOV  DWORD PTR [RSP+$20], 1
0000000004256C5D  E89E96FBFF        CALL -$046962                    ; ($0000000004210300) System.Exception.CreateResFmt
0000000004256C62  4889C1            MOV  RCX, RAX
;
; Line=6807 - Offset=485
; ----------------------
0000000004256C65  E80684F4FF        CALL -$0B7BFA                    ; ($000000000419F070) System._RaiseExcept  ; <-- EXCEPTION
;
; Line=6809 - Offset=490
; ----------------------
0000000004256C6A  488B8DB0000000    MOV  RCX, [RBP+$000000B0]
0000000004256C71  4883C110          ADD  RCX, $10
0000000004256C75  488B95C0000000    MOV  RDX, [RBP+$000000C0]
0000000004256C7C  E82F9AF4FF        CALL -$0B65D1                    ; ($00000000041A06B0) System._UStrAsg
0000000004256C81  90                NOP
;
; Line=6810 - Offset=514
; ----------------------
0000000004256C82  488D4D38          LEA  RCX, [RBP+$38]
0000000004256C86  C7C204000000      MOV  EDX, 4
0000000004256C8C  E88F94F4FF        CALL -$0B6B71                    ; ($00000000041A0120) System._UStrArrayClr
0000000004256C91  80BDB800000000    CMP  BYTE PTR [RBP+$000000B8], 0
0000000004256C98  7452              JZ   +$52                        ; ($0000000004256CEC) System.TFileStream.Create (Line=6810)
0000000004256C9A  488B8DB0000000    MOV  RCX, [RBP+$000000B0]
0000000004256CA1  E85A68F4FF        CALL -$0B97A6                    ; ($000000000419D500) System._AfterConstruction
0000000004256CA6  488985B0000000    MOV  [RBP+$000000B0], RAX
0000000004256CAD  EB3D              JMP  +$3D                        ; ($0000000004256CEC) System.TFileStream.Create (Line=6810)
0000000004256CAF  90                NOP
0000000004256CB0  90                NOP

Registers:
---------------------------------------------
RAX: 0000000002D1F370   RDI: 0000000000396000
RBX: 0000000011FF1E20   RSI: 0000000004256C6A
RCX: 00000000007FF930   RBP: 00000000007FF910
RDX: 0000000000000000   RSP: 00000000007FF830
R8 : 0000000004624AA1   R9 : 00000000007FF8E0
R10: 0000000000000008   R11: 00007FF9EFD40F20
R12: 0000000000000000   R13: 0000000000000000
R14: 0000000000000000   R15: 0000000000000000
RIP: 00007FF9ECBF1F28   FLG: 0000000000000202
EXP: 0000000004256C65   STK: 00000000007FF830

Stack:                               Memory Dump:
----------------------------------   -----------------------------------------------------------------------------------
000000001385D468: 000000000419CF31   0000000004256C65: E8 06 84 F4 FF 48 8B 8D B0 00 00 00 48 83 C1 10  .....H......H...
000000001385D460: 0000000000000000   0000000004256C75: 48 8B 95 C0 00 00 00 E8 2F 9A F4 FF 90 48 8D 4D  H......./....H.M
000000001385D458: 0000000000000000   0000000004256C85: 38 C7 C2 04 00 00 00 E8 8F 94 F4 FF 80 BD B8 00  8...............
000000001385D450: 0000000000000000   0000000004256C95: 00 00 00 74 52 48 8B 8D B0 00 00 00 E8 5A 68 F4  ...tRH.......Zh.
000000001385D448: 0000000000000000   0000000004256CA5: FF 48 89 85 B0 00 00 00 EB 3D 90 90 80 BD B8 00  .H.......=......
000000001385D440: 0000000000000000   0000000004256CB5: 00 00 00 74 2C 48 83 BD B0 00 00 00 00 74 22 48  ...t,H.......t"H
000000001385D438: 0000000011FF1E20   0000000004256CC5: 8B 8D B0 00 00 00 B2 81 48 8B 85 B0 00 00 00 48  ........H......H
000000001385D430: 0000000004256C6A   0000000004256CD5: 8B 18 FF 53 F8 48 8B 8D B0 00 00 00 E8 FA 67 F4  ...S.H........g.
000000001385D428: 0000000000000007   0000000004256CE5: FF E8 B5 83 F4 FF 90 48 8B 85 B0 00 00 00 48 8D  .......H......H.
000000001385D420: 00007FF9ECBF1F28   0000000004256CF5: A5 98 00 00 00 5B 5D C3 48 8B C0 55 48 83 EC 20  .....[].H..UH.. 
000000001385D418: 0000000000000000   0000000004256D05: 48 8B EC 48 8D 45 38 48 2B C5 48 8B CA 48 03 C8  H..H.E8H+.H..H..
000000001385D410: 000000010EEDFADE   0000000004256D15: C7 C2 04 00 00 00 E8 00 94 F4 FF 48 8D 65 20 5D  ...........H.e ]
000000001385D408: 0000000000396000   0000000004256D25: C3 48 90 48 8D 04 05 00 00 00 00 48 83 EC 28 E8  .H.H.......H..(.
000000001385D400: 0000000004256C6A   0000000004256D35: A7 83 F4 FF 48 83 C4 28 C3 CC CC 56 53 48 83 EC  ....H..(...VSH..
000000001385D3F8: 0000000011FF1E20   0000000004256D45: 28 48 89 CB 40 89 D6 48 89 D9 40 89 F2 E8 09 68  (H..@..H..@....h
000000001385D3F0: 00000000007FF840   0000000004256D55: F4 FF 48 83 7B 08 FF 74 0C 48 8B 43 08 48 89 C1  ..H.{..t.H.C.H..



