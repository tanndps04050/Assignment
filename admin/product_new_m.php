<? // Config
$tableCategoryConfig = 'tbl_product';
$tableConfig         = 'tbl_product_new';
$actConfig           = 'product_new';
?>

<? $errMsg =''?>
<?
if (isset($_POST['btnSave'])) {
	$product_id = $_POST['id'];
	$sort       = $_POST['txtSort'];
	$status     = $_POST['chkStatus']!=''?1:0;
				
	$ten = trim($_POST['txtName']);
	if ($product_id==""){
		$errMsg = 'Hãy chọn sách !';
	}else{
		if (!empty($_POST['id'])){
			$oldid = $_POST['id'];
			$sql = "update ".$tableConfig." set sort=".$sort.", status=".$status.", last_modified=now() where id='".$oldid."'";
		}
		if (mysql_query($sql,$conn)){
			$errMsg = 'Cập nhật thành công.';
			echo "<script>window.location='./?act=".$actConfig."&page=".$_REQUEST['page']."&code=1'</script>";
		}
		else $errMsg = 'Không thể cập nhật !';
	}
}else{
	if (isset($_GET['id'])) {
		$oldid = $_GET['id'];
		$sql = "select * from ".$tableConfig." where id='".$oldid."'";
		if ($result = mysql_query($sql,$conn)){
			$row = mysql_fetch_array($result);
			$sort          = $row['sort'];
			$status        = $row['status'];
			$date_added    = $row['date_added'];
			$last_modified = $row['last_modified'];
			
			$pro = getRecord($tableCategoryConfig, 'id='.$row['product_id']);
			$code          = $pro['code'];
			$name          = $pro['name'];
			$image         = $pro['image'];
			$image_large   = $pro['image_large'];
		}
	}
}
?>

<form method="POST" name="frmForm" action="./" enctype="multipart/form-data">
<input type="hidden" name="act" value="<?=$actConfig?>_m">
<input type="hidden" name="id" value="<?=$_REQUEST['id']?>">
<input type="hidden" name="page" value="<?=$_REQUEST['page']?>">

<table border="1" cellpadding="0" cellspacing="0" bordercolor="#0069A8" width="100%">
	<tr>
    	<td>
			<table border="0" cellpadding="2" bordercolor="#111111" width="100%" cellspacing="0">
				<tr><td height="10"></td></tr>
				<tr>
					<td colspan="3" align="center">
						<table width="100%">
							<? if($image!='' || $image_large!=''){?>
							<tr>
								<td width="15%"></td>
								<td width="40%" align="center" class="smallfont">
<? if ($image!=''){ echo '<img border="0" src="../'.$image.'" width="100"><br><br>Hình (kích thước nhỏ)';}?>
								</td>
								
								<td width="40%" align="center" class="smallfont">
<? if ($image_large!=''){ echo '<img border="0" src="../'.$image_large.'" width="100"><br><br>Hình (kích thước lớn)';}?>
								</td>
								<td width="15%"></td>
							</tr>
							<? }else{echo '<tr><td colspan="3" class="smallfont" align="center">Chưa có hình ảnh !</td></tr>';}?>
							<tr><td colspan="4" height="10"></td></tr>
							<tr><td colspan="4" height="1" bgcolor="#999999"></td></tr>
							<tr><td colspan="4" height="10"></td></tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td width="15%" class="smallfont" align="right">Mã Sách</td>
					<td width="1%" class="smallfont" align="center"></td>
					<td width="83%" class="smallfont">
						<input readonly value="<?=$code?>" type="text" name="txtCode" class="textbox" size="34">
					</td>
				</tr>
				
				<tr>
					<td width="15%" class="smallfont" align="right">Tên Sách</td>
					<td width="1%" class="smallfont" align="center"><font color="#FF0000">*</font></td>
					<td width="83%" class="smallfont">
						<input readonly value="<?=$name?>" type="text" name="txtName" class="textbox" size="34">
					</td>
				</tr>
				
				<tr>
					<td width="15%" class="smallfont" align="right">Thứ tự sắp xếp</td>
					<td width="1%" class="smallfont" align="right"></td>
					<td width="83%" class="smallfont">
						<input value="<?=$sort?>" type="text" name="txtSort" class="textbox" size="34">
					</td>
				</tr>
				
				<tr>
					<td width="15%" class="smallfont" align="right">Không hiển thị</td>
					<td width="1%" class="smallfont" align="center"></td>
					<td width="83%" class="smallfont">
						<input type="checkbox" name="chkStatus" value="on" <?=$status>0?'checked':''?>>
					</td>
				</tr>
				
				<tr>
					<td width="15%" class="smallfont"></td>
					<td width="1%" class="smallfont" align="center"></td>
					<td width="83%" class="smallfont">
						<input type="submit" name="btnSave" VALUE="Cập nhật" class="button" onclick="return btnSave_onclick()">
						<input type="reset" class=button value="Nhập lại">
					</td>
				</tr>
				
			</table>
		</td>
	</tr>
</table>
</form>
<? if($errMsg!=''){echo '<p align=center class="err">'.$errMsg.'<br></p>';}?>