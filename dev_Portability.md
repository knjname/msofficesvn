To increase portability

  * Make class module to hide workbook and document object.
  * Make global string variables of message.
  * Module configuration

> - ThisWorkbook module
> > Handlers to install and uninstall menu and command bar
> > Codes vary from office applications

> - Module1
> > Common codes through office applications

Port Word add-in to PowerPoint add-in

  * Object change

| Word | PowerPoint |
|:-----|:-----------|
| Documents | Presentaions |
| Document | Presentaion |
| ActiveDocument | ActivePresentaion |

  * ActivePresentation.Name


> It the presentaion name in title bar.
> So, it seems to be unstable that it contains extension or not.

  * Position of documents

> - Current position

> absPageNum = Selection.Information(wdActiveEndAdjustedPageNumber)

> absLinePos = Selection.Information(wdFirstCharacterLineNumber)

> - Jump to the specified position

> Selection.GoTo What:=wdGoToPage, Which:=wdGoToFirst, Count:=absPageNum, Name:=""

> Selection.GoTo What:=wdGoToLine, Which:=wdGoToRelative, Count:=(absLinePos - 1), Name:=""

  * Position of Presentations

> - Current position

> absPageNum = ActiveWindow.Selection.SlideRange.SlideIndex

> - Jump to the specified position

> ActiveWindow.View.GotoSlide Index:=absPageNum

  * Start and End add-in function

| Word | PowerPoint |
|:-----|:-----------|
| AutoExec() | Auto\_Open() |
| AutoExit() | Auto\_Close() |

  * Dose really needs to register to HKEY\_CURRENT\_USER ?

  * Close method

> Word : SaveOptions argument is available.

> PPT: No argument is available. Use Presentation.Saved property to control alert in closing a file.

  * Application.DisplayAlerts

> Word : WdAlertLevel can be set.
> WdAlertLevel
> Constant Value
> wdAlertsAll  -1
> wdAlertsMessageBox  -2
> wdAlertsNone  0

> PPT : PpAlertLevel can be set.
> PpAlertLevel
> Constant Value
> ppAlertsAll  2
> ppAlertsNone  1