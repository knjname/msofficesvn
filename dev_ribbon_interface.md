# Ribbon Interface of Office2007 #

## Reference Links ##

(Japanese)

http://fnya.cocolog-nifty.com/blog/2009/03/excel-2007-e739.html

(English)

http://openxmldeveloper.org/articles/CustomUIeditor.aspx

(English)

http://msdn.microsoft.com/en-us/library/aa338202.aspx

(Japanese)

http://msdn.microsoft.com/ja-jp/library/aa338202.aspx

## MEMO ##

  * .xlsm file is actually zip file. It contains  customUI.xml file where the custom ribbon interface is defined. And vbaProject.bin contains VBA scripts.

```
\
│  [Content_Types].xml
│
├─customUI
│      customUI.xml   <*>
│
├─docProps
│      app.xml
│      core.xml
│
├─xl
│  │  styles.xml
│  │  vbaProject.bin <*>
│  │  workbook.xml
│  │
│  ├─theme
│  │      theme1.xml
│  │
│  ├─worksheets
│  │      sheet1.xml
│  │      sheet2.xml
│  │      sheet3.xml
│  │
│  └─_rels
│          workbook.xml.rels
│
└─_rels
        .rels
```

  * If you wish to add Japanese characters(Shift-JIS) to customUI.xml, add the following line to top of the file, then add Japanese characters.

> Custom UI Editor does not support Japanese. So, change the extension of the addin file to "zip" and edit customUI.xml by your editor.

```

<?xml version="1.0" encoding="Shift-JIS"?>

```

