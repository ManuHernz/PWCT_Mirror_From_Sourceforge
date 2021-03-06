*---------------------------------------------------------------------------*
* Time : 18:12:34    Date : 12/11/2012
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
Function CUSTFRIENDS_DATA
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

Resistance R_CUSTFRIENDS_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTFRIENDS_DATA_18smart1() code
class CustFriendsClass From SystemDatabase
Data TableName init "Orders_All"
Data nID init 0
Data column init "ordernumber"
Data PrimaryKey init "id"
Data columns init {"FinishDate","orderdate","f_name","OrderName","OrderType","OrderNumber"}
Data nOrderNumber init ""
Data cOrderDate init ""
Data cOrderFinishDate init ""
Data nOrderNumber init 0
Data TableName2 init "OrderItems_All"
Data column2 init "f_name"
Data PrimaryKey2 init "id"
Data ResultPrimaryKeys2 init {}
Data columns2 init {"username","invoicenumber","howknow","f_mobile","f_name"}
Data nitem init 0
Data itemitems init {}
Data itemitemsids init {}
Data TableName3 init "CustFriends_All"
Data column3 init "f_name"
Data PrimaryKey3 init "id"
Data ResultPrimaryKeys3 init {}
Data columns3 init {"username","recordstatus","howknow","f_mobile","f_name"}
Data FindColumns init {"OrderNumber","OrderType","OrderName","f_name","OrderDate","FinishDate"}
Data FindTitles init {"��� ������","��� ������","��� ������","��� �������","����� ������","����� ��������"}
Data FindColumns2 init {"f_name","f_mobile"}
Data FindColumns3 init {"f_name","f_mobile"}
Data FindTitles2 init {"�����","������"}
Data FindTitles3 init {"�����","������"}
Data SelectCust init false
Data SelectCustIndex init 0
Data HowKnowItems init {}
Data HowKnowItemsIDS init {}
Data nHowKnow init 0
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
Method search2
Method SaveRecord2
Method QualityNotes
Method QualityNotesSave
Method SearchAdd
Method BeforeSearch
Method GetSearchValue
Method settimer
Method ShowOpinion
Method itemchange
Method mobilechange
Method delrecord2
Method addrecord2
Method search3
Method CheckFind
Method CheckFind2
Method CheckFind3
Method AutoCustRec
EndClass
Method showwindow Class CustFriendsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustFriendsWindow )
DEFINE WINDOW CustFriendsWindow ;
AT 10 ,10 ;
WIDTH 1054 ;
HEIGHT 701 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "���������� �� ����" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 43 ,3 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1030 HEIGHT 190
@ 246 ,47 IMAGE image2;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 950 HEIGHT 230
@ 619 ,33 BUTTONEX btnClose;
CAPTION "�����";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:closewindow()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 6 ,3 LABEL lblTitle ;
VALUE "                                                                                         ���������� �� ����            " ;
WIDTH 1030 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,256 TEXTBOX textnamebrowse;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,150 BUTTONEX btn1browse;
CAPTION "���";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,23 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 1000 ;
HEIGHT 130 ;
HEADERS {"����� ��������","����� ������","��� �������","��� ������","��� ������","��� ������"};
WIDTHS {180,120,200,250,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 52 ,664 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 230 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 256 ,256 TEXTBOX textNamebrowse2;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 255 ,150 BUTTONEX btn1browse2;
CAPTION "���";
ON CLICK self:search2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 289 ,73 GRID Grid1browse2;
ON CHANGE self:search3  ;
WIDTH 890 ;
HEIGHT 140 ;
HEADERS {"��� ������","��� �����"," ��� ���� �� ������","����","��� ������"};
WIDTHS {150,150,150,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 255 ,664 COMBOBOX comboFind2;
ON CHANGE self:CheckFind2()  ;
WIDTH 230 ;
HEIGHT 200;
ITEMS self:FindTitles2 ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("customers","f_name",@self:ItemItems,"id",@self:ItemItemsIDS)
@ 436 ,891 LABEL lblitems ;
VALUE "��� ��������" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 436 ,669 COMBOBOX comboitem;
ON CHANGE self:itemchange()  ;
WIDTH 210 ;
HEIGHT 100;
ITEMS self:itemitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 436 ,624 LABEL lblItemUnit ;
VALUE "����" ;
WIDTH 40 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 436 ,443 TEXTBOX textCustomerMobile;
ON ENTER self:mobilechange()  ;
HEIGHT 30 ;
WIDTH 160 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 485 ,319 TEXTBOX textNamebrowse3;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 485 ,213 BUTTONEX btn1browse3;
CAPTION "���";
ON CLICK self:search3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 523 ,164 GRID Grid1browse3;
WIDTH 846 ;
HEIGHT 130 ;
HEADERS {"��� ������","���� �������","�������","����","��� ��������"};
WIDTHS {150,150,100,150,250} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 489 ,727 COMBOBOX comboFind3;
ON CHANGE self:CheckFind3()  ;
WIDTH 230 ;
HEIGHT 200;
ITEMS self:FindTitles3 ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 524 ,33 BUTTONEX btnDel2;
CAPTION "��� ��������";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 437 ,71 BUTTONEX btnadd2;
CAPTION "����� ��������";
ON CLICK self:addrecord2()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
myout = RightToLeftControl ( "CustFriendsWindow","comboItem" )
myout = self:LoadLookupTable("howknow","howknow",@self:howknowItems,"id",@self:howknowItemsIDS)
@ 436 ,368 LABEL lblhowknow ;
VALUE "�������" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 436 ,211 COMBOBOX combohowknow;
ON CHANGE self:itemchange()  ;
WIDTH 140 ;
HEIGHT 100;
ITEMS self:howknowitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

CustFriendsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
CustFriendsWindow.Timer1.Enabled := false
myout = self:search2()
IF self:SelectCust = True
CustFriendsWindow.ComboItem.Value := Self:SelectCustIndex
Self:SelectCust := False
Self:SelectCustIndex := 0
ENDIF
ACTIVATE WINDOW CustFriendsWindow
EndIF

Return 0
Method UserInterface2Class Class CustFriendsClass
Return 0
Method Class2ADO Class CustFriendsClass
Return 0
Method ADO2Class Class CustFriendsClass
self:nOrderNumber := self:oRS:fields:item(alltrim("ordernumber")):value
Return 0
Method Class2UserInterface Class CustFriendsClass
Return 0
Method ClearRecord Class CustFriendsClass
Return 0
Method OpenDataWindow Class CustFriendsClass
Local nvalue,myout
nvalue := CustFriendsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
myout = self:search2()
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustFriendsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustFriendsClass
myout = self:search()
CustFriendsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class CustFriendsClass
IF p1 = 1
ENDIF
IF p1 = 2
ENDIF
self:OperationMode := p1
Return 0
Method search2 Class CustFriendsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustFriendsWindow.textNamebrowse2.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName2 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column2+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
CustFriendsWindow.grid1browse2.DeleteAllItems ( )
CustFriendsWindow.grid1browse3.DeleteAllItems ( )
self:ResultPrimaryKeys2 := {}
CustFriendsWindow.grid1browse2.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim(self:column2)):value
temp_array := {}
mymax2  = LEN(self:columns2)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(alltrim(self:columns2[x2])):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustFriendsWindow.grid1browse2.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey2)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys2 , vid)
oRS:MOVENEXT()
Next
CustFriendsWindow.grid1browse2.Value := 1
ELSE
ENDIF
oRS:Close()
myout = self:search3()
Return 0
Method SaveRecord2 Class CustFriendsClass
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
myitem := CustFriendsWindow.Grid1Browse2.item(CustFriendsWindow.Grid1Browse2.value)
myitem[1] := CustFriendsWindow.ComboQuality.Value
myitem[1] := self:QualityItems[myitem[1]]
CustFriendsWindow.Grid1Browse2.item(CustFriendsWindow.Grid1Browse2.Value) := myitem
Return 0
Method QualityNotes Class CustFriendsClass
Local nvalue,oRS,nMax,cNotes
nvalue := CustFriendsWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
cNotes := oRS:fields:item(alltrim("CustomerDisposeNotes")):value
oRS:Close()
if !iswindowdefined( winQualityNotes )
DEFINE WINDOW winQualityNotes ;
AT 10 ,10 ;
WIDTH 772 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "������� ������" ;
MODAL ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {236,233,216}

