*!* I suggest that we perhaps put these defines into some related tables
*!* These really serve as information for what is available in the way of
*!* Classes, Parts, and States which is in a 
*!* heirarchical relationship Parent, Child, GrandChild in a sense

*!* The defines that have been commented out are duplicates, but I left them
*!* in for informational purposes. They show what States are available for which Parts

*************************************
#DEFINE CLASS_WINDOW STRCONV("Window"+0h00,5)
*************************************
#DEFINE WP_CAPTION 1
#DEFINE CS_ACTIVE 1
#DEFINE CS_INACTIVE 2
#DEFINE CS_DISABLED 3

#DEFINE WP_SMALLCAPTION 2
*!* #DEFINE CS_ACTIVE 1
*!*	#DEFINE CS_INACTIVE 2
*!*	#DEFINE CS_DISABLED 3

#DEFINE WP_MINCAPTION 3
#DEFINE MNCS_ACTIVE 1
#DEFINE MNCS_INACTIVE 2
#DEFINE MNCS_DISABLED 3

#DEFINE WP_SMALLMINCAPTION 4
*!*	#DEFINE MNCS_ACTIVE 1
*!*	#DEFINE MNCS_INACTIVE 2
*!*	#DEFINE MNCS_DISABLED 3

#DEFINE WP_MAXCAPTION 5
#DEFINE MXCS_ACTIVE 1
#DEFINE MXCS_INACTIVE 2
#DEFINE MXCS_DISABLED 3

#DEFINE WP_SMALLMAXCAPTION 6
*!*	#DEFINE MXCS_ACTIVE 1
*!*	#DEFINE MXCS_INACTIVE 2
*!*	#DEFINE MXCS_DISABLED 3

#DEFINE WP_FRAMELEFT 7
#DEFINE FS_ACTIVE 1
#DEFINE FS_INACTIVE 2

#DEFINE WP_FRAMERIGHT 8
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_FRAMEBOTTOM 9
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMELEFT 10
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMERIGHT 11
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMEBOTTOM 12
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SYSBUTTON 13
#DEFINE SBS_NORMAL 1
#DEFINE SBS_HOT 2
#DEFINE SBS_PUSHED 3
#DEFINE SBS_DISABLED 4

#DEFINE WP_MDISYSBUTTON 14
*!*	#DEFINE SBS_NORMAL 1
*!*	#DEFINE SBS_HOT 2
*!*	#DEFINE SBS_PUSHED 3
*!*	#DEFINE SBS_DISABLED 4

#DEFINE WP_MINBUTTON 15
#DEFINE MINBS_NORMAL 1
#DEFINE MINBS_HOT 2
#DEFINE MINBS_PUSHED 3
#DEFINE MINBS_DISABLED 4

#DEFINE WP_MDIMINBUTTON 16
*!*	#DEFINE MINBS_NORMAL 1
*!*	#DEFINE MINBS_HOT 2
*!*	#DEFINE MINBS_PUSHED 3
*!*	#DEFINE MINBS_DISABLED 4

#DEFINE WP_MAXBUTTON 17
#DEFINE MAXBS_NORMAL 1
#DEFINE MAXBS_HOT 2
#DEFINE MAXBS_PUSHED 3
#DEFINE MAXBS_DISABLED 4

#DEFINE WP_CLOSEBUTTON 18
#DEFINE CBS_NORMAL 1
#DEFINE CBS_HOT 2
#DEFINE CBS_PUSHED 3
#DEFINE CBS_DISABLED 4

#DEFINE WP_SMALLCLOSEBUTTON 19
*!*	#DEFINE CBS_NORMAL 1
*!*	#DEFINE CBS_HOT 2
*!*	#DEFINE CBS_PUSHED 3
*!*	#DEFINE CBS_DISABLED 4

#DEFINE WP_MDICLOSEBUTTON 20
*!*	#DEFINE CBS_NORMAL 1
*!*	#DEFINE CBS_HOT 2
*!*	#DEFINE CBS_PUSHED 3
*!*	#DEFINE CBS_DISABLED 4

