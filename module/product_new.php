<? 
$row = 5;
$col = 2;

$cat = 0;
if($_REQUEST['cat']!='') $cat=killInjection($_REQUEST['cat']);

$p_new=0;
if ($_REQUEST['p_new']!='') $p_new=$_REQUEST['p_new'];
$sql = "select tbl_product.*,tbl_product_new.sort as sort from tbl_product_new,tbl_product where tbl_product_new.lang='".$_lang."' and tbl_product_new.product_id = tbl_product.id order by tbl_product_new.sort limit ".$row*$col*$p_new.",".$row*$col;
$result = @mysql_query($sql,$conn);
$total = countRecord("tbl_product_new","status=0 and lang='".$_lang."'");
if($total==0){
?>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<table cellspacing="4" cellpadding="0" width="100%" border="0">
	<tr><td height="10"></td></tr>
	<tr>
		<td align="center">
			<font color="#333333"><strong><?=$_lang=="vn"?'Sách mới đang cập nhật !':'Products are being updated !'?></strong></font>
		</td>
	</tr>
	<tr><td height="10"></td></tr>
</table>
<?
}else{
?>

<table cellspacing="4" cellpadding="0" width="100%" border="0">
<?
for($i=0; $i<$row; $i++){
?>
	<tr>			  
			
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
		$width = $size[0]+20;
?>
	<td class="border_table" valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style="float:left">
				<tr>
				  <td height="40" colspan="2" align="center" valign="top"><a href="./?frame=product_detail&id=<?=$pro['id']?>" class="text_pro"><?=$pro['name']?> </a></td>
				</tr>
				<tr>
				  <td colspan="2" align="center" height="180">
				  <A href="./?frame=product_detail&id=<?=$pro['id'];?>">
<IMG src="<?=$pro['image']; ?>" width="180" border=0 onmouseover="showtrail('<? if ($pro['image_large']!='') echo $pro['image_large']; else echo $pro['image']; ?>','',<?=$width; ?>,<?=$height;?>)" onmouseout=hidetrail()></A>
				  <DIV id=preview_div style="DISPLAY: none;  POSITION: absolute"></DIV>				  </td>
				</tr>
				<tr>
				  <td height="20" colspan="2" align="center"><?=_PRICE?>: <span class="red"><strong><?=number_format($pro['price'],0,',','.')?>&nbsp;<?=$currencyUnit?></strong></span> </td>
				</tr>
				<? if($pro['subject']!=0)
					{?>
					<tr><td align="center" style="padding:2px" colspan="2" height="20">
						 <?=$_lang=='vn' ? 'Giá khuyến mãi :' : 'Promotion Price : '?> 
						 <span class="red"><strong><?=number_format($pro['subject'],0,',','.')?>&nbsp;<?=$currencyUnit?></strong></span>
					</td>
					</tr>					
					<? }
					else {?>
						<tr><td align="center" style="padding:2px" colspan="2" height="2"></td></tr>
					<? }										
				?>				
				<tr>
				  <td align="center" height="25" style="padding-top:5px" valign="bottom" colspan="2"><a href="./?frame=cart&p=<?=$pro['id']?>" class="link">
				  	  <img src="images/cart.jpg" width="20" height="17" vspace="2" border="0" align="absmiddle" />&nbsp;&nbsp;Đặt hàng &nbsp;&nbsp;</a>
					  &nbsp;&nbsp;<a href="./?frame=product_detail&id=<?=$pro['id']?>" class="link"><?=$_lang=='vn' ? 'Chi tiết':'Detail'?> </a>	 </td>					 
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