@ 1 ,2 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 760 HEIGHT 390
@ 12 ,666 LABEL lbl1 ;
VALUE "�������" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 11 ,17 EDITBOX edit1;
WIDTH 630 ;
HEIGHT 370;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 401 ,17 BUTTONEX btn1;
CAPTION "�����";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:QualityNotesSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

winQualityNotes.Edit1.Value := cNotes
WinQualityNotes.Center ( )
ACTIVATE WINDOW winQualityNotes
EndIF

ELSE
oRS:Close()
ENDIF
ENDIF
Return 0
Method QualityNotesSave Class CustFriendsClass
Local nvalue,oRS,nMax,cNotes
cNotes := WinQualityNotes.Edit1.Value
nvalue := CustFriendsWindow.Grid1Browse2.Value
IF nvalue > 0
nvalue := self:resultprimarykeys2[nvalue]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_all where id = " + nvalue,self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:fields:item(alltrim("CustomerDisposeNotes")):value := cNotes
oRS:UPDATE()
ENDIF
oRS:Close()
ENDIF
winQualityNotes.Release ( )
Return 0
Method ShowOpinion Class CustFriendsClass
myout = self:Ado2Class()
myout = self:Class2UserInterface()
Return 0
Method mobilechange Class CustFriendsClass
Local myrs,MYVALUE,vname
TVALUE := CustFriendsWindow.textcustomermobile.Value
IF empty(alltrim(TVALUE))
Return 0
ENDIF
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from customers where f_mobile = '" + tvalue +"'",self:oCon,3,3 )
mymax := myRS:RecordCount
IF mymax > 0
myvalue := myRS:fields:item(alltrim("id")):value
vname := myRS:fields:item(alltrim("f_name")):value
myvalue = self:LookupIDToIndex(myvalue,@self:itemItemsids)
CustFriendsWindow.Comboitem.Value := myvalue
MyOut := MSGBOX("����� " + vname,"�� ������ ������ �� ���� ��� ������")
ELSE
MyOut := MSGBOX("��� ������ ������ ��� ���� �� ����� ���������","����")
ENDIF
myRS:Close()
Return 0
Method itemchange Class CustFriendsClass
Local myrs,MYVALUE
TVALUE := CustFriendsWindow.Comboitem.Value
IF TVALUE = 0
Return 0
ENDIF
MYVALUE := self:ItemItemsids[TVALUE]
myrs := TOLEAUTO():NEW( "ADODB.Recordset" )
MYVALUE = STR ( MYVALUE )
myrs:CursorType := 1
myrs:ActiveConnection := self:oCon
myrs:open ( "Select * from customers where id = " + myvalue,self:oCon,3,3 )
myvalue := myRS:fields:item(alltrim("f_mobile")):value
CustFriendsWindow.textCustomerMobile.Value := myvalue
myRS:Close()
Return 0
Method DelRecord2 Class CustFriendsClass
Local nvalue,myout
nvalue := CustFriendsWindow.grid1browse3.Value
IF nvalue > 0
nvalue := self:resultprimarykeys3[nvalue]
myout = self:oCon:execute("delete from custfriends where id = " + nvalue)
myout = self:search3()
ELSE
MyOut := MSGBOX("���� ������ ��� ���� ���� ����","����")
ENDIF
Return 0
Method AddRecord2 Class CustFriendsClass
Local oRS,nValue,nMax
IF CustFriendsWindow.Grid1Browse.Value = 0
CustFriendsWindow.Grid1Browse.Value := 1
ENDIF
IF self:nOrderNumber > 0
self:nItem := CustFriendsWindow.ComboItem.Value
self:nItem := self:ItemItemsids[self:nItem]
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All where orderid = " + str(self:nOrderNumber) + " and friendid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX("�� ����� ��� �������� �����","����")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from orderitems_All where orderid = " + str(self:nOrderNumber) +" and customerid = " + str(self:nItem),self:oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGBOX("�������� ��� ����� �������� �� ������","����")
oRS:Close()
Return 0
ENDIF
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from CustFriends_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(alltrim("Orderid")):value := self:nOrderNumber
oRS:fields:item(alltrim("Friendid")):value := self:nItem
oRS:fields:item(alltrim("recordstatusid")):value := 2
oRS:fields:item(alltrim("customerid")):value := 0
oRS:fields:item(alltrim("username")):value := UsersObject:EnteredUserName
oRS:fields:item(alltrim("empid")):value := UsersObject:EnteredEmployeeID
self:nHowKnow := CustFriendsWindow.ComboHowKnow.Value
self:nHowKnow := self:howknowItemsids[self:nhowknow]
oRS:fields:item(alltrim("CustomerHowKnow")):value := self:nHowKnow
oRS:UPDATE()
oRS:Close()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Production_All",self:oCon,3,3 )
oRS:ADDNEW()
oRS:fields:item(alltrim("employeeid")):value := UsersObject:EnteredEmployeeID
oRS:fields:item(alltrim("ordernumberID")):value := self:resultprimarykeys[CustFriendsWindow.Grid1Browse.Value]
oRS:fields:item(alltrim("noofpcs")):value := " ����� �������� " + self:ItemItems[CustFriendsWindow.ComboItem.Value]
oRS:fields:item(alltrim("finishtime")):value := time()
oRS:fields:item(alltrim("dateofinput")):value := alltrim(dtoc(date()))
oRS:UPDATE()
oRS:Close()
myout = self:Search3()
ELSE
MyOut := MSGBOX("��� �� ���� ������ ����","���")
ENDIF
Return 0
Method search3 Class CustFriendsClass
Local oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName := CustFriendsWindow.textNamebrowse3.Value
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
CustFriendsWindow.grid1browse3.DeleteAllItems ( )
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from "+self:tableName3 +" where orderid = "+str(self:nOrderNumber)+"  and "+self:column3+" like '" + cName + "%'",self:oCon,3,3 )
mymax := oRS:RecordCount
self:ResultPrimaryKeys3 := {}
CustFriendsWindow.grid1browse3.Value := 0
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim(self:column3)):value
temp_array := {}
mymax2  = LEN(self:columns3)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(alltrim(self:columns3[x2])):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
CustFriendsWindow.grid1browse3.AddItem ( temp_array )
vid := oRS:fields:item(alltrim(self:PrimaryKey3)):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys3 , vid)
oRS:MOVENEXT()
Next
ELSE
ENDIF
oRS:Close()
Return 0
Method CheckFind Class CustFriendsClass
Local nIndex
nIndex := CustFriendsWindow.ComboFind.Value
Self:Column := Self:FindColumns[nIndex]
Return 0
Method CheckFind2 Class CustFriendsClass
Local nIndex
nIndex := CustFriendsWindow.ComboFind2.Value
Self:Column2 := Self:FindColumns2[nIndex]
Return 0
Method CheckFind3 Class CustFriendsClass
Local nIndex
nIndex := CustFriendsWindow.ComboFind3.Value
Self:Column3 := Self:FindColumns3[nIndex]
Return 0
Method AutoCustRec(nCustID) Class CustFriendsClass
Local nIndex
nIndex = self:LookupIDToIndex(VAL(nCustID),@self:ItemItemsids)
Self:SelectCust := True
Self:SelectCustIndex := nIndex
myout = self:ShowWindow()
Return 0
Method closewindow Class CustFriendsClass
myout = self:disconnect()
CustFriendsWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustFriendsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustFriendsWindow )
myout = self:showrecord()
CustFriendsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustFriendsClass
CustFriendsWindow.grid1browse.DeleteAllItems ( )
CustFriendsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustFriendsClass
CustFriendsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class CustFriendsClass
cName := CustFriendsWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class CustFriendsClass
CustFriendsWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*