#DEFINE WP_RESTOREBUTTON 21
#DEFINE RBS_NORMAL 1
#DEFINE RBS_HOT 2
#DEFINE RBS_PUSHED 3
#DEFINE RBS_DISABLED 4

#DEFINE WP_MDIRESTOREBUTTON 22
*!*	#DEFINE RBS_NORMAL 1
*!*	#DEFINE RBS_HOT 2
*!*	#DEFINE RBS_PUSHED 3
*!*	#DEFINE RBS_DISABLED 4

#DEFINE WP_HELPBUTTON 23
#DEFINE HBS_NORMAL 1
#DEFINE HBS_HOT 2
#DEFINE HBS_PUSHED 3
#DEFINE HBS_DISABLED 4

#DEFINE WP_MDIHELPBUTTON 24
*!*	#DEFINE HBS_NORMAL 1
*!*	#DEFINE HBS_HOT 2
*!*	#DEFINE HBS_PUSHED 3
*!*	#DEFINE HBS_DISABLED 4

#DEFINE WP_HORZSCROLL 25
#DEFINE HSS_NORMAL 1
#DEFINE HSS_HOT 2
#DEFINE HSS_PUSHED 3
#DEFINE HSS_DISABLED 4

#DEFINE WP_HORZTHUMB 26
#DEFINE HTS_NORMAL 1
#DEFINE HTS_HOT 2
#DEFINE HTS_PUSHED 3
#DEFINE HTS_DISABLED 4

#DEFINE WP_VERTSCROLL 27
#DEFINE VSS_NORMAL 1
#DEFINE VSS_HOT 2
#DEFINE VSS_PUSHED 3
#DEFINE VSS_DISABLED 4

#DEFINE WP_VERTTHUMB 28
#DEFINE VTS_NORMAL 1
#DEFINE VTS_HOT 2
#DEFINE VTS_PUSHED 3
#DEFINE VTS_DISABLED 4

#DEFINE WP_DIALOG 29
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_CAPTIONSIZINGTEMPLATE 30
*!* #DEFINE CS_ACTIVE 1
*!* #DEFINE CS_INACTIVE 2
*!* #DEFINE CS_DISABLED 3

#DEFINE WP_SMALLCAPTIONSIZINGTEMPLATE 31
*!* #DEFINE CS_ACTIVE 1
*!* #DEFINE CS_INACTIVE 2
*!* #DEFINE CS_DISABLED 3

#DEFINE WP_FRAMELEFTSIZINGTEMPLATE 32
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMELEFTSIZINGTEMPLATE 33
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_FRAMERIGHTSIZINGTEMPLATE 34
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMERIGHTSIZINGTEMPLATE 35
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_FRAMEBOTTOMSIZINGTEMPLATE 36
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

#DEFINE WP_SMALLFRAMEBOTTOMSIZINGTEMPLATE 37
*!* #DEFINE FS_ACTIVE 1
*!* #DEFINE FS_INACTIVE 2

*************************************
#DEFINE CLASS_BUTTON STRCONV("Button"+0h00,5)
*************************************
#DEFINE BP_PUSHBUTTON 1
#DEFINE PBS_NORMAL 1
#DEFINE PBS_HOT 2
#DEFINE PBS_PRESSED 3
#DEFINE PBS_DISABLED 4
#DEFINE PBS_DEFAULTED 5

#DEFINE BP_RADIOBUTTON 2
#DEFINE RBS_UNCHECKEDNORMAL 1
#DEFINE RBS_UNCHECKEDHOT 2
#DEFINE RBS_UNCHECKEDPRESSED 3
#DEFINE RBS_UNCHECKEDDISABLED 4
#DEFINE RBS_CHECKEDNORMAL 5
#DEFINE RBS_CHECKEDHOT 6
#DEFINE RBS_CHECKEDPRESSED 7
#DEFINE RBS_CHECKEDDISABLED 8

