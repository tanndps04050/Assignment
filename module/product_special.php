<?
$row = 5;
$col = 1;

$p1=0;
if ($_REQUEST['p1']!='') $p1=$_REQUEST['p1'];
$sql = "select tbl_product.*,tbl_product_special.sort as sort from tbl_product_special,tbl_product where tbl_product_special.lang='".$_lang."' and tbl_product_special.product_id = tbl_product.id order by tbl_product_special.sort limit ".$row*$col*$p1.",".$row*$col;
$result = @mysql_query($sql,$conn);

$total = countRecord("tbl_product_special","status=0 and lang='".$_lang."'");
if($total==0){
?>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<table align="center" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr><td height="10"></td></tr>
	<tr>
		<td align="center">
			<font color="#333333"><b><?=$_lang=="vn"?'Sách đang cập nhật !':'Products are being updated !'?></b></font>
		</td>
	</tr>
	<tr><td height="10"></td></tr>
</table>
<?
}else{
?>

<table align="center" cellSpacing="0" cellPadding="0" width="100%" border="0">
<?
for($i=0; $i<$row; $i++){
?>
	<tr>
	  <td class="line_sp_banchay">
<?
	for($j=0; $j<$col&&$pro=mysql_fetch_assoc($result); $j++){				
			if($pro['image_large']!=''){
				$image=$pro['image_large'];
				}
				else{
				$image=$pro['image'];
				}
				$size = getimagesize($image);
				$height = $size[1]+50;
				$width = $size[0]+20;	?>
				
					<table width="100%" border="0" cellspacing="0" cellpadding="0" style="float:left">
                      <tr>
                        <td align="center"> <A href="./?frame=product_detail&id=<?=$pro['id'];?>">
<IMG 
src="<?=$pro['image']; ?>" width="135" height="175" border=0 onmouseover="showtrail('<? if ($pro['image_large']!='') echo $pro['image_large']; else echo $pro['image']; ?>','',<?=$width; ?>,<?=$height;?>)" onmouseout=hidetrail()></A>
				  <DIV id=preview_div style="DISPLAY: none;  POSITION: absolute"></DIV></td>
                      </tr>
                      <tr>
                        <td align="center"><a href="./?frame=product_detail&id=<?=$pro['id'];?>" class="text_sp_bc"><?=$pro['name']?></a></td>
                      </tr>
                    </table>
            <?
}
while($j<$col){
	echo "";
	$j=$j+1;
}
?></td>
	</tr>
<? }?>
</table>
<? }?>