# Installation/Uninstallation #

NOTE! This document is for ver.1.2.x. The latest document is http://code.google.com/p/msofficesvn/wiki/Install.

## Preparation ##

1. If you install old version msofficesvn already, please uninstall it.

Please refer to

[Installation/Uninstallation for ver.1.00](Install_100.md)

[Installation/Uninstallation for ver.1.1.x](Install_11x.md)

for unistallation.

2. First, Install TortoiseSVN.

http://tortoisesvn.net/downloads

3. Download latest `msofficesvn_<version>_en.zip` file from Downloads page of this site.

4. Unzip the file and you get the files of Word add-in and Excel add-in.

```
+-2007
|  +-excel
|  | excelsvn.ini
|  | excelsvn.xlam
|  |
|  +-word
|    wordsvn.dotm
|    wordsvn.ini
|
+-97-2003
    +-excel
    | excelsvn.ini
    | excelsvn.xla
    |
    +-word
      wordsvn.dot
      wordsvn.ini
```

Add-in files under 2007 folder has Office2007 ribbon interface, and they work on Office2007 but does not work on older Office.

Add-in files under 97-2003 folder has legacy menu and toolbar interface, and they work on Office97 to Office2007.
Of course I recommend you to install ribbon interface add-in files under 2007 folder for Office2007.

## Office97SR2 to Office2003 ##

### Excel ###

1. Copy files of Excel add-in to the following folders.

  * excelsvn.ini
  * excelsvn.xla

| Office97 SR2 | C:\Program Files\Microsoft Office\Office\Library\ |
|:-------------|:--------------------------------------------------|
| Office2000 | C:\Program Files\Microsoft Office\Office\Library\ |
| Office XP | C:\Program Files\Microsoft Office\Office10\Library\ |
| Office2003 | %APPDATA%\Microsoft\AddIns\ |

%APPDATA% means the "Application Data folder" of the login user.

For example, when the login user is "koki", %APPDATA% points the following folder.

```
C:\Documents and Settings\koki\Application Data
```

If you input the %APPDATA% to the address bar of Explorer, it displays "Application Data folder".

2. Start Excel and check Excelsvn check box in [Tool](Tool.md)/[Add-Ins...] of main menu.

3. [Subversion](Subversion.md) menu and the command bar appear.

### Word ###

1. Copy the files of Word add-in to the following folders.

  * wordsvn.dot
  * wordsvn.ini

| Office97 SR2 | C:\Program Files\Microsoft Office\Office\STARTUP\ |
|:-------------|:--------------------------------------------------|
| Office2000 | C:\Program Files\Microsoft Office\Office\STARTUP\ |
| Office XP | C:\Program Files\Microsoft Office\Office10\STARTUP\ |
| Office2003 | %APPDATA%\Microsoft\Word\STARTUP\ |

2. Start Word.

3. [Subversion](Subversion.md) menu and the command bar appear.

## Office2007 ##

### Excel ###

1. Copy the files of Excel add-in to the following folders.

  * excelsvn.ini
  * excelsvn.xlam

```
%APPDATA%\Microsoft\AddIns\
```

2. Start Excel and select "Excel Add-Ins" in [button](Office.md)/[Options](Excel.md)/[Add-Ins]/[Manage](Manage.md) and click [Go...] button. Add-Ins dialog box appears.

3. Check the "Excelsvn" check box in [Add-Ins available] list box.

4. [Subversion](Subversion.md) ribbon appears.

### Word ###

1. Copy the files of Word add-in to the following folders.

  * wordsvn.dotm
  * wordsvn.ini

```
%APPDATA%\Microsoft\Word\STARTUP\
```

2. Start Word.

3. [Subversion](Subversion.md) ribbon appears.


Now, you can use msoffiecesvn already, but if you wish to customize it, please refer to [Customization](CustomSetting.md).


# Uninstallation #

## Office97SR2 to Office2003 ##

### Excel ###

1. Start Excel and select [Tool](Tool.md)/[Add-Ins...] menu item of main menu. Add-Ins dialog box appears.

2. Clear the "Excelsvn" check box in [Add-Ins available] list box.

3. [Subversion](Subversion.md) menu and the command bar disappear.

4. Delete the files of Excel add-in that you copied in installation.

### Word ###

1. Start Word and select [Tool](Tool.md)/[Add-Ins...] menu item of main menu. Templates and Add-Ins dialog box appears.

2. Clear the "wordsvn.dot" check box in [templates and add-ins](Global.md) list box.

3. [Subversion](Subversion.md) menu and the command bar disappear.

4. Delete the files of Word add-in that you copied in installation.

5. If Subversion menu and command bar still remain after uninstallation, exit Word and delete Normal.dot and start Word again. New Normal.dot will be created and the remaining menu and command bar will disappear.

## Office2007 ##

### Excel ###

1. Start Excel and select "Excel Add-Ins" in [button](Office.md)/[Options](Excel.md)/[Add-Ins]/[Manage](Manage.md) and click [Go...] button. Add-Ins dialog box appears.

2. Clear the "Excelsvn" check box in [Add-Ins available] list box.

3. [Subversion](Subversion.md) ribbon disappears.

4. Delete the files of Excel add-in that you copied in installation.

### Word ###

1. Start Word and select "Word Add-Ins" in [button](Office.md)/[Options](Word.md)/[Add-Ins]/[Manage](Manage.md) and click [Go...] button. Add-Ins dialog box appears.

2. Clear the "wordsvn.dotm" check box in [Add-Ins available] list box.

3. [Subversion](Subversion.md) ribbon disappears.

4. Delete wordsvn.dotm that you copied in installation.