#DEFINE BP_CHECKBOX 3
#DEFINE CBS_UNCHECKEDNORMAL 1
#DEFINE CBS_UNCHECKEDHOT 2
#DEFINE CBS_UNCHECKEDPRESSED 3
#DEFINE CBS_UNCHECKEDDISABLED 4
#DEFINE CBS_CHECKEDNORMAL 5
#DEFINE CBS_CHECKEDHOT 6
#DEFINE CBS_CHECKEDPRESSED 7
#DEFINE CBS_CHECKEDDISABLED 8
#DEFINE CBS_MIXEDNORMAL 9
#DEFINE CBS_MIXEDHOT 10
#DEFINE CBS_MIXEDPRESSED 11
#DEFINE CBS_MIXEDDISABLED 12

#DEFINE BP_GROUPBOX 4
#DEFINE GBS_NORMAL 1
#DEFINE GBS_DISABLED 2

#DEFINE BP_USERBUTTON 5
#DEFINE DEF_NORMAL 1


*************************************
#DEFINE CLASS_REBAR STRCONV("Rebar"+0h00,5)
*************************************
#DEFINE RP_GRIPPER 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE RP_GRIPPERVERT 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE RP_BAND 3
*!* #DEFINE DEF_NORMAL 1

#DEFINE RP_CHEVRON 4
#DEFINE CHEVS_NORMAL 1
#DEFINE CHEVS_HOT 2
#DEFINE CHEVS_PRESSED 3

#DEFINE RP_CHEVRONVERT 5
*!*	#DEFINE CHEVS_NORMAL 1
*!*	#DEFINE CHEVS_HOT 2
*!*	#DEFINE CHEVS_PRESSED 3


*************************************
#DEFINE CLASS_TOOLBAR STRCONV("Toolbar"+0h00,5)
*************************************
#DEFINE TP_BUTTON 1
#DEFINE TS_NORMAL 1
#DEFINE TS_HOT 2
#DEFINE TS_PRESSED 3
#DEFINE TS_DISABLED 4
#DEFINE TS_CHECKED 5
#DEFINE TS_HOTCHECKED 6

#DEFINE TP_DROPDOWNBUTTON 2
*!*	#DEFINE TS_NORMAL 1
*!*	#DEFINE TS_HOT 2
*!*	#DEFINE TS_PRESSED 3
*!*	#DEFINE TS_DISABLED 4
*!*	#DEFINE TS_CHECKED 5
*!*	#DEFINE TS_HOTCHECKED 6

#DEFINE TP_SPLITBUTTON 3
*!*	#DEFINE TS_NORMAL 1
*!*	#DEFINE TS_HOT 2
*!*	#DEFINE TS_PRESSED 3
*!*	#DEFINE TS_DISABLED 4
*!*	#DEFINE TS_CHECKED 5
*!*	#DEFINE TS_HOTCHECKED 6

#DEFINE TP_SPLITBUTTONDROPDOWN 4
*!*	#DEFINE TS_NORMAL 1
*!*	#DEFINE TS_HOT 2
*!*	#DEFINE TS_PRESSED 3
*!*	#DEFINE TS_DISABLED 4
*!*	#DEFINE TS_CHECKED 5
*!*	#DEFINE TS_HOTCHECKED 6

#DEFINE TP_SEPARATOR 5
*!*	#DEFINE TS_NORMAL 1

#DEFINE TP_SEPARATORVERT 6
*!*	#DEFINE TS_NORMAL 1


*************************************
#DEFINE CLASS_STATUS STRCONV("Status"+0h00,5)
*************************************
#DEFINE SP_PANE 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE SP_GRIPPERPANE 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE SP_GRIPPER 3
*!* #DEFINE DEF_NORMAL 1


*************************************
#DEFINE CLASS_MENU STRCONV("Menu"+0h00,5)
*************************************
#DEFINE MP_MENUITEM 1
#DEFINE MS_NORMAL 1
#DEFINE MS_SELECTED 2
#DEFINE MS_DEMOTED 3

#DEFINE MP_MENUDROPDOWN 2
*!*	#DEFINE MS_NORMAL 1
*!*	#DEFINE MS_SELECTED 2
*!*	#DEFINE MS_DEMOTED 3

#DEFINE MP_MENUBARITEM 3
*!*	#DEFINE MS_NORMAL 1
*!*	#DEFINE MS_SELECTED 2
*!*	#DEFINE MS_DEMOTED 3

