#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


GeneralIssueSub(){
Gui, Destroy
Gui, Add, Text,, Case ID?
Gui, Add, Edit, vcase, 
Gui, Add, Text,, Description
Gui, Add, Edit, r10 w380 vdescription
Gui, Add, Text,, Impacted devices or locations?
Gui, Add, Edit, vdeviceloc
Gui, Add, Text,, Impacted service
Gui, Add, Edit, vservice
Gui, Add, Text,, Date and time?
Gui, Add, Edit, vdatetime
Gui, Add, Text,, Done actions?
Gui, Add, Edit, vactions
Gui, Add, Text,, Subcase Destination ; mogelijk niveau hoger
Gui, Add, DropDownList, vshortdes, NAS||Noc 2tr HFC|NOC 2tr IP Backbone OPS|NOC 2tr IP Operations|NOC 2tr Voice-Mobile|NOC 2tr SWITCH|NOC 2tr WIFI|NOC 2tr TV|NOC CD Faults- ;mogelijk niveau	hoger
Gui, Add, Text,, Examples?
Gui, Add, Edit, r4 w380 vExample
Gui, Add, Checkbox,vrepro, reproducible?
Gui, Add, Button, gCopySubTemplate, COPY
Gui, Add, Button, gClose, CLOSE
}

destination naam omzetten

destnameswitcher(sdes){
	if(sdes = "NAS")
	{
	ldes := "TLN_2L_Cloud_and_Infrastructure"
	return ldes
	}
}