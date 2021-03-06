*---------------------------------------------------------------------------*
* Time : 18:20:27    Date : 12/11/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function LOCATIONS_DATA
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_LOCATIONS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOCATIONS_DATA_18smart1() code
class LocationsClass From SYSTEMDATABASE
Data TableName init "Locations"
Data cid init ""
Data cCountry init ""
Data column init "Location"
Data PrimaryKey init "id"
Data columns init {"ID","Location"}
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
Method mytimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class LocationsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( LocationsWindow )
DEFINE WINDOW LocationsWindow ;
AT 10 ,10 ;
WIDTH 774 ;
HEIGHT 426 ;
ON INIT self:search()  ;
ICON "PWCTICON" ;
TITLE "����� �������" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 40 ,5 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\BACK.jpg";
STRETCH ;
WIDTH 750 HEIGHT 296
@ 350 ,370 BUTTONEX btnFirst;
CAPTION "�����";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,243 BUTTONEX btnNext;
CAPTION "����";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,180 BUTTONEX btnLast;
CAPTION "�����";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,12 BUTTONEX btnClose;
CAPTION "�����";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,307 BUTTONEX btnPrev;
CAPTION "����";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,105 BUTTONEX btnDel;
CAPTION "���";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 350 ,522 BUTTONEX btnsave;
CAPTION "���";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,435 BUTTONEX btncancel;
CAPTION "�����";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,602 BUTTONEX btnedit;
CAPTION "�����";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 350 ,677 BUTTONEX btnadd;
CAPTION "�����";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,4 LABEL lblTitle ;
VALUE "                                                             ����� �������" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,128,0}
@ 281 ,417 LABEL lblCountry ;
VALUE "������" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 279 ,215 TEXTBOX textCountry;
HEIGHT 30 ;
WIDTH 190 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 53 ,593 LABEL lbl1browse ;
VALUE "������" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 53 ,167 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,58 BUTTONEX btn1browse;
CAPTION "���";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 99 ,165 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 410 ;
HEIGHT 160 ;
HEADERS {"���","������"};
WIDTHS {100,200} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:mytimer()
END WINDOW

LocationsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
LocationsWindow.Timer1.Enabled := false
ACTIVATE WINDOW LocationsWindow
EndIF

Return 0
Method UserInterface2Class Class LocationsClass
self:cCountry := LocationsWindow.textCountry.Value
Return 0
Method Class2ADO Class LocationsClass
self:oRS:fields:item(alltrim("Location")):value := self:cCountry
Return 0
Method ADO2Class Class LocationsClass
self:cCountry := self:oRS:fields:item(alltrim("Location")):value
Return 0
Method Class2UserInterface Class LocationsClass
LocationsWindow.textCountry.Value := self:cCountry
Return 0
Method ClearRecord Class LocationsClass
self:cCountry := ""
Return 0
Method OpenDataWindow Class LocationsClass
Local nvalue,myout
nvalue := LocationsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class LocationsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class LocationsClass
myout = self:search()
LocationsWindow.Timer1.Enabled := false
Return 0
Method closewindow Class LocationsClass
myout = self:disconnect()
LocationsWindow.Release ( )
Return 0
Method setmode(p1) Class LocationsClass
IF p1 = 1
LocationsWindow.btnfirst.Enabled := false
LocationsWindow.btnnext.Enabled := false
LocationsWindow.btnprev.Enabled := false
LocationsWindow.btnlast.Enabled := false
LocationsWindow.btndel.Enabled := false
LocationsWindow.btnclose.Enabled := false
LocationsWindow.btnsave.Enabled := true
LocationsWindow.btncancel.Enabled := true
LocationsWindow.btnedit.Enabled := false
LocationsWindow.btnadd.Enabled := false
LocationsWindow.textCountry.Enabled := true
ENDIF
IF p1 = 2
LocationsWindow.btnfirst.Enabled := true
LocationsWindow.btnnext.Enabled := true
LocationsWindow.btnprev.Enabled := true
LocationsWindow.btnlast.Enabled := true
LocationsWindow.btndel.Enabled := true
LocationsWindow.btnclose.Enabled := true
LocationsWindow.btnsave.Enabled := false
LocationsWindow.btncancel.Enabled := false
LocationsWindow.btnedit.Enabled := true
LocationsWindow.btnadd.Enabled := true
LocationsWindow.textCountry.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method AutoGotoRecord Class LocationsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( LocationsWindow )
myout = self:showrecord()
LocationsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class LocationsClass
LocationsWindow.grid1browse.DeleteAllItems ( )
LocationsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class LocationsClass
LocationsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class LocationsClass
LocationsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class LocationsClass
cName := LocationsWindow.textNamebrowse.Value
Return cName



End Of Resistance

*-------------------------------------------------------------------*
