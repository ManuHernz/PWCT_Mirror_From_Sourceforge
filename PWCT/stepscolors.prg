* #define SC_UserStep_BackColor RGB(0,0,255)
* #define SC_UserStep_ForeColor RGB(255,255,255)

DEFINE CLASS GD_StepsColors as Custom

* 1 = All of the steps are Black & White (No more colors)
* 2 = Colors based on the step type (Created , Generated (Root) , Generated (Allow sub) , Generated )
* 3 = Custom (Colors based on component rules ) we advice the component designer to select the colors based on the component type

nColorSystem = 1

SC_Created_BackColor = RGB(184,134,11)
SC_Created_ForeColor = RGB(255,255,255)

SC_Generated_BackColor = RGB(255,255,255)
SC_Generated_ForeColor = RGB(0,0,0)

SC_GeneratedRoot_BackColor = RGB(0,0,255)
SC_GeneratedRoot_ForeColor = RGB(255,255,255)

SC_GeneratedAllowSub_BackColor = RGB(0,255,0)
SC_GeneratedAllowSub_ForeColor = RGB(0,0,0)

SC_GeneratedLeaf_BackColor = RGB(255,255,255)
SC_GeneratedLeaf_ForeColor = RGB(0,0,0)

SC_GeneratedAllowSubLeaf_BackColor = RGB(0,255,0)
SC_GeneratedAllowSubLeaf_ForeColor = RGB(0,0,0)

PROCEDURE SetStepColor(objGDWindow)

	LOCAL c_TableName,n_Record,nStepType,cOldKey
	LOCAL cIID
	
	c_TableName = ALIAS()
	n_Record = RECNO()
	
	cOldKey =   objGDWindow.container1.oletree.SelectedItem.Key
	
	objGDWindow.container1.oletree.Nodes.item(ALLTRIM(T38->STEPID)).Selected = .T.
	
	nStepType = this.DetermineStepType()
		
	DO CASE
	
		CASE nStepType = 1 && Created
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_Created_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_Created_ForeColor
  			
  			
  	CASE nStepType = 2 && Generated
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_Generated_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_Generated_ForeColor
  			
  	CASE nStepType = 3 && Generated (Root)
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedRoot_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedRoot_ForeColor
  			*objGDWindow.container1.oletree.selectedItem.bold = .t.
  			
  	CASE nStepType = 4 && Generated (AllowSub)
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedAllowSub_BackColor
  			objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedAllowSub_ForeColor
  			
		CASE nStepType = 5 && Generated leaf
		
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedLeaf_BackColor
				objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedLeaf_ForeColor
		
				* hide steps that uses that same font color and backcolor
  			IF this.SC_GeneratedLeaf_BackColor = this.SC_GeneratedLeaf_ForeColor
 					objGDWindow.container1.oletree.Nodes.Remove(objGDWindow.container1.oletree.selectedItem.key)
				ENDIF
 
		CASE nStepType = 6 && Generated Allow Sub & leaf
		
				objGDWindow.container1.oletree.selectedItem.backcolor = this.SC_GeneratedAllowSubLeaf_BackColor
				objGDWindow.container1.oletree.selectedItem.ForeColor = this.SC_GeneratedAllowSubLeaf_ForeColor
		
				* hide steps that uses that same font color and backcolor
  			IF this.SC_GeneratedAllowSubLeaf_BackColor = this.SC_GeneratedAllowSubLeaf_ForeColor
 					objGDWindow.container1.oletree.Nodes.Remove(objGDWindow.container1.oletree.selectedItem.key)
				ENDIF
 
		
  ENDCASE
  

 IF .not. UPPER(ALLTRIM(cOldKey)) == UPPER(ALLTRIM(T38->STEPID))
 
    objGDWindow.container1.oletree.Nodes.item(ALLTRIM(cOldKey)).Selected = .T.
    
 ENDIF
  
  
 SELECT (c_TableName)
 GOTO n_record
  
RETURN nStepType

****************************************************************

PROCEDURE DetermineStepType()

	LOCAL myret
	LOCAL c_TableName,n_Record
	LOCAL cStepID
	
	c_TableName = ALIAS()
	
	SELECT t38
	cStepID = t38->stepid
	n_Record = RECNO()
	
	IF EMPTY(t38->stepinterid)
		 myret = 1 && Created
	ELSE

		 myret = 2 && Generated
		 
		 IF t38->stepinternum = 1 && Root
		 
		 	myret = 3 && Generated (root)
		 	SELECT (c_TableName)
  		 GOTO n_record
  		 RETURN myret
  		 
		 ENDIF
		 
	   IF THIS.CheckNewStep() = .t.
		 	
		 	myret = 4 && Generated (Allow Sub)
		 	
		 	SELECT t38
  	 		 	
		 	LOCATE FOR UPPER(ALLTRIM(t38->parentid)) == UPPER(ALLTRIM(cStepID))
		 	
		 	IF .not. FOUND()
		 		myret = 6 && Generated Allow Sub & Leaf
		 		SELECT (c_TableName)
  		 	GOTO n_record
  		 	RETURN myret
		 	ENDIF
		 	
		 	
		 ENDIF
		 
		 IF myret = 2 
		 
		 	SELECT t38
			 	
		 	LOCATE FOR UPPER(ALLTRIM(t38->parentid)) == UPPER(ALLTRIM(cStepID))
		 	IF .not. FOUND()
		 		myret = 5 && Generated (Leaf)
		 	ENDIF
		 	
		 ENDIF
		 
	ENDIF
	
	SELECT t38
	GOTO n_record
	
  SELECT (c_TableName)
  
  		 
RETURN myret


PROCEDURE CheckNewStep()

LOCAL c_Table,n_Record

LOCAL myret,cHis,cFile,cRules,cInterNum,nMax,x,cLine,cRule

 
c_table = ALIAS()
n_record = RECNO()
 
		myret = .f.
			
		cInterNum = ALLTRIM(STR(t38->stepinternum))
			
		SELECT t46
		
		IF .not. EMPTY(t38->stepinterid)
		
		
			locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))
			
		  IF FOUND()
		  
		  	cHis = f_myhis
		  	cFile = UPPER(ALLTRIM(MLINE(cHis,9)))
		  	
		  	IF FILE(cFile)
		  	
		  		cFile = STRTRAN(cFile,".TRF",".RULES")
		  		
		  		IF FILE(cFile)
		  		
		  			cRules = FILETOSTR(cFile)
		  			cRules = UPPER(cRules)
		  			
		  			nMax = MEMLINES(cRules)
		  			
		  			FOR X = 1 TO nMax
		  			
		  				cLine = MLINE(cRules,x)
		  				cLine = ALLTRIM(cLine)
		  				cRule = "AllowInteraction: " + cInterNum
		  				
		  				IF UPPER(ALLTRIM(cLine)) == UPPER(ALLTRIM(cRule))
		  			 		myret = .t.
		  			 		EXIT
		  			  ENDIF  
		  			  
		  			NEXT
		  					  					
		  		ENDIF
		  		
		  	ENDIF
		  
		  ENDIF

		  
		ENDIF
	
	SELECT (c_table)
	GOTO n_record	
	
RETURN myret

ENDDEFINE