<?
if(strpos($_SERVER['HTTP_USER_AGENT'],'MSIE'))
	echo '<script language="javascript" src="../lib/scripts/editor.js"></script>';
else
	echo '<script language="javascript" src="../lib/scripts/moz/editor.js"></script>';
?>

<script language="javascript">
function btnSave_onclick(){
	if(test_empty(document.frmForm.txtName.value)){
		alert('Hãy nhập "tên" !');
		document.frmForm.txtName.focus();
		return false;
	}
	if(test_integer(document.frmForm.txtSort.value)){
		alert('"Thứ tự sắp xếp" phải là số !');
		document.frmForm.txtSort.focus();
		return false;
	}
	return true;
}
</script>

<? $errMsg =''?>
<?
$path = "../images/product";
$pathdb = "images/product";
if (isset($_POST['btnSave'])){
	$inchsize      = isset($_POST['txtInchsize']) ? trim($_POST['txtInchsize']) : '';
	$sort          = isset($_POST['txtSort']) ? trim($_POST['txtSort']) : 0;

	$errMsg .= checkUpload($_FILES["txtImage"],".jpg;.gif;.bmp",500*1024,0);
	$errMsg .= checkUpload($_FILES["txtImageLarge"],".jpg;.gif;.bmp",500*1024,0);

	if ($errMsg==''){
		if (!empty($_POST['id'])){
			$oldid = $_POST['id'];
			$sql = "update tbl_inchsize set inchsize='".$inchsize."', sort='".$sort."',date_added=now(), lang='".$lang."' where id='".$oldid."'";
		}else{
			$sql = "insert into tbl_inchsize (inchsize, sort, date_added, lang) values ('".$inchsize."','".$sort."',now(),'".$lang."')";
		}
		if (mysql_query($sql,$conn)){
			if(empty($_POST['id'])) $oldid = mysql_insert_id();
			$r = getRecord("tbl_inchsize","id=".$oldid);
			
			$sqlUpdateField = "";
			
			if ($_POST['chkClearImg']==''){
				$extsmall=getFileExtention($_FILES['txtImage']['name']);
				if (makeUpload($_FILES['txtImage'],"$path/inchsize_s$oldid$extsmall")){
					@chmod("$path/inchsize_s$oldid$extsmall", 0777);
					$sqlUpdateField = " image='$pathdb/inchsize_s$oldid$extsmall' ";
				}
			}else{
				if(file_exists('../'.$r['image'])) @unlink('../'.$r['image']);
				$sqlUpdateField = " image='' ";
			}
			
			if ($_POST['chkClearImgLarge']==''){
				$extlarge=getFileExtention($_FILES['txtImageLarge']['name']);
				if (makeUpload($_FILES['txtImageLarge'],"$path/inchsize_l$oldid$extlarge")){
					@chmod("$path/inchsize_l$oldid$extlarge", 0777);
					if($sqlUpdateField != "") $sqlUpdateField .= ",";
					$sqlUpdateField .= " image_large='$pathdb/inchsize_l$oldid$extlarge' ";
				}
			}else{
				if(file_exists('../'.$r['image_large'])) @unlink('../'.$r['image_large']);
				if($sqlUpdateField != "") $sqlUpdateField .= ",";
				$sqlUpdateField .= " image_large='' ";
			}
			
			if($sqlUpdateField!='')	{
				$sqlUpdate = "update tbl_inchsize set $sqlUpdateField where id='".$oldid."'";
				mysql_query($sqlUpdate,$conn);
			}
		}else{
			$errMsg = "Không thể cập nhật !";
		}
	}

	if ($errMsg == '')
		echo '<script>window.location="./?act=inchsize&cat='.$_REQUEST['cat'].'&page='.$_REQUEST['page'].'&code=1"</script>';
}else{
	if (isset($_GET['id'])){
		$oldid=$_GET['id'];
		$page = $_GET['page'];
		$sql = "select * from tbl_inchsize where id='".$oldid."'";
		if ($result = mysql_query($sql,$conn)) {
			$row=mysql_fetch_array($result);
			$inchsize      = $row['inchsize'];
			$sort          = $row['sort'];
			$date_added    = $row['date_added'];
		}
	}
}

?>

<form method="post" name="frmForm" enctype="multipart/form-data" action="./">
<input type="hidden" name="act" value="inchsize_m">
<input type="hidden" name="id" value="<?=$_REQUEST['id']?>">
<input type="hidden" name="page" value="<?=$_REQUEST['page']?>">
<table border="1" cellpadding="0" cellspacing="0" bordercolor="#0069A8" width="100%">
	<tr>
    	<td width="45%">
    		<table border="0" cellpadding="2" bordercolor="#111111" width="100%" cellspacing="0">
				<tr><td height="10"></td></tr>
			
				<tr>
					<td width="15%" class="smallfont" align="right">Inchsize</td>
					<td width="1%" class="smallfont" align="right"></td>
					<td width="83%" class="smallfont">
						<input value="<?=$inchsize?>" type="text" name="txtInchsize" class="textbox" size="50">
					</td>
				</tr>
				<tr>
					<td width="15%" class="smallfont" align="right">Thứ tự sắp xếp</td>
					<td width="1%" class="smallfont" align="right"></td>
					<td width="83%" class="smallfont">
						<input value="<?=$sort?>" type="text" name="txtSort" class="textbox" size="12">
					</td>
				</tr>			
				<tr>
					<td width="15%" class="smallfont"></td>
					<td width="1%" class="smallfont" align="center"></td>
					<td width="83%" class="smallfont">
						<input type="submit" name="btnSave" VALUE="Cập nhật" class=button onclick="return btnSave_onclick()">
						<input type="reset" class=button value="Nhập lại">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
<? if($errMsg!=''){echo '<p align=center class="err">'.$errMsg.'<br></p>';}?>