<? // Config
$tableCategoryConfig = 'tbl_product';
$tableConfig         = 'tbl_product_special';
$actConfig           = 'product_special';
?>

<? $errMsg =''?>
<?
switch ($_GET['action']){
	case 'del' :
		$id = $_GET['id'];
		@$result = mysql_query("delete from ".$tableConfig." where id='".$id."'",$conn);
		if ($result) $errMsg = 'Đã xóa thành công.';
		else $errMsg = 'Không thể xóa dữ liệu !';
		break;
}

if (isset($_POST['btnDel'])) {
	$cnt=0;
	if($_POST['chk']!=''){
		foreach ($_POST['chk'] as $id){
			@$result = mysql_query("delete from ".$tableConfig." where id='".$id."'",$conn);
			if ($result) $cnt++;
		}
		$errMsg = 'Ðã xóa '.$cnt.' phần tử.';
	}else{
		$errMsg = 'Hãy chọn trước khi xóa !';
	}
}

$page = $_GET['page'];
$p=0;
if ($page!='') $p=$page;
$where='1=1'?>
<form method="POST" action="./" name="frmForm" enctype="multipart/form-data">
<input type=hidden name="page" value="<?=$page?>">
<input type="hidden" name="act" value="<?=$actConfig?>">
<?
$pageindex = createPage(countRecord($tableConfig,$where),"./?act=".$actConfig."&cat=".$_REQUEST['cat']."&page=",$MAXPAGE,$page)?>

<? if ($_REQUEST['code']==1) $errMsg = 'Cập nhật thành công.'?>

<table cellspacing="0" cellpadding="0" width="100%">
	<tr><td height="30" class="smallfont">Trang : <?=$pageindex?></td></tr>
</table>

<table border="1" cellpadding="2" style="border-collapse: collapse" bordercolor="#C9C9C9" width="100%">
	<tr>
		<th width="20" class="title"><input type="checkbox" name="chkall" onClick="chkallClick(this);"></th>
		<th class="title" colspan="2" nowrap></th>
		<th width="100" class="title"><a class="title" href="<?=getLinkSort(2)?>">Mã Sách</a></th>
		<th width="250" class="title"><a class="title" href="<?=getLinkSort(2)?>">Tên Sách</a></th>
		<th width="80" class="title"><a class="title" href="<?=getLinkSort(3)?>">Thứ tự sắp xếp</a></th>
		<th width="75" class="title"><a class="title" href="<?=getLinkSort(4)?>">Không hiển thị</a></th>
		<th width="134" class="title"><a class="title" href="<?=getLinkSort(5)?>">Ngày tạo lập</a></th>
		<th width="133" class="title"><a class="title" href="<?=getLinkSort(6)?>">Lần hiệu chỉnh trước</a></th>
		<th width="40" class="title"><a class="title" href="<?=getLinkSort(7)?>">Ngôn ngữ</a></th>
	</tr>
  
<?
$sortby = 'order by date_added';
if ($_REQUEST['sortby']!='') $sortby='order by '.(int)$_REQUEST['sortby'];
$direction=($_REQUEST['direction']==''||$_REQUEST['direction']=='0'?'desc':'');

$sql="select *,DATE_FORMAT(date_added,'%d/%m/%Y %h:%i') as dateAdd,DATE_FORMAT(last_modified,'%d/%m/%Y %h:%i') as dateModify from $tableConfig where $where $sortby $direction limit ".($p*$MAXPAGE).",".$MAXPAGE;
$result=mysql_query($sql,$conn);
$i=0;
while($row=mysql_fetch_array($result)){
	$pro = getRecord($tableCategoryConfig,'id='.$row['product_id']);
	$color = $i++%2 ? '#d5d5d5' : '#e5e5e5'?>
  
	<tr>
		<td bgcolor="<?=$color?>" class="smallfont" align="center">
			<input type="checkbox" name="chk[]" value="<?=$row['id']?>">
		</td>
		<td width="29" align="center" bgcolor="<?=$color?>" class="smallfont">
			<a href="./?act=<?=$actConfig?>_m&id=<?=$row['id']?>&page=<?=$page?>">Sửa</a>		</td>		
		<td width="30" align="center" bgcolor="<?=$color?>" class="smallfont">
			<a onclick="return confirm('Bạn có chắc chắn muốn xóa ?');" 
				href="./?act=<?=$actConfig?>&action=del&page=<?=$_REQUEST['page']?>&id=<?=$row['id']?>">Xóa</a>		</td>
		<td bgcolor="<?=$color?>" class="smallfont"><?=$pro['code']?></td>
		<td bgcolor="<?=$color?>" class="smallfont"><?=$pro['name']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['sort']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center">
			<input type="checkbox" disabled <?=$row['status']>0?'checked':''?>>
		</td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['dateAdd']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['dateModify']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['lang']?></td>
	</tr>
<?
}
?>
</table>

<input type="submit" value="Xóa chọn" name="btnDel" onclick="return confirm('Bạn có chắc chắn muốn xóa ?');" class="button">

</form>
<script language="JavaScript">
function chkallClick(o) {
  	var form = document.frmForm;
	for (var i = 0; i < form.elements.length; i++) {
		if (form.elements[i].type == "checkbox" && form.elements[i].name!="chkall") {
			form.elements[i].checked = document.frmForm.chkall.checked;
		}
	}
}
</script>
<? if($errMsg!=''){echo '<p align=center class="err">'.$errMsg.'<br></p>';}?>

<table width="100%">
	<tr><td height="10"></td></tr>
	<tr><td class="smallfont"><?='Tổng số sách : <b>'.countRecord($tableConfig).'</b>'?></td></tr>
</table>