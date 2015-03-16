# Customization #

## Shortcut key setting ##

### Excel ###

1. Exit Excel.

2. Set the value of ShortcutKeyOnOff key to 1 in [ShortcutKey](ShortcutKey.md) section of excelsvn.ini that is copied in installing.
```
[ShortcutKey]
ShortcutKeyOnOff=1
```

3. Edit the parts that assign shortcut keys to SVN commands depending on your needs.
```
Update="+^{u}"
Commit="+^{i}"
Diff="+^{d}"
RepoBrowser="+^{w}"
Log="+^{l}"
Lock="+^{k}"
Unlock="+^{n}"
Add="+^{a}"
Explorer="+^{e}"
```

"+" means Shift key and "^" means Ctrl key. The alphabet that is braced by {} means the alphabet key. In the above example, Update command is performed when the "Shift" key, "Ctrl" key and "u" keys are pressed at the same time.

Refer to [dev\_ExcelOnKey](dev_ExcelOnKey.md) about key notation.

If you don't wish to assign some shortcut keys, remove them or comment them out. Insert the ";" at the top of the line to comment it out.

> (Example) In the case that disable the shortcut key for Update command.
```
;Update="+^{u}"
```

4. Start Excel and confirm that shortcut keys work.

### Word ###

1. Exit Word.

2. Set the value of ShortcutKeyOnOff key to 1, and the value of Registered key to 0 in [ShortcutKey](ShortcutKey.md) section of wordsvn.ini that is copied in installing.
```
[ShortcutKey]
ShortcutKeyOnOff=1
Registered=0
```

3. Edit the parts that assign shortcut keys to SVN commands depending on your needs.
```
;Shift+Ctrl+u
Update1=256
Update2=512
Update3=85

;Shift+Ctrl+i
Commit1=256
Commit2=512
Commit3=73

(snip)
```

Assign shortcut key codes to <Command Name><No.> keys.

> (Example) In the above example, Update command is performed when the "Shift" key, "Ctrl" key and "u" keys are pressed at the same time.
| Key | Key code |
|:----|:---------|
| Shift | 256 |
| Ctrl | 512 |
| u | 85 |

Refer to [dev\_WordKeyCode](dev_WordKeyCode.md) about key code.

If you don't wish to assign some shortcut keys, remove them or comment them out. Insert the ";" at the top of the line to comment it out.

> (Example) In the case that disable the shortcut key for Update command.
```
;Shift+Ctrl+u
;Update1=256
;Update2=512
;Update3=85
```

4. Start Word and confirm that shortcut keys work.

5. If you wish to change the shortcut key assignment furthermore, make sure to set the value of Registered key to 0 in [ShortcutKey](ShortcutKey.md) section of wordsvn.ini before you start Word. The value of Registered key is set to 1 when you start Word and shortcut key assignment is registered. If the value is not 0, The shortcut key assignment is not registered when you start Word.

## Clear the shortcut key assignment ##

### Excel ###

1. Exit Excel.

2. Set the value of ShortcutKeyOnOff key to 0 in [ShortcutKey](ShortcutKey.md) section of excelsvn.ini that is copied in installing.
```
[ShortcutKey]
ShortcutKeyOnOff=0
```

3. Start Excel and confirm that shortcut keys are disabled or originally assigned functions are invoked.

### Word ###

1. Exit Word.

2. Set the value of ShortcutKeyOnOff key to 0, and the value of Registered key to 0 in [ShortcutKey](ShortcutKey.md) section of wordsvn.ini that is copied in installing.

```
[ShortcutKey]
ShortcutKeyOnOff=0
Registered=0
```

3. Start Word and confirm that shortcut keys are disabled or originally assigned functions are invoked.

## Option Setting ##

### Turn on/off displaying a message asking data file saving in performing commands ###

#### Excel ####

1. Set the value of DispAskSaveModMsg key in [Configuration](Configuration.md) section of excelsvn.ini.
| The value of DispAskSaveModMsg key | Description |
|:-----------------------------------|:------------|
| 0 | Not display a message |
| 1 | Display a message |

```
[Configuration]
DispAskSaveModMsg=1
```

#### Word ####

Set up wordsvn.ini as in the case of Excel.

## Turn on/off closing and reopening the data file in performing commit command ##

#### Excel ####

1. Set the value of CiCloseReopenFile key in [Configuration](Configuration.md) section of excelsvn.ini.
| The value of CiCloseReopenFile key | Description |
|:-----------------------------------|:------------|
| 0 | Not close and reopen the data file in performing commit |
| 1 | Close and reopen the data file in performing commit |
| 2 | Close and reopen the data file that has svn:needs-lock property in performing commit, and not do that for the data file that has no svn:needs-lock property |

FileNameCharEncoding key is used by add-in when the following value is set.
```
CiCloseReopenFile=2
```

If you wish to use a language other than "iso-8859-1"(Western European) for the data file name, try to set the character set value to FileNameCharEncoding key. (Sorry, I'm not sure wether they realy work or not.)

| big5 |
|:-----|
| euc-jp |
| euc-kr |
| gb2312 |
| iso-2022-jp |
| iso-2022-kr |
| iso-8859-1 |
| iso-8859-2 |
| iso-8859-3 |
| iso-8859-4 |
| iso-8859-5 |
| iso-8859-6 |
| iso-8859-7 |
| iso-8859-8 |
| iso-8859-9 |
| koi8-r |
| shift-jis |
| us-ascii |
| utf-7 |
| utf-8 |

Refer to http://en.wikipedia.org/wiki/Character_encoding about character set values.

```
[Configuration]
FileNameCharEncoding="iso-8859-1"
CiCloseReopenFile=0
```

#### Word ####

Set up wordsvn.ini as in the case of Excel.

### Turn on/off auto closing of the progress dialog box in the end of performing [Update](SVN.md), [Commit](SVN.md) ###

#### Excel ####

Set the value of CiAutoCloseProgressDlg key in [Configuration](Configuration.md) section of excelsvn.ini.

| The value of CiAutoCloseProgressDlg key | Description |
|:----------------------------------------|:------------|
| 0 | don't close the dialog automatically |
| 1 | auto close if no errors |
| 2 | auto close if no errors and conflicts |
| 3 | auto close if no errors, conflicts and merges |
| 4 | auto close if no errors, conflicts and merges for local operations |

```
[Configuration]
CiAutoCloseProgressDlg=3
```

#### Word ####

Set up wordsvn.ini as in the case of Excel.
