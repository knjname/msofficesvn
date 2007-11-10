VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisDocument"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True


' Copyright (C) 2005 Osamu OKANO <osamu@dkiroku.com>
'     All rights reserved.
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' Copyright (C) 2005 Kazuyuki NAGAMORI <nagamori@nekoconeko.com>
'     All rights reserved.
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' Copyright (C) 2007 Koki Yamamoto
'


Private Sub SVNWakeUp()
    Dim isMenu
    Dim myCon As CommandBarPopup
    
    isMenu = False
    
'    MsgBox "SVNWakeUp"
    
    For Each myCon In Application.CommandBars("Menu Bar").Controls
        If myCon.Caption = "Subversion(&S)" Then
            isMenu = True
            Exit For
        End If
    Next
    
    If isMenu = False Then
        SVNMenuInstall
    End If

End Sub

Private Sub SVNMenuInstall()
    Dim myBar As CommandBar
    On Error Resume Next
    Dim Menu As CommandBarControl
    Dim SubMenu1 As CommandBarButton
    Dim SubMenu2 As CommandBarButton
    Dim SubMenu3 As CommandBarButton
    Dim SubMenu4 As CommandBarButton
    Dim SubMenu5 As CommandBarButton
    Dim SubMenu6 As CommandBarButton
    Dim SubMenu7 As CommandBarButton
    Dim SubMenu8 As CommandBarButton

'    MsgBox "SVNMenuInstall"

    Set Menu = Application.CommandBars("Menu Bar").Controls.Add(Type:=msoControlPopup)
    Menu.Caption = "Subversion(&S)"
    Set SubMenu1 = Menu.Controls.Add
    SubMenu1.Caption = "���O�\��(&L)"
    SubMenu1.OnAction = "TSVNLOG"
'    SubMenu1.Picture = LoadPicture(ThisDocument.Path & "\ico\menulog.bmp")
    SubMenu1.FaceId = 44
    
    Set SubMenu2 = Menu.Controls.Add
    SubMenu2.Caption = "����(&D)"
    SubMenu2.OnAction = "TSVNDIFF"
'    SubMenu2.Picture = LoadPicture(ThisDocument.Path & "\ico\menucompare.bmp")

    Set SubMenu3 = Menu.Controls.Add
    SubMenu3.Caption = "�R�~�b�g(&C)"
    SubMenu3.OnAction = "TSVNCI"
'    SubMenu3.Picture = LoadPicture(ThisDocument.Path & "\ico\menucommit.bmp")

    Set SubMenu4 = Menu.Controls.Add
    SubMenu4.Caption = "�ǉ�(&A)"
    SubMenu4.OnAction = "TSVNADD"
'    SubMenu4.Picture = LoadPicture(ThisDocument.Path & "\ico\menuadd.bmp")

    Set SubMenu5 = Menu.Controls.Add
    SubMenu5.Caption = "���|�W�g���u���E�U(&R)"
    SubMenu5.OnAction = "TSVNRB"
'    SubMenu5.Picture = LoadPicture(ThisDocument.Path & "\ico\menurepobrowse.bmp")

    Set SubMenu6 = Menu.Controls.Add
    SubMenu6.Caption = "���b�N���擾(&O)"
    SubMenu6.OnAction = "TSVNLOCK"

    Set SubMenu7 = Menu.Controls.Add
    SubMenu7.Caption = "���b�N���J��(&U)"
    SubMenu7.OnAction = "TSVNUNLOCK"

    Set SubMenu8 = Menu.Controls.Add
    SubMenu8.Caption = "���j���[�X�V(&M)"
    SubMenu8.OnAction = "TSVNMENU"
    
    Err.Clear

End Sub

Sub SVNToolBarInstall()
    