#DEFINE MP_MENUBARDROPDOWN 4
*!*	#DEFINE MS_NORMAL 1
*!*	#DEFINE MS_SELECTED 2
*!*	#DEFINE MS_DEMOTED 3

#DEFINE MP_CHEVRON 5
*!*	#DEFINE MS_NORMAL 1
*!*	#DEFINE MS_SELECTED 2
*!*	#DEFINE MS_DEMOTED 3

#DEFINE MP_SEPARATOR 6
*!*	#DEFINE MS_NORMAL 1

*************************************
#DEFINE CLASS_LISTVIEW STRCONV("ListView"+0h00,5)
*************************************
#DEFINE LVP_LISTITEM 1
#DEFINE LIS_NORMAL 1
#DEFINE LIS_HOT 2
#DEFINE LIS_SELECTED 3
#DEFINE LIS_DISABLED 4
#DEFINE LIS_SELECTEDNOTFOCUS 5

#DEFINE LVP_LISTGROUP 2
*!*	#DEFINE LIS_NORMAL 1
*!*	#DEFINE LIS_HOT 2
*!*	#DEFINE LIS_SELECTED 3
*!*	#DEFINE LIS_DISABLED 4
*!*	#DEFINE LIS_SELECTEDNOTFOCUS 5

#DEFINE LVP_LISTDETAIL 3
*!*	#DEFINE LIS_NORMAL 1
*!*	#DEFINE LIS_HOT 2
*!*	#DEFINE LIS_SELECTED 3
*!*	#DEFINE LIS_DISABLED 4
*!*	#DEFINE LIS_SELECTEDNOTFOCUS 5

#DEFINE LVP_LISTSORTEDDETAIL 4
*!*	#DEFINE LIS_NORMAL 1
*!*	#DEFINE LIS_HOT 2
*!*	#DEFINE LIS_SELECTED 3
*!*	#DEFINE LIS_DISABLED 4
*!*	#DEFINE LIS_SELECTEDNOTFOCUS 5

#DEFINE LVP_EMPTYTEXT 5
*!*	#DEFINE LIS_NORMAL 1
*!*	#DEFINE LIS_HOT 2
*!*	#DEFINE LIS_SELECTED 3
*!*	#DEFINE LIS_DISABLED 4
*!*	#DEFINE LIS_SELECTEDNOTFOCUS 5


*************************************
#DEFINE CLASS_HEADER STRCONV("Header"+0h00,5)
*************************************
#DEFINE HP_HEADERITEM 1
#DEFINE HIS_NORMAL 1
#DEFINE HIS_HOT 2
#DEFINE HIS_PRESSED 3

#DEFINE HP_HEADERITEMLEFT 2
#DEFINE HILS_NORMAL 1
#DEFINE HILS_HOT 2
#DEFINE HILS_PRESSED 3

#DEFINE HP_HEADERITEMRIGHT 3
#DEFINE HIRS_NORMAL 1
#DEFINE HIRS_HOT 2
#DEFINE HIRS_PRESSED 3

#DEFINE HP_HEADERSORTARROW 4
#DEFINE HSAS_SORTEDUP 1
#DEFINE HSAS_SORTEDDOWN 2


*************************************
#DEFINE CLASS_PROGRESS STRCONV("Progress"+0h00,5)
*************************************
#DEFINE PP_BAR 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE PP_BARVERT 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE PP_CHUNK 3
*!* #DEFINE DEF_NORMAL 1

#DEFINE PP_CHUNKVERT 4
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_TAB STRCONV("Tab"+0h00,5)
*************************************
#DEFINE TABP_TABITEM 1
#DEFINE TIS_NORMAL 1
#DEFINE TIS_HOT 2
#DEFINE TIS_SELECTED 3
#DEFINE TIS_DISABLED 4
#DEFINE TIS_FOCUSED 5

#DEFINE TABP_TABITEMLEFTEDGE 2
#DEFINE TILES_NORMAL 1
#DEFINE TILES_HOT 2
#DEFINE TILES_SELECTED 3
#DEFINE TILES_DISABLED 4
#DEFINE TILES_FOCUSED 5

