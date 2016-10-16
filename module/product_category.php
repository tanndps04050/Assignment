<script language="javascript">
function showhideMultiLev(thecell,noChild){
	if (noChild==1) return true;
	if (eval('document.all.'+thecell).style.display!=''){
		eval('document.all.'+thecell).style.display = '';
	}else{
		eval('document.all.'+thecell).style.display = 'none';
	}
	return false;
}
</script>

<style>
.currentNode{
	font-family:Arial;
	color:#FF0000;
	font-size:12px;
	text-decoration:none;
}
.aLev0{
	font-family:Arial;
	color:#FF0000;
	font-size:12px;
	text-decoration:none;
}
.aLev1{
	font-family:Arial;
	color:#333333;
	font-size:12px;
	text-decoration:none;
}
.aLev2{
	font-family:Arial;
	color:#990000;
	font-size:12px;
	text-decoration:none;
}
.aLev3{
	font-family:Arial;
	color:#FF0000;
	font-size:12px;
	text-decoration:none;
}
.aLev4{
	font-family:Arial;
	color:#FF0000;
	font-size:12px;
	text-decoration:none;
}
</style>
<?
$arrBgcolor = array('#000000', '#FFFFFF', '#FFFFFF', '#FFFFFF', '#FFFFFF');
$limitLev = 2;//Level limit

function menuMultiLev($cat=0, $lev=0){
	global $conn, $_lang, $arrBgcolor, $limitLev;
	
	$space = '';
	for($i=0; $i<=$lev; $i++) $space .= '';//Khoảng cách thụt đầu dòng của từng cấp
	
	
	if($cat==0){
		$code = $_lang=='vn'?'vn':'en';
		$sql = "select * from tbl_product_category where status=0 and parent=(select id from tbl_product_category where code='".$code."') order by sort, date_added";
	}else{
		$sql = "select * from tbl_product_category where status=0 and parent='".$cat."' order by sort, date_added";
	}
	
	$result = mysql_query($sql,$conn);
	
	while($row = mysql_fetch_assoc($result)){
		$isHaveChild = isHaveChild("tbl_product_category", $row['id'])?0:1;
		echo '<table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">';
		echo '<tr style="cursor:hand" onclick="return showhideMultiLev(\'menu_category\'+'.$row['id'].','.$isHaveChild.');"><td>';				
		if($cat==0){//level 0
			echo '
<table border="0" width="100%" cellspacing="2" cellpadding="0">
	<tr>
		<td height="20"></td>
		<td style="cursor:pointer" class="line_menu_left"><a href="./?frame=product&cat='.$row['id'].'" class="text_menu_left">'.$row['name'].'</a></td>					
	</tr>	
</table>
			';
		}else{
			$iconHaveChild = !$isHaveChild?'style="background-image:url(images/havechild.gif)"':'';
			if($_REQUEST['frame']=='product_detail'){
				$cat = getRecord("tbl_product","id=".$_REQUEST['id']);
				$currentNode = $row['id']==$cat['parent']?'class="currentNode"':'';
			}else{
				$currentNode = $row['id']==$_REQUEST['cat']?'class="currentNode"':'';
			}
			
			echo '
<table width="96%" border="0" cellpadding="0" cellspacing="0" align="center">
	<tr>
		<td height="20" style="padding-left:2px" valign="middle">
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
               <tr>
                    <td class="margin_submenu">
					<a class="text_menu_child" href="./?frame=product&cat='.$row['id'].'"><img src="images/icon_1.gif" hspace="2" border="0"/>'.$row['name'].'</a></td>				
                </tr>           
             </table>
		</td>
	</tr>
	<tr><td class="line_menu_left" align="center"></td></tr>
</table>
			';
		}
		
		echo '</td></tr>';
		
		if(!$isHaveChild){
			if($_REQUEST['frame']=='product_detail'){
				$catinfo = getRecord("tbl_product_category","id=(select parent from tbl_product where id=".$_REQUEST['id'].")");
				if($catinfo["parent"] != $row["id"]){
					$display = 'style="display:none"';
				}else{
					$display = '';
					openMenu($row["id"]);
				}
				
			}else{
				$catinfo = getRecord("tbl_product_category","id=".$_REQUEST['cat']);
				$display = 'style="display:none"';
			}
			
			echo '<tr id="menu_category'.$row['id'].'" '.$display.'>';
			echo '<td>';
			if($lev<$limitLev) menuMultiLev($row['id'], $lev+1);
			echo '</td></tr>';
		}
		
		echo '</table>';
	}
}

menuMultiLev();

function openMenu($cat){
    global $conn, $_lang;
	$codeRoot = $_lang=='vn'?'vn':'en';
	$sqlRoot = "select * from tbl_product_category where status=0 and parent=1 and code='$codeRoot'";
	$resultRoot = mysql_query($sqlRoot,$conn);
	$rowRoot = mysql_fetch_assoc($resultRoot);
	
	$catinfo = getRecord("tbl_product_category","id=".$cat);
	if ($catinfo['parent'] != $rowRoot['id']){
		echo "<script>showhideMultiLev('menu_category".$catinfo['parent']."');</script>";
		openMenu($catinfo['parent']);
	}
}
if ($_REQUEST['cat']!=''){
	$cat = killInjection($_REQUEST['cat']);
	openMenu($cat);
}?>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
