<style type="text/css">
.submenu{
margin-bottom: 0.5em;
}
</style>

<script type="text/javascript">
var persistmenu="yes" //"yes" or "no". Make sure each SPAN content contains an incrementing ID starting at 1 (id="sub1", id="sub2", etc)
var persisttype="sitewide" //enter "sitewide" for menu to persist across site, "local" for this page only

if (document.getElementById){ //DynamicDrive.com change
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); //DynamicDrive.com change
		if(el.style.display != "block"){ //DynamicDrive.com change
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") //DynamicDrive.com change
				ar[i].style.display = "none";
			}
			el.style.display = "block";
		}else{
			el.style.display = "none";
		}
	}
}

function get_cookie(Name) { 
var search = Name + "="
var returnvalue = "";
if (document.cookie.length > 0) {
offset = document.cookie.indexOf(search)
if (offset != -1) { 
offset += search.length
end = document.cookie.indexOf(";", offset);
if (end == -1) end = document.cookie.length;
returnvalue=unescape(document.cookie.substring(offset, end))
}
}
return returnvalue;
}

function onloadfunction(){
if (persistmenu=="yes"){
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=get_cookie(cookiename)
if (cookievalue!="")
document.getElementById(cookievalue).style.display="block"
}
}

function savemenustate(){
var inc=1, blockid=""
while (document.getElementById("sub"+inc)){
if (document.getElementById("sub"+inc).style.display=="block"){
blockid="sub"+inc
break
}
inc++
}
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=(persisttype=="sitewide")? blockid+";path=/" : blockid
document.cookie=cookiename+"="+cookievalue
}

if (window.addEventListener)
window.addEventListener("load", onloadfunction, false)
else if (window.attachEvent)
window.attachEvent("onload", onloadfunction)
else if (document.getElementById)
window.onload=onloadfunction

if (persistmenu=="yes" && document.getElementById)
window.onunload=savemenustate
</script>   

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<table width="214"  border="0" cellspacing="3" cellpadding="0">
<div id="masterdiv">
<?
$catinfo= getRecord("tbl_product_category","id=".$cat);

$parentCode = $_lang=='vn'?'vn':'en';
$sqlParent = "select * from tbl_product_category where status=0 and parent=(select id from tbl_product_category where code='".$parentCode."') order by sort, date_added";
$resultParent = @mysql_query($sqlParent,$conn);

$i=0;
while($rowParent = mysql_fetch_assoc($resultParent)){		
	$i++;
?>
<tr>
	<td valign="middle" class="line_menu_left">
	<div onclick="SwitchMenu('sub<?=$i;?>')">
		<a href="./?frame=product_total&cat1=<?=$rowParent['id']?>" class="text_menu_left" style="cursor:pointer"><?=$rowParent['name']?></a></div></td>
</tr>
<?
if($_REQUEST['frame']=='product_detail'){
	$catinfo = getRecord("tbl_product_category","id = (select parent from tbl_product where id=".$_REQUEST['id'].")");
}
?>	
	<tr>
      	 <td align="left" class="margin_submenu">
				<span class="submenu" id="sub<?=$i;?>">
				
<?
$sqlChild = "select * from tbl_product_category where status=0 and parent='".$rowParent['id']."' order by sort, date_added";
$resultChild = @mysql_query($sqlChild,$conn);
while($rowChild = mysql_fetch_assoc($resultChild)){
?>		
	<a href="./?frame=product&cat=<?=$rowChild['id']?>" class="text_menu_child"><img src="images/icon_1.gif" hspace="2" border="0"/><?=$rowChild['name']?></a><br />
<? }?>		
				</span>
		</td>
	</tr>
<? }?>
</div>
</table>