#DEFINE TABP_TABITEMRIGHTEDGE 3
#DEFINE TIRES_NORMAL 1
#DEFINE TIRES_HOT 2
#DEFINE TIRES_SELECTED 3
#DEFINE TIRES_DISABLED 4
#DEFINE TIRES_FOCUSED 5

#DEFINE TABP_TABITEMBOTHEDGE 4
#DEFINE TIBES_NORMAL 1
#DEFINE TIBES_HOT 2
#DEFINE TIBES_SELECTED 3
#DEFINE TIBES_DISABLED 4
#DEFINE TIBES_FOCUSED 5

#DEFINE TABP_TOPTABITEM 5
#DEFINE TTIS_NORMAL 1
#DEFINE TTIS_HOT 2
#DEFINE TTIS_SELECTED 3
#DEFINE TTIS_DISABLED 4
#DEFINE TTIS_FOCUSED 5

#DEFINE TABP_TOPTABITEMLEFTEDGE 6
#DEFINE TTILES_NORMAL 1
#DEFINE TTILES_HOT 2
#DEFINE TTILES_SELECTED 3
#DEFINE TTILES_DISABLED 4
#DEFINE TTILES_FOCUSED 5

#DEFINE TABP_TOPTABITEMRIGHTEDGE 7
#DEFINE TTIRES_NORMAL 1
#DEFINE TTIRES_HOT 2
#DEFINE TTIRES_SELECTED 3
#DEFINE TTIRES_DISABLED 4
#DEFINE TTIRES_FOCUSED 5

#DEFINE TABP_TOPTABITEMBOTHEDGE 8
#DEFINE TTIBES_NORMAL 1
#DEFINE TTIBES_HOT 2
#DEFINE TTIBES_SELECTED 3
#DEFINE TTIBES_DISABLED 4
#DEFINE TTIBES_FOCUSED 5

#DEFINE TABP_PANE 9
*!* #DEFINE DEF_NORMAL 1

#DEFINE TABP_BODY 10
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_TRACKBAR STRCONV("Trackbar"+0h00,5)
*************************************
#DEFINE TKP_TRACK 1
#DEFINE TKS_NORMAL 1

#DEFINE TKP_TRACKVERT 2
#DEFINE TRVS_NORMAL 1

#DEFINE TKP_THUMB 3
#DEFINE TUS_NORMAL 1
#DEFINE TUS_HOT 2
#DEFINE TUS_PRESSED 3
#DEFINE TUS_FOCUSED 4
#DEFINE TUS_DISABLED 5

#DEFINE TKP_THUMBBOTTOM 4
#DEFINE TUBS_NORMAL 1
#DEFINE TUBS_HOT 2
#DEFINE TUBS_PRESSED 3
#DEFINE TUBS_FOCUSED 4
#DEFINE TUBS_DISABLED 5

#DEFINE TKP_THUMBTOP 5
#DEFINE TUTS_NORMAL 1
#DEFINE TUTS_HOT 2
#DEFINE TUTS_PRESSED 3
#DEFINE TUTS_FOCUSED 4
#DEFINE TUTS_DISABLED 5

#DEFINE TKP_THUMBVERT 6
#DEFINE TUVS_NORMAL 1
#DEFINE TUVS_HOT 2
#DEFINE TUVS_PRESSED 3
#DEFINE TUVS_FOCUSED 4
#DEFINE TUVS_DISABLED 5

#DEFINE TKP_THUMBLEFT 7
#DEFINE TUVLS_NORMAL 1
#DEFINE TUVLS_HOT 2
#DEFINE TUVLS_PRESSED 3
#DEFINE TUVLS_FOCUSED 4
#DEFINE TUVLS_DISABLED 5

#DEFINE TKP_THUMBRIGHT 8
#DEFINE TUVRS_NORMAL 1
#DEFINE TUVRS_HOT 2
#DEFINE TUVRS_PRESSED 3
#DEFINE TUVRS_FOCUSED 4
#DEFINE TUVRS_DISABLED 5

#DEFINE TKP_TICS 9
#DEFINE TSS_NORMAL 1

