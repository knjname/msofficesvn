# Microsoft Office VBA add-ins that invoke TortoiseSVN commands #

I've been using Subversion for document management. I thought that it was convenient if I could control the version of Word and Excel data files while I edit them. So, I had been looking for such programs and had found the followings.

Excel

http://dkiroku.com/2005-07-01-11.html

Word

http://www.nekoconeko.com/~nagamori/wordsvn/

But, these programs work not well on MS-Office97 SR2 that I use and they don't support lock functions. Lock functions are required when you share and edit binary data files in cooperation with others. So, I modified them.

## Looks ##

They go like followings.
Each commands can be invoked from the menu and the command bar.

> Word97 SR2
<NO IMAGE>

> Excel97 SR2
<NO IMAGE>

> Word2007
![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/en/wd2007menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/en/wd2007menu.jpg)

> Excel2007
![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/en/xl2007menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/en/xl2007menu.jpg)

## Operating Environment ##

I guess that the add-ins work on the following environment.

  * Windows OS where WSH is installed.
  * Microsoft Office97 to Office2007
  * TortoiseSVN must be installed.

I tested on the following environment.

  * Windows XP Professional
  * Office97 SR2, Office2007
  * TortoiseSVN 1.4.7, 1.5.2

## Installation and Uninstallation ##

Please refer to [Installation/Uninstallation Page](Install.md).

## Functional Overview ##

The add-ins can apply the following commands to the active workbook and document.

  * SVN Update
  * SVN Get lock
  * SVN Commit
  * SVN Diff
  * SVN Show log
  * SVN Repo-browser
  * SVN Release lock
  * SVN Add
  * SVN Delete
  * Open Explorer

In the case of [Update](SVN.md), [Get lock](SVN.md), [Commit](SVN.md) and [Release lock](SVN.md), once the active document or book is closed, and the TortoiseSVN command is applied to it, and reopen it after.

[Explorer](Open.md) command open Explorer with selecting the active document or book, so you can use the other commands quickly that can't be invoked from the add-ins.

## Shortcut key (Ver.1.1.1 New feature) ##

Shortcut keys can be assigned to commands.

## Option Setting (Ver.1.1.1 New feature) ##

Following option settings are available.

  * Turn on/off displaying a message asking data file saving in performing commands.
  * Turn on/off closing and reopening the data file in performing commit command.
  * Turn on/off auto closing of the progress dialog box in the end of performing [Update](SVN.md), [Commit](SVN.md).




&lt;NOTE&gt;



Some customizations are needed to use ver.1.1.0 new features after installation.
Please refer to [Customization](CustomSetting.md) for details.


## Merit and Demerit ##

Merit

  * It's take some time especially in narrow screen that you open Explorer and select the editing file and apply the TortoiseSVN command to it. This add-in helps that operation. For example, when you make documents by try and error, you may wish to see the difference between original document and current one frequently. You can see it by just clicking [Diff](Diff.md) button when you edit the document.
  * You can avoid committing or getting lock without saving and closing during editing the file.

Demerit

  * The add-ins apply the commands to only the active document or book, so you can't use it when you wish to edit multiple files and commit them at the same time to make a "change set".

## Tutorial ##

<NOT CREATED YET>

## License ##

Please use these programs under GNU General Public License v2.

## Acknowledgment ##

I appreciate Mr. Osamu OKANO and Mr. Kazuyuki NAGAMORI, who created original programs and opened their source code to public.

## Contact ##

If you have some comments about these programs, e-mail me.

Koki Yamamoto <kokiya@gmail.com>