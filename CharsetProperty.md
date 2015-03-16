
```
Platform SDK: CDO for Windows 2000 
Charset Property
The Charset property defines the character set for the body part.

[Visual Basic]
Property Charset as String
[C++]
HRESULT get_Charset(BSTR* pVal);
HRESULT put_Charset(BSTR Val);
[IDL]
HRESULT [propget] Charset([out,retval] BSTR* pVal);
HRESULT [propput] Charset([in] BSTR Val);
Remarks
The Charset property corresponds to the charset attribute parameter of the Content-Type header field of Request for Comments (RFC) 2045. Charset does not include any types or subtypes. Only text body parts have an associated character set.

The default content type under RFC 822 is plain text in US-ASCII (ANSI X3.4-1986) format. The currently permissible character set names include "us-ascii", "iso-8859-nnnnn", and "x-ttttt", in which "nnnnn" is one to five decimal digits representing an International Standards Organization (ISO) code page and "ttttt" is an extension token. Character set "iso-8859-1" is the same as "us-ascii". However, certain message transfer agents and user agents might require one of these strings and not accept the other.

Note

When working with body parts that contain mixed character sets, you can specify the character set used in the message's header fields by setting the IBodyPart.Charset property of the Message object. There is no corresponding top-level charset parameter in the transmitted stream; this character encoding value is used to encode these headers when they are set using the IMessage interface properties, or through fields within the urn:schemas:httpmail: namespace using the mechanism defined in RFC 1522.

You can use any Charset value that is installed or supported on your system. The following table defines some of the module constants that are available through the type library and header files that you can use with the Charset property. 

cdoCharset Module Constants

Constant Value 
CdoBIG5 "big5" 
CdoEUC_JP "euc-jp" 
CdoEUC_KR "euc-kr" 
CdoGB2312 "gb2312" 
CdoISO_2022_JP "iso-2022-jp" 
CdoISO_2022_KR "iso-2022-kr" 
CdoISO_8859_1 "iso-8859-1" 
CdoISO_8859_2 "iso-8859-2" 
CdoISO_8859_3 "iso-8859-3" 
CdoISO_8859_4 "iso-8859-4" 
CdoISO_8859_5 "iso-8859-5" 
CdoISO_8859_6 "iso-8859-6" 
CdoISO_8859_7 "iso-8859-7" 
CdoISO_8859_8 "iso-8859-8" 
CdoISO_8859_9 "iso-8859-9" 
cdoKOI8_R "koi8-r" 
cdoShift_JIS "shift-jis" 
CdoUS_ASCII "us-ascii" 
CdoUTF_7 "utf-7" 
CdoUTF_8 "utf-8" 


The contents of Charset are case-insensitive. The default value is "us-ascii".

Important Note

If you request the decoded content stream for a body part with a text content type using the IBodyPart.GetDecodedContentStream method, the returned ADO Stream object is of type text and the _Stream.Charset property normally reflects the body part's designated character encoding. However, in the case of the character encodings UTF-7, UTF-8, EUC-JP, and ISO-2022-JP, the returned stream has _Stream.Charset set to Unicode. If you wish to load content from a file that has its text content encoded using the UTF-7, UTF-8, EUC-JP, and ISO-2022-JP character encodings, you will need to first load the file with a separate ADO Stream object, and then copy the content to the decoded content stream:

[Visual Basic] 
Dim iMsg As New CDO.Message
Dim iBp As CDO.IBodyPart
Dim Stm As ADODB.Stream
Dim Stm2 As New ADODB.Stream

iMsg.To = "test@microsoft.com"
iMsg.From = "test@microsoft.com"
iMsg.Subject = "hello there"
iMsg.TextBody = "here is my xml file"

' Open the XML file using the 2nd, temporary Stream object
Stm2.Open
Stm2.Type = adTypeText
Stm2.Charset = "UTF-8"
Stm2.LoadFromFile "c:\test.xml"

' Now add the attachment to the message
Set iBp = iMsg.Attachments.Add
iBp.ContentMediaType = "text/xml; charset=""utf-8"""
iBp.Charset = cdoUTF8
Set Stm = iBp.GetDecodedContentStream
' Copy the XML file contents to the content stream
Stm2.CopyTo Stm
Stm.Flush
' Save the file to check our work
iMsg.GetStream.SaveToFile "c:\test.eml", adSaveCreateOverWrite

See Also
ADO Stream Object

IBodyPart.GetDecodedContentStream Method

© 2000-2001 Microsoft Corporation. All rights reserved.
```