'    MsgBox "SVNToolBarInstall"
    
    Dim SVNCmdBar As CommandBar
    
    'Test whether the subversion tool bar exits or not
    Dim CmdBarIdx As Long
    Dim SVNCmdBartExist
    
    'If Subversion command bar already exists, exit subroutine.
    For CmdBarIdx = 1 To Application.CommandBars.Count
        If Application.CommandBars.Item(CmdBarIdx).Name = "Subversion" Then
           SVNCmdBartExist = True
           Exit Sub
        End If
    Next CmdBarIdx
    
    Set SVNCmdBar = Application.CommandBars.Add(Name:="Subversion")
            
    With SVNCmdBar
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "���O�\��"
            .FaceId = 44
            .OnAction = "TSVNLOG"
 '           '.Picture = LoadPicture(ThisDocument.Path & "\ico\menulog.bmp")
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "����"
            .FaceId = 195
            .OnAction = "TSVNDIFF"
 '           '.Picture = LoadPicture(ThisDocument.Path & "\ico\menucompare.bmp")
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "�R�~�b�g"
            .FaceId = 359
            .OnAction = "TSVNCI"
 '           '.Picture = LoadPicture(ThisDocument.Path & "\ico\menucommit.bmp")
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "�ǉ�"
            .FaceId = 316
            .OnAction = "TSVNADD"
 '           '.Picture = LoadPicture(ThisDocument.Path & "\ico\menuadd.bmp")
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "���|�W�g���u���E�U"
            .FaceId = 25
            .OnAction = "TSVNRB"
 '           '.Picture = LoadPicture(ThisDocument.Path & "\ico\menurepobrowse.bmp")
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "���b�N���擾"
            .FaceId = 225
            .OnAction = "TSVNLOCK"
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "���b�N���J��"
            .FaceId = 277
            .OnAction = "TSVNUNLOCK"
        End With
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "���j���[�X�V"
            .FaceId = 598
            .OnAction = "TSVNMENU"
        End With
       
        With .Controls.Add(Type:=msoControlButton)
            .Caption = "TEST"
            .FaceId = 100
            .OnAction = "TSVNTEST"
        End With
       .Enabled = True
       .Visible = True
    End With
    Err.Clear
End Sub

Private Sub SVNDeleteMenu()
    Dim myCon As CommandBarPopup
    
'    MsgBox "SVNDeleteMenu"

    'If Subversion menu exists, delete it.
    For Each myCon In Application.CommandBars("Menu Bar").Controls
        If myCon.Caption = "Subversion(&S)" Then
            Application.CommandBars("Menu Bar").Controls("Subversion(&S)").Delete
        Exit For
    End If
    Next
End Sub

Private Sub SVNDeleteCommandBar()
    Dim CmdBarIdx As Long

    With Application.CommandBars
        For CmdBarIdx = 1 To .Count
            If .Item(CmdBarIdx).Name = "Subversion" Then
               .Item(CmdBarIdx).Delete
               Exit For
            End If
        Next CmdBarIdx
    End With
End Sub

Sub AutoExec()
'  MsgBox "AutoExec Begin"
  SVNDeleteMenu
  SVNWakeUp
  SVNDeleteCommandBar
  SVNToolBarInstall
'  MsgBox "AutoExec End"
End Sub

Sub AutoNew()
'  MsgBox "AutoNew"
'  SVNDeleteMenu
'  SVNWakeUp
'  SVNResetMenu
End Sub

Sub AutoOpen()
'  MsgBox "AutoOpen"

'  SVNDeleteMenu
'  SVNWakeUp
'  SVNResetMenu
End Sub

Sub AutoClose()
'  MsgBox "AutoClose"
'  SVNDeleteMenu
End Sub

Sub AutoExit()
'  MsgBox "AutoExit"
  SVNDeleteMenu
  SVNDeleteCommandBar
'  SVNDeleteMenu
End Sub

Function GetSVNControlStatus(ByRef isDotSVN As Boolean, ByRef isTextBase As Boolean)
    Dim strDotSvn As String
    Dim strTextBase As String

    strDotSvn = ActiveDocument.Path & "\.svn"
    strTextBase = ActiveDocument.Path & "\.svn\text-base\" & ActiveDocument.Name & ".svn-base"

    If CreateObject("Scripting.FileSystemObject").FolderExists(strDotSvn) Then
        isDotSvn = True
    Else
        isDotSvn = False
    End If

    If CreateObject("Scripting.FileSystemObject").FileExists(strTextBase) Then
        isTextBase = True
    Else
        isTextBase = False
    End If
End Function

Sub SVNResetMenu()
    Dim props
    Dim propBase
    Dim dotSvn
    Dim isProps
    Dim isPropBase
    Dim isDotSvn
    Dim myBar As CommandBar
    
'    MsgBox "SVNResetMenu"
    
    props = ActiveDocument.Path & "\.svn\props\" & ActiveDocument.Name & ".svn-work"
    propBase = ActiveDocument.Path & "\.svn\prop-base\" & ActiveDocument.Name & ".svn-base"
    dotSvn = ActiveDocument.Path & "\.svn"
    
    If CreateObject("Scripting.FileSystemObject").FileExists(props) Then
        isProps = True
    Else
        isProps = False
    End If
    If CreateObject("Scripting.FileSystemObject").FileExists(propBase) Then
        isPropBase = True
    Else
        isPropBase = False
    End If
    If CreateObject("Scripting.FileSystemObject").FolderExists(dotSvn) Then
        isDotSvn = True
    Else
        isDotSvn = False
    End If