#DEFINE TKP_TICSVERT 10
#DEFINE TSVS_NORMAL 1

*************************************
#DEFINE CLASS_TOOLTIP STRCONV("Tooltip"+0h00,5)
*************************************
#DEFINE TTP_STANDARD 1
#DEFINE TTSS_NORMAL 1
#DEFINE TTSS_LINK 2

#DEFINE TTP_STANDARDTITLE 2
*!*	#DEFINE TTSS_NORMAL 1
*!*	#DEFINE TTSS_LINK 2

#DEFINE TTP_BALLOON 3
#DEFINE TTBS_NORMAL 1
#DEFINE TTBS_LINK 2

#DEFINE TTP_BALLOONTITLE 4
*!* #DEFINE DEF_NORMAL 1

#DEFINE TTP_CLOSE 5
#DEFINE TTCS_NORMAL 1
#DEFINE TTCS_HOT 2
#DEFINE TTCS_PRESSED 3


*************************************
#DEFINE CLASS_TREEVIEW STRCONV("Treeview"+0h00,5)
*************************************
#DEFINE TVP_TREEITEM 1
#DEFINE TREIS_NORMAL 1
#DEFINE TREIS_HOT 2
#DEFINE TREIS_SELECTED 3
#DEFINE TREIS_DISABLED 4
#DEFINE TREIS_SELECTEDNOTFOCUS 5

#DEFINE TVP_GLYPH 2
#DEFINE GLPS_CLOSED 1
#DEFINE GLPS_OPENED 2

#DEFINE TVP_BRANCH 3
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_SPIN STRCONV("Spin"+0h00,5)
*************************************
#DEFINE SPNP_UP 1
#DEFINE UPS_NORMAL 1
#DEFINE UPS_HOT 2
#DEFINE UPS_PRESSED 3
#DEFINE UPS_DISABLED 4

#DEFINE SPNP_DOWN 2
#DEFINE DNS_NORMAL 1
#DEFINE DNS_HOT 2
#DEFINE DNS_PRESSED 3
#DEFINE DNS_DISABLED 4

#DEFINE SPNP_UPHORZ 3
#DEFINE UPHZS_NORMAL 1
#DEFINE UPHZS_HOT 2
#DEFINE UPHZS_PRESSED 3
#DEFINE UPHZS_DISABLED 4

#DEFINE SPNP_DOWNHORZ 4
#DEFINE DNHZS_NORMAL 1
#DEFINE DNHZS_HOT 2
#DEFINE DNHZS_PRESSED 3
#DEFINE DNHZS_DISABLED 4

*************************************
#DEFINE CLASS_PAGE STRCONV("Page"+0h00,5)
*************************************
#DEFINE PGRP_UP 1
*!*	#DEFINE UPS_NORMAL 1
*!*	#DEFINE UPS_HOT 2
*!*	#DEFINE UPS_PRESSED 3
*!*	#DEFINE UPS_DISABLED 4

#DEFINE PGRP_DOWN 2
*!*	#DEFINE DNS_NORMAL 1
*!*	#DEFINE DNS_HOT 2
*!*	#DEFINE DNS_PRESSED 3
*!*	#DEFINE DNS_DISABLED 4

#DEFINE PGRP_UPHORZ 3
*!*	#DEFINE UPHZS_NORMAL 1
*!*	#DEFINE UPHZS_HOT 2
*!*	#DEFINE UPHZS_PRESSED 3
*!*	#DEFINE UPHZS_DISABLED 4

#DEFINE PGRP_DOWNHORZ 4
*!*	#DEFINE DNHZS_NORMAL 1
*!*	#DEFINE DNHZS_HOT 2
*!*	#DEFINE DNHZS_PRESSED 3
*!*	#DEFINE DNHZS_DISABLED 4

