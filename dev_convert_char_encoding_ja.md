#キャラクターエンコーディングの変換

```
' testCOM.vbs - vbscript file'
' test script for the SubWCRev COM/Automation-object

Set FileSysObj = CreateObject("Scripting.FileSystemObject")

Set WCRevObj = CreateObject("SubWCRev.object")

strFilePath = FileSysObj.GetAbsolutePathName("表.txt")

strUTF8FilePath = ConvStringCharEncoding("shift-jis", "utf-8", strFilePath)

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


Function ConvStringCharEncoding(ByVal SrcEncoding, _
                              ByVal DesEncoding, _
                              ByVal InputFilePath)

  Dim FirstObj
  Dim SecondObj

  Set FirstObj = CreateObject("ADODB.Stream")

  With FirstObj
    .Type = 2 'adTypeText
    .Charset = SrcEncoding
    .Open
    .WriteText InputFilePath
    .Position = 0
  End With

  Set SecondObj = CreateObject("ADODB.Stream")

  With SecondObj
    .Type = 2 'adTypeText
    .Charset = DesEncoding
    .Open
  End With

  FirstObj.CopyTo SecondObj

 ' コピーの為にデータポインタを先頭にセット  
  SecondObj.Position = 0

  ' バイナリで開く  
'  FirstObj.Open  
'  FirstObj.Type = 1  

  ' テキストをバイナリに変換  
'  SecondObj.CopyTo FirstObj  
'  SecondObj.Close  

'  DispBuffer = ""  
  ' BOM( バイトマーク ) を取り去る  
'  FirstObj.Read(3)  
'  Do while not FirstObj.EOS  
'      LineBuffer = FirstObj.Read(16)  
'      For i = 1 to LenB( LineBuffer )  
'          CWork = MidB(LineBuffer,i,1)  
'          Cwork = AscB(Cwork)  
'          Cwork = Hex(Cwork)  
'          Cwork = Ucase(Cwork)  
'          DispBuffer = DispBuffer & "%" & Cwork  
'      Next  
'  Loop  

  ConvStringCharEncoding = SecondObj.ReadText()

  FirstObj.Close
  SecondObj.Close
End Function
```