'   ���j���[�̕\����Ԃ��X�V
    With Application.CommandBars("Menu Bar").Controls("Subversion(&S)")
        If isDotSvn = False Then
            .Controls("���O�\��(&L)").Enabled = False
            .Controls("����(&D)").Enabled = False
            .Controls("�R�~�b�g(&C)").Enabled = False
            .Controls("�ǉ�(&A)").Enabled = False
            .Controls("���b�N���擾(&O)").Enabled = False
            .Controls("���b�N���J��(&U)").Enabled = False
        Else
             '"Commit" can add unregistered files to repository
            .Controls("�R�~�b�g(&C)").Enabled = True
            
            If isProps Or isPropBase Then
'                .Controls("�R�~�b�g(&C)").Enabled = True
                .Controls("�ǉ�(&A)").Enabled = False
                .Controls("���b�N���擾(&O)").Enabled = True
                .Controls("���b�N���J��(&U)").Enabled = True
            Else
'                .Controls("�R�~�b�g(&C)").Enabled = False
                .Controls("�ǉ�(&A)").Enabled = True
                .Controls("���b�N���擾(&O)").Enabled = False
                .Controls("���b�N���J��(&U)").Enabled = False
            End If
            If isPropBase Then
                .Controls("���O�\��(&L)").Enabled = True
                .Controls("����(&D)").Enabled = True
            Else
                .Controls("���O�\��(&L)").Enabled = False
                .Controls("����(&D)").Enabled = False
            End If
        End If
   End With
End Sub

Private Sub SVNResetToolBar()
    Dim props As String
    Dim propBase As String
    Dim dotSvn As String
    Dim isProps As Boolean
    Dim isPropBase As Boolean
    Dim isDotSvn As Boolean
    Dim myBar As CommandBar
    
'    MsgBox "SVNResetToolBar"
    
    props = ActiveDocument.Path & "\.svn\props\" & ActiveDocument.Name & ".svn-work"
    propBase = ActiveDocument.Path & "\.svn\prop-base\" & ActiveDocument.Name & ".svn-base"
    dotSvn = ActiveDocument.Path & "\.svn"
    
    If CreateObject("Scripting.FileSystemObject").FileExists(props) Then
        isProps = True
    Else
        isProps = False
    End If
    If CreateObject("Scripting.FileSystemObject").FileExists(propBase) Then
        isPropBase = True
    Else
        isPropBase = False
    End If
    If CreateObject("Scripting.FileSystemObject").FolderExists(dotSvn) Then
        isDotSvn = True
    Else
        isDotSvn = False
    End If
    
    '   �c�[���o�[�̕\����Ԃ��X�V
    With Application.CommandBars("Subversion")
        If isDotSvn = False Then
            .Controls("���O�\��").Enabled = False
            .Controls("����").Enabled = False
            .Controls("�R�~�b�g").Enabled = False
            .Controls("�ǉ�").Enabled = False
            .Controls("���b�N���擾").Enabled = False
            .Controls("���b�N���J��").Enabled = False
        Else
            '"Commit" can add unregistered files to repository
            .Controls("�R�~�b�g").Enabled = True
            
            If isProps Or isPropBase Then
'                .Controls("�R�~�b�g").Enabled = True
                .Controls("�ǉ�").Enabled = False
                .Controls("���b�N���擾").Enabled = True
                .Controls("���b�N���J��").Enabled = True
            Else
'                .Controls("�R�~�b�g").Enabled = False
                .Controls("�ǉ�").Enabled = True
                .Controls("���b�N���擾").Enabled = False
                .Controls("���b�N���J��").Enabled = False
            End If
            If isPropBase Then
                .Controls("���O�\��").Enabled = True
                .Controls("����").Enabled = True
            Else
                .Controls("���O�\��").Enabled = False
                .Controls("����").Enabled = False
            End If
        End If
   End With
End Sub

Private Function TSVN(command As String) As Boolean
    Dim strTSVN As String
    Dim strCOM As String
    Dim strPATH As String
    strTSVN = """" & CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\TortoiseSVN\ProcPath") & """"
    strCOM = "/command:" & command & " /notempfile "
    strPATH = "/path:" & """" & ActiveDocument.FullName & """"
    CreateObject("WScript.Shell").Run strTSVN & strCOM & strPATH, , True
'    SVNResetMenu
'    SVNResetToolBar
    TSVN = True 'Return True
End Function

Sub TSVNCI()
  Dim msgActiveDocFileReadOnly As String
  msgActiveDocFileReadOnly = "�R�~�b�g�ł��܂���B�A�N�e�B�u�����͕ύX����Ă��܂����A�t�@�C���������ǂݎ���p�ƂȂ��Ă��܂��B"
  
  Dim ans As Integer
  Dim FilePath As String
  
  ' Test the active document file status
  If ActiveDocFileExistWithMsg() = False Then
    Exit Sub
  End If

  ' Test the folder is under version control
  If IsFolderUnderSVNControlWithMsg = False Then
    Exit Sub
  End If

  If ActiveDocument.Saved = False Then
  'Active Document is modified but not saved yet.
    ' Test the active document file attributes
    If IsActiveDocFileReadOnly = True Then
        MsgBox (msgActiveDocFileReadOnly)
        Exit Sub
    End If
    
    ans = MsgBox("�R�~�b�g��A�t�@�C��������������čēx�J���܂��B" & "'" & ActiveDocument.Name & "'" & "�ւ̕ύX��ۑ����܂����H", vbYesNo)
    If ans = vbYes Then
      ActiveDocument.Save
    End If
  End If

  FilePath = ActiveDocument.FullName

  If TSVN("commit") = True Then
    ActiveDocument.Close
    Documents.Open FileName:=FilePath
  End If
End Sub

Sub TSVNDIFF()
  ' Test the active document file status
  If ActiveDocFileExistWithMsg() = False Then
    Exit Sub
  End If

  ' Test the file is under version control
  If IsFileUnderSVNControlWithMsg = False Then
    Exit Sub
  End If

  TSVN ("diff")
End Sub

Sub TSVNRB()
  TSVN ("repobrowser")
End Sub

Sub TSVNADD()
  Dim ans As Integer
  Dim FilePath As String
  
  If TSVN("add") = True Then
      ans = MsgBox("�ǉ������|�W�g���֔��f���܂���?", vbYesNo)
      If ans = vbYes Then
          TSVNCI
      End If
  End If
End Sub

Sub TSVNLOG()
  ' Test the active document file status
  If ActiveDocFileExistWithMsg() = False Then
    Exit Sub
  End If

 ' Test the file is under version control
  If IsFileUnderSVNControlWithMsg = False Then
    Exit Sub
  End If

  TSVN ("log")
End Sub

Sub TSVNLOCK()
  Dim ans As Integer     'Return value of MessageBox
  Dim FilePath As String 'Backup of the active document file path name

  Dim msgActiveDocFileReadOnly As String 'Message
  msgActiveDocFileReadOnly = "���b�N���擾�ł��܂���B�A�N�e�B�u�����͕ύX����Ă��܂����A�t�@�C���������ǂݎ���p�ƂȂ��Ă��܂��B"

  ' Test the active document file status
  If ActiveDocFileExistWithMsg() = False Then
    Exit Sub
  End If

  ' Test the file is under version control
  If IsFileUnderSVNControlWithMsg = False Then
    Exit Sub
  End If
  
  If ActiveDocument.Saved = False Then
  'Active Document is modified but not saved yet.
    ' Test the active document file attributes
    If IsActiveDocFileReadOnly = True Then
      MsgBox (msgActiveDocFileReadOnly)
      Exit Sub
    End If
    
    ans = MsgBox("���b�N���擾��A�t�@�C��������������čēx�J���܂��B" & "'" & ActiveDocument.Name & "'" & "�ւ̕ύX��ۑ����܂����H", vbYesNo)
    If ans = vbYes Then
      ActiveDocument.Save
    End If
  End If

  FilePath = ActiveDocument.FullName

  If TSVN("lock") = True Then
    ActiveDocument.Close
    Documents.Open FileName:=FilePath
  End If
End Sub

Sub TSVNUNLOCK()
    Dim FilePath As String
    
    FilePath = ActiveDocument.FullName
    
    If TSVN("unlock") = True Then
        ActiveDocument.Close
        Documents.Open FileName:=FilePath
    End If
End Sub

Sub TSVNMENU()
'    SVNResetMenu
'    SVNResetToolBar
End Sub

Private Sub Document_New()
'   MsgBox "Document_New"
  SVNDeleteMenu
  SVNWakeUp
End Sub

Private Sub Document_Open()
'   MsgBox "Document_Open"
  SVNDeleteMenu
  SVNWakeUp
End Sub

':Function:Test whether the active document is saved as a file or not.
':Return value:True=The file exists., False=No file exists.
Function ActiveDocFileExist() As Boolean
  If ActiveDocument.Path = "" Then
    'Judge that no file exists when no path exists.
    ActiveDocFileExist = False
  Else
    ActiveDocFileExist = True
  End If
End Function

':Function:Test whether the active document is saved as a file or not.
'          And this displays error message if the file does't exist.
':Return value:True=The file exists., False=No file exists.
Function ActiveDocFileExistWithMsg() As Boolean

  Dim msgActiveDocFileNotExist As String
  msgActiveDocFileNotExist = "�A�N�e�B�u�����̃t�@�C��������܂���B�������t�@�C���ɕۑ����Ă��炱�̑�����s���Ă��������B"

  If ActiveDocFileExist Then
    ActiveDocFileExistWithMsg = True
  Else
    MsgBox (msgActiveDocFileNotExist)
    ActiveDocFileExistWithMsg = False
  End If
End Function


':Function: Test whether the active document file is read only or not.
':Retrun value: True = Read Only, False = Not Read Only
Function IsActiveDocFileReadOnly() As Boolean
  Dim glFSO As Object  'File System Object
  Set glFSO = CreateObject("Scripting.FileSystemObject")

  If glFSO.GetFile(ActiveDocument.FullName).Attributes And 1 Then
    IsActiveDocFileReadOnly = True 'Return True
  Else
    IsActiveDocFileReadOnly = False 'Return False
  End If
End Function

':Function: Test whether the file exist in the file under SVN version control.
':Return value: True=Under version control, False=Not under version control
Function IsFolderUnderSVNControl() As Boolean
  Dim strDotSvn As String
  strDotSvn = ActiveDocument.Path & "\.svn"

  If CreateObject("Scripting.FileSystemObject").FolderExists(strDotSvn) Then
    IsFolderUnderSVNControl = True 'Return True
  Else
    IsFolderUnderSVNControl = False 'Return False
  End If
End Function


':Function: Test whether the file exist in the folder under SVN version control.
'           And this displays error message if the folder isn't under version control.
':Return value: True=Under version control, False=Not under version control
Function IsFolderUnderSVNControlWithMsg() As Boolean
  Dim msgNotUnderCtrl As String 'Message
  msgNotUnderCtrl = "���̕����t�@�C���̓o�[�W�����R���g���[�����̃t�H���_�ɂ���܂���B"
  
  If IsFolderUnderSVNControl Then
    IsFolderUnderSVNControlWithMsg = True 'Return True
  Else
    MsgBox(msgNotUnderCtrl)
    IsFolderUnderSVNControlWithMsg = False 'Return False
  End If
End Function

Function IsFileUnderSVNControl() As Boolean
  Dim strNotUnderCtrl As String
  strTextBase = ActiveDocument.Path & "\.svn\text-base\" & ActiveDocument.Name & ".svn-base"

  If CreateObject("Scripting.FileSystemObject").FileExists(strTextBase) Then
    IsFileUnderSVNControl = True 'Return True
  Else
    IsFileUnderSVNControl = False 'Return False
  End If
End Function

Function IsFileUnderSVNControlWithMsg() As Boolean
  Dim msgNotUnderCtrl As String
  msgNotUnderCtrl = "���̕����t�@�C���̓o�[�W�����R���g���[������Ă��܂���B"

  If IsFileUnderSVNControl Then
    IsFileUnderSVNControlWithMsg = True 'Return True
  Else
    MsgBox(msgNotUnderCtrl)
    IsFileUnderSVNControlWithMsg = False 'Return False
  End If
End Function


Sub TSVNTEST()
    Dim FilePath As String
    
    MsgBox ("FullNam -- " & ActiveDocument.FullName)
    MsgBox ("Path -- " & ActiveDocument.Path)
    MsgBox ("Nam -- " & ActiveDocument.Name)
    
    If ActiveDocument.Path = "" Then
     MsgBox ("�t�@�C���Ȃ�����v���V�[�W���������")
     Exit Sub
    End If
    
    If ActiveDocument.Path = "" Then
     MsgBox ("�t�@�C���Ȃ�")
    Else
     MsgBox ("�t�@�C������")
    End If
     
End Sub