*************************************
#DEFINE CLASS_SCROLLBAR STRCONV("Scrollbar"+0h00,5)
*************************************
#DEFINE SBP_ARROWBTN 1
#DEFINE ABS_UPNORMAL 1
#DEFINE ABS_UPHOT 2
#DEFINE ABS_UPPRESSED 3
#DEFINE ABS_UPDISABLED 4
#DEFINE ABS_DOWNNORMAL 5
#DEFINE ABS_DOWNHOT 6
#DEFINE ABS_DOWNPRESSED 7
#DEFINE ABS_DOWNDISABLED 8
#DEFINE ABS_LEFTNORMAL 9
#DEFINE ABS_LEFTHOT 10
#DEFINE ABS_LEFTPRESSED 11
#DEFINE ABS_LEFTDISABLED 12
#DEFINE ABS_RIGHTNORMAL 13
#DEFINE ABS_RIGHTHOT 14
#DEFINE ABS_RIGHTPRESSED 15
#DEFINE ABS_RIGHTDISABLED 16

#DEFINE SBP_THUMBBTNHORZ 2
#DEFINE SCRBS_NORMAL 1
#DEFINE SCRBS_HOT 2
#DEFINE SCRBS_PRESSED 3
#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_THUMBBTNVERT 3
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_LOWERTRACKHORZ 4
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_UPPERTRACKHORZ 5
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_LOWERTRACKVERT 6
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_UPPERTRACKVERT 7
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_GRIPPERHORZ 8
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_GRIPPERVERT 9
*!*	#DEFINE SCRBS_NORMAL 1
*!*	#DEFINE SCRBS_HOT 2
*!*	#DEFINE SCRBS_PRESSED 3
*!*	#DEFINE SCRBS_DISABLED 4

#DEFINE SBP_SIZEBOX 10
#DEFINE SZB_RIGHTALIGN 1
#DEFINE SZB_LEFTALIGN 2

*************************************
#DEFINE CLASS_EDIT STRCONV("Edit"+0h00,5)
*************************************
#DEFINE EP_EDITTEXT 1
#DEFINE ETS_NORMAL 1
#DEFINE ETS_HOT 2
#DEFINE ETS_SELECTED 3
#DEFINE ETS_DISABLED 4
#DEFINE ETS_FOCUSED 5
#DEFINE ETS_READONLY 6
#DEFINE ETS_ASSIST 7

#DEFINE EP_CARET 2
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_COMBOBOX STRCONV("ComboBox"+0h00,5)
*************************************
#DEFINE CP_DROPDOWNBUTTON 1
#DEFINE CBXS_NORMAL 1
#DEFINE CBXS_HOT 2
#DEFINE CBXS_PRESSED 3
#DEFINE CBXS_DISABLED 4

*************************************
#DEFINE CLASS_CLOCK STRCONV("Clock"+0h00,5)
*************************************
#DEFINE CLP_TIME 1
#DEFINE CLS_NORMAL 1

*************************************
#DEFINE CLASS_TRAYNOTIFY STRCONV("TrayNotify"+0h00,5)
*************************************
#DEFINE TNP_BACKGROUND 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE TNP_ANIMBACKGROUND 2
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_TASKBAR STRCONV("TaskBar"+0h00,5)
*************************************
#DEFINE TBP_BACKGROUNDBOTTOM 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_BACKGROUNDRIGHT 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_BACKGROUNDTOP 3
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_BACKGROUNDLEFT 4
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_SIZINGBARBOTTOM 5
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_SIZINGBARRIGHT 6
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_SIZINGBARTOP 7
*!* #DEFINE DEF_NORMAL 1

#DEFINE TBP_SIZINGBARLEFT 8
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_TASKBAND STRCONV("TaskBand"+0h00,5)
*************************************
#DEFINE TDP_GROUPCOUNT 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE TDP_FLASHBUTTON 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE TDP_FLASHBUTTONGROUPMENU 3
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_STARTPANEL STRCONV("StartPanel"+0h00,5)
*************************************
#DEFINE SPP_USERPANE 1
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_MOREPROGRAMS 2
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_MOREPROGRAMSARROW 3
#DEFINE SPS_NORMAL 1
#DEFINE SPS_HOT 2
#DEFINE SPS_PRESSED 3

#DEFINE SPP_PROGLIST 4
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_PROGLISTSEPARATOR 5
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_PLACESLIST 6
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_PLACESLISTSEPARATOR 7
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_LOGOFF 8
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_LOGOFFBUTTONS 9
#DEFINE SPLS_NORMAL 1
#DEFINE SPLS_HOT 2
#DEFINE SPLS_PRESSED 3

