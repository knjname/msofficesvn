# ワーキングコピーの状態取得方法

# 概要 #

SubWCRevのCOMインターフェイスを利用して、ワーキングコピーの状態を取得する。

http://tortoisesvn.net/docs/release/TortoiseSVN_ja/tsvn-subwcrev-com-interface.html

# コード #

VBスクリプトの場合

```
' SubWCRevCOMTest.vbs - vbscript file'
' test script for the SubWCRev COM/Automation-object

Set FileSysObj = CreateObject("Scripting.FileSystemObject")

Set WCRevObj = CreateObject("SubWCRev.object")

strFilePath = FileSysObj.GetAbsolutePathName("達人プログラマー.doc")
WCRevObj.GetWCInfo strFilePath, 1, 1

wcInfoString1 = "Revision = " & WCRevObj.Revision & vbLF & _
                "Min Revision = " & WCRevObj.MinRev & vbLF & _
                "Max Revision = " & WCRevObj.MaxRev & vbLF & _
                "Date = " & WCRevObj.Date & vbLF & _
                "URL = " & WCRevObj.Url & vbLF & _
                "Author = " & WCRevObj.Author & vbLF & _
                "HasMods = " & WCRevObj.HasModifications & vbLF & _
                "IsSvnItem = " & WCRevObj.IsSvnItem & vbLF & _
                "NeedsLocking = " & WCRevObj.NeedsLocking & vbLF & _
                "IsLocked = " & WCRevObj.IsLocked & vbLF & _ 
                "LockCreationDate = " & WCRevObj.LockCreationDate & vbLF & _
                "LockOwner = " & WCRevObj.LockOwner & vbLF & _
                "LockComment = " & WCRevObj.LockComment

WScript.Echo(wcInfoString1)
```

出力結果例
```
C:\work\subwcreccom>cscript SubWCRevTest.vbs
Microsoft (R) Windows Script Host Version 5.7
Copyright (C) Microsoft Corporation 1996-2001. All rights reserved.

Revision = 394
Min Revision = 609
Max Revision = 609
Date = 2008/07/01 02:04:09
URL = file:///C:/repos/svntest/達人プログラマー.doc
Author = koki
HasMods = False
IsSvnItem = True
NeedsLocking = True
IsLocked = True
LockCreationDate = 2011/12/14 00:04:39
LockOwner = koki
LockComment =
```