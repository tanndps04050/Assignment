<? $errMsg =''?>
<?
$page = $_GET['page'];
$p=0;
if ($page!='') $p=$page;
$where = '1=1';
if ($_REQUEST['cat']!='') $where='parent='.$_REQUEST['cat']?>
<form method="POST" action="./" name="frmForm" enctype="multipart/form-data">
<input type="hidden" name="page" value="<?=$page?>">
<input type="hidden" name="act" value="config">
<?
$pageindex = createPage(countRecord("tbl_config",$where),'./?act=config&page=',$MAXPAGE,$page)?>

<? if ($_REQUEST['code']==1) $errMsg = 'Cập nhật thành công.'?>

<table cellspacing="0" cellpadding="0" width="100%">
	<tr><td height="30" class="smallfont">Trang : <?=$pageindex?></td></tr>
</table>

<table border="1" cellpadding="2" bordercolor="#C9C9C9" width="100%">
	<tr>
		<th width="20" class="title"><input type="checkbox" name="chkall" onClick="chkallClick(this);"></th>
		<th width="60" class="title"></th>
		<th width="20" class="title">ID</th>
		<th class="title">Mã</th>
		<th class="title">Tên</th>
		<th class="title">Giá trị</th>
		<th width="90" class="title">Ngày tạo lập</th>
		<th width="90" class="title">Lần hiệu chỉnh trước</th>
	</tr>
  
<?
$sortby = 'order by date_added';
if ($_REQUEST['sortby']!='') $sortby='order by '.(int)$_REQUEST['sortby'];
$direction=($_REQUEST['direction']==''||$_REQUEST['direction']=='0'?'desc':'');

$sql="select *,DATE_FORMAT(date_added,'%d/%m/%Y %h:%i') as dateAdd,DATE_FORMAT(last_modified,'%d/%m/%Y %h:%i') as dateModify from tbl_config where $where $sortby $direction limit ".($p*$MAXPAGE).",".$MAXPAGE;
$result=mysql_query($sql,$conn);
$i=0;
while($row=mysql_fetch_array($result)){
	$color = $i++%2 ? '#d5d5d5' : '#e5e5e5'?>
  
	<tr>
		<td bgcolor="<?=$color?>" class="smallfont" align="center">
			<input type="checkbox" name="chk[]" value="<?=$row['id']?>">
		</td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center">
			<a href="./?act=config_m&page=<?=$_REQUEST['page']?>&id=<?=$row['id']?>">Hiệu chỉnh</a>
		</td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['id']?></td>
		<td bgcolor="<?=$color?>" class="smallfont"><?=$row['code']?></td>
		<td bgcolor="<?=$color?>" class="smallfont"><?=$row['name']?></td>
		<td bgcolor="<?=$color?>" class="smallfont"><?=$row['detail']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['dateAdd']?></td>
		<td bgcolor="<?=$color?>" class="smallfont" align="center"><?=$row['dateModify']?></td>
	</tr>
<?
}
?>
</table>
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