#DEFINE SPP_USERPICTURE 10
*!* #DEFINE DEF_NORMAL 1

#DEFINE SPP_PREVIEW 11
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_EXPLORERBAR STRCONV("ExplorerBar"+0h00,5)
*************************************
#DEFINE EBP_HEADERBACKGROUND1
*!* #DEFINE DEF_NORMAL 1

#DEFINE EBP_HEADERCLOSE 2
#DEFINE EBHC_NORMAL 1
#DEFINE EBHC_HOT 2
#DEFINE EBHC_PRESSED 3

#DEFINE EBP_HEADERPIN 3
#DEFINE EBHP_NORMAL 1
#DEFINE EBHP_HOT 2
#DEFINE EBHP_PRESSED 3
#DEFINE EBHP_SELECTEDNORMAL 4
#DEFINE EBHP_SELECTEDHOT 5
#DEFINE EBHP_SELECTEDPRESSED 6

#DEFINE EBP_IEBARMENU 4
#DEFINE EBM_NORMAL 1
#DEFINE EBM_HOT 2
#DEFINE EBM_PRESSED 3

#DEFINE EBP_NORMALGROUPBACKGROUND 5
*!* #DEFINE DEF_NORMAL 1

#DEFINE EBP_NORMALGROUPCOLLAPSE 6
#DEFINE EBNGC_NORMAL 1
#DEFINE EBNGC_HOT 2
#DEFINE EBNGC_PRESSED 3

#DEFINE EBP_NORMALGROUPEXPAND 7
#DEFINE EBNGE_NORMAL 1
#DEFINE EBNGE_HOT 2
#DEFINE EBNGE_PRESSED 3

#DEFINE EBP_NORMALGROUPHEAD 8
*!* #DEFINE DEF_NORMAL 1

#DEFINE EBP_SPECIALGROUPBACKGROUND 9
*!* #DEFINE DEF_NORMAL 1

#DEFINE EBP_SPECIALGROUPCOLLAPSE 10
#DEFINE EBSGC_NORMAL 1
#DEFINE EBSGC_HOT 2
#DEFINE EBSGC_PRESSED 3

#DEFINE EBP_SPECIALGROUPEXPAND 11
#DEFINE EBSGE_NORMAL 1
#DEFINE EBSGE_HOT 2
#DEFINE EBSGE_PRESSED 3

#DEFINE EBP_SPECIALGROUPHEAD 12
*!* #DEFINE DEF_NORMAL 1

*************************************
#DEFINE CLASS_MENUBAND STRCONV("MenuBand"+0h00,5)
*************************************
#DEFINE MDP_NEWAPPBUTTON 1
#DEFINE MDS_NORMAL 1
#DEFINE MDS_HOT 2
#DEFINE MDS_PRESSED 3
#DEFINE MDS_DISABLED 4
#DEFINE MDS_CHECKED 5
#DEFINE MDS_HOTCHECKED 6

#DEFINE MDP_SEPERATOR 1
*!*	#DEFINE MDS_NORMAL 1
*!*	#DEFINE MDS_HOT 2
*!*	#DEFINE MDS_PRESSED 3
*!*	#DEFINE MDS_DISABLED 4
*!*	#DEFINE MDS_CHECKED 5
*!*	#DEFINE MDS_HOTCHECKED 6

*************************************
#DEFINE CLASS_GLOBALS STRCONV("GLOBALS"+0h00,5)
*************************************
#DEFINE GP_BORDER 1
#DEFINE BSS_FLAT 1
#DEFINE BSS_RAISED 2
#DEFINE BSS_SUNKEN 3

#DEFINE GP_LINEHORZ 2
#DEFINE LHS_FLAT 1
#DEFINE LHS_RAISED 2
#DEFINE LHS_SUNKEN 3

#DEFINE GP_LINEVERT 3
#DEFINE LVS_FLAT 1
#DEFINE LVS_RAISED 2
#DEFINE LVS_SUNKEN 3