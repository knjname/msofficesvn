# Search in entries file #

  * Is the entries file utf-8?

## RegEx ##

  * Unable to search pattern over multi lines.

> What I wish to do is to cut out between active content file name and new page control code 0x12.

  * Unable to search Japanese words.

> Do I need to convert character encoding?

```

Function IsLockNeeded() As Boolean
  Dim EntriesFile As String
  Dim EntriesContent As String
  Dim RegExpress As Object
  Dim RegexFileName As String
  Dim MatchedEnty As String
  
  EntriesFile = mPath & "\.svn\entries"
  Open EntriesFile For Binary Shared As #1
  Debug.Print LOF(1)
  EntriesContent = Input(LOF(1), 1)
  Set RegExpress = CreateObject("VBScript.RegExp")
  RegExpress.Pattern = "\."
  RegexFileName = RegExpress.Replace(mName, "\.")
'  RegExpress.Pattern = "2007 年卓上カレンダー1\.xls"
  Debug.Print RegexFileName
'  RegExpress.MultiLine = True
'  RegExpress.Pattern = Chr(12) ' True
'  RegExpress.Pattern = RegexFileName & ".*" & Chr(12) ' False
'  RegExpress.Pattern = RegexFileName & ".*" ' True
'  RegExpress.Pattern = RegexFileName & ".+" & Chr(12) ' False
'  RegExpress.Pattern = RegexFileName & ".*" & "2008" ' False
'  RegExpress.Pattern = "年卓上" ' False
'  RegExpress.Pattern = "Book.*" & Chr(10) ' True
'  RegExpress.Pattern = "Book.*" & "File" ' False

  Debug.Print RegExpress.Pattern
  Debug.Print RegExpress.Test(EntriesContent)
  Close #1
  
End Function

```