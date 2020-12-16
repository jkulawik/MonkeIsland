//Maya ASCII 2018 scene
requires maya "2018";
currentUnit -l meter -a degree -t film;
createNode script -n "upAxisScriptNode";
	setAttr ".b" -type "string" "string $currentAxis = `upAxis -q -ax`; if ($currentAxis != \"y\") { upAxis -ax \"y\"; viewSet -home persp; }";
	setAttr ".st" 2;
connectAttr "defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr "defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr "lightLinker1.msg" ":lightList1.ln[0]";
