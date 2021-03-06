*---------------------------------------------------------------------------*
* Time : 16:30:07    Date : 10/17/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadUSERPERMISSIONS_DATA
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_USERPERMISSIONS_DATA_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_USERPERMISSIONS_DATA_19art1() code
class UserPermissionsClass From SystemDatabase
Data cWindowName init "UsersPermissionsWindow"
Data TableName init "UserPermissionsValues_All"
Data column init "PermissionName"
Data PrimaryKey init "id"
Data columns init {"Status","PermissionName"}
Data nID init 0
Data cName init ""
Data ColTitles init {"������","��������"}
Data ColWidths init {85,430}
Data Userid init 0
Data complexsearch init ""
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method MySet
Method ReverseStatus
EndClass
Method showwindow Class UserPermissionsClass
IF .not. self:Userid = 0
self:complexsearch := " and Userid = " + alltrim(str(self:Userid))
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 798 ;
HEIGHT 574 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "������� ����������" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 780 HEIGHT 500
@ 205 ,16 BUTTONEX btnClose;
CAPTION "�����";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   ������� ����������" ;
WIDTH 780 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 46 ,675 LABEL lbl1browse ;
VALUE "��������" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 43 ,129 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 540 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 44 ,16 BUTTONEX btn1browse;
CAPTION "���";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 76 ,128 GRID Grid1browse;
ON DBLCLICK self:ReverseStatus()  ;
WIDTH 540 ;
HEIGHT 450 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 102 ,16 BUTTONEX btnset1;
CAPTION "���";
ON CLICK self:MySet("1")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 149 ,16 BUTTONEX btnset2;
CAPTION "��";
ON CLICK self:MySet("2")  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW
&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
EndIF
Return 0
Method UserInterface2Class Class UserPermissionsClass
Return 0
Method Class2ADO Class UserPermissionsClass
self:oRS:fields:item("PermissionValue"):value := self:cName
Return 0
Method ADO2Class Class UserPermissionsClass
self:cName := self:oRS:fields:item("PermissionValue"):value
self:cName = STR ( self:cName )
Return 0
Method Class2UserInterface Class UserPermissionsClass
Return 0
Method ClearRecord Class UserPermissionsClass
self:cName := ""
Return 0
Method setmode(p1) Class UserPermissionsClass
IF p1 = 1
&(self:cWindowName).btnclose.Enabled := false
ENDIF
IF p1 = 2
&(self:cWindowName).btnclose.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method MySet(p1) Class UserPermissionsClass
nValue := &(self:cWindowName).Grid1Browse.Value
IF nValue = 0
MyOut := MSGBOX("You must select permission first","Sorry")
Return 0
ENDIF
myout = self:OpenDataWindow()
self:cName := p1
myout = self:UserInterface2Class()
myout = self:Class2Ado()
self:oRS:UPDATE()
IF p1 = "1"
&(self:cWindowName).Grid1Browse.cell(nValue,1) := "���"
ELSE
&(self:cWindowName).Grid1Browse.cell(nValue,1) := "��"
ENDIF
nMax := &(self:cWindowName).Grid1browse.ItemCount
IF nValue < nMax
&(self:cWindowName).Grid1Browse.Value := nValue+1
ENDIF
IF nValue = nMax .and. .not. nMax = 1
&(self:cWindowName).Grid1Browse.Value := 1
ENDIF
myout = self:OpenDataWindow()
Return 0
Method ReverseStatus Class UserPermissionsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
tValue := &(self:cWindowName).Grid1Browse.cell(nValue,1)
IF tvalue = "���"
myout = self:myset("2")
ELSE
myout = self:myset("1")
ENDIF
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method closewindow Class UserPermissionsClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class UserPermissionsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class UserPermissionsClass
&(self:cWindowName).grid1Browse.DeleteAllItems ( )
&(self:cWindowName).grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class UserPermissionsClass
&(self:cWindowName).grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class UserPermissionsClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class UserPermissionsClass
cName := &(self:cWindowName).textNameBrowse.Value
Return cName
Method OpenDataWindow Class UserPermissionsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class UserPermissionsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class UserPermissionsClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0

End Of Resistance

*-------------------------------------------------------------------*
