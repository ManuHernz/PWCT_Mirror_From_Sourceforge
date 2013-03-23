PARAMETERS pmyfile
PUBLIC myfiletoopen
myfiletoopen = ""

IF PCOUNT() = 1
myfiletoopen = pmyfile
ENDIF

SYS_VFP_DEBUG = .T.

IF SYS_VFP_DEBUG = .F.
application.DefaultFilePath = JUSTPATH(application.ServerName)
ENDIF

DECLARE INTEGER ShellExecute IN shell32.dll ; 
  INTEGER hndWin, STRING cAction, STRING cFileName, ; 
  STRING cParams, STRING cDir, INTEGER nShowWin

ON SHUTDOWN myquit()
SET ESCAPE OFF
SET CENTURY on
SET SYSMENU to

IF SYS_VFP_DEBUG = .F.
_screen.visible = .F.
_screen.Caption = "Programming Without Coding Technology"
_SCREEN.Icon = '\BMP\SUN.ICO'
ENDIF

IF SYSMETRIC(2) = 480 .and. SYSMETRIC(1) = 640
MESSAGEBOX("Sorry the application can't work in resoultion 640*480",0,"DoubleS")
CANCEL
ENDIF
SET MEMOWIDTH TO 300
SET SAFETY OFF 
SET CPDIALOG OFF 
SET RESOURCE OFF 
SET BELL off
SET LOGERRORS OFF
SET TYPEAHEAD TO 50
SET TALK OFF
SET ECHO OFF 
SET CONSOLE OFF
IF FILE(APPLICATION.DefaultFilePath+"\langpath.txt")
sys_lp = FILETOSTR(APPLICATION.DefaultFilePath+"\langpath.txt")
ELSE
sys_lp = "\syslang.txt"
ENDIF
IF FILE(APPLICATION.DefaultFilePath+sys_lp)
sys_msg = FILETOSTR(APPLICATION.DefaultFilePath+sys_lp)
ENDIF
PUBLIC FS_ID,FS_TD,FS_SW
FS_ID = 0
FS_TD = 0
FS_SW = 0
PUBLIC s_mem3
s_mem3 = .f.
ON KEY label F1 S_MENU = "DoubleS Framework"

PUBLIC s_lastactivewindow && used to help file-open,save,save as & close to know that active window
			 s_lastactivewindow = 1 && Server Units Window
PUBLIC Sys_selsercaller && 1 = goal designer 2 =  form designer
Sys_selsercaller = 1

PUBLIC Sys_ShowDoubleS
PUBLIC sys_soundobject
PUBLIC sys_goalstimeframe
PUBLIC sys_rpwionlygenonly && rpwi only - generate source code only
sys_rpwionlygenonly = .f.

PUBLIC SYS_TMUSESOUND
SYS_TMUSESOUND = .T.


DIMENSION sys_goalstimeframe(1,2)
sys_goalstimeframe(1,1) = "" && Goal Name
sys_goalstimeframe(1,2) = 0  && Interaction ID - The Time Machine


PUBLIC sys_filetopasstoanothervpl
sys_filetopasstoanothervpl = ""


IF FILE(application.DefaultFilePath + "\chpath.txt")

Sys_ShowDoubleS = .f.
ELSE

Sys_ShowDoubleS = .T.

IF EMPTY(ALLTRIM(myfiletoopen))
myfiletoopen = JUSTPATH(application.ServerName)+"\StartApp\Start.SSF"
endif

ENDIF

PUBLIC S_TOOL
S_TOOL = ""

PUBLIC obj_avoiderrors
SET PROCEDURE TO avoiderrors.prg,stepscolors.prg

obj_avoiderrors = CREATEOBJECT("GD_AvoidErrors")

obj_StepsColors = CREATEOBJECT("GD_StepsColors")

IF .not. FILE(application.DefaultFilePath + "\logo.off")
DO FORM welcome 
ELSE
do form DoubleS
ENDIF

read events
CANCEL

FUNCTION myquit
LOCAL mymsg

IF FS_SW = 1
	mymsg = MESSAGEBOX("Save Changes ? ",4+4096,"Question",150000)
	IF mymsg = 6
		S_TOOL = "SAVE"
		serverbrain()
	ENDIF
ENDIF

close database
QUIT

RETURN




