<? 
$row = 5;
$col = 2;

$cat = 0;
if($_REQUEST['cat']!='') $cat=killInjection($_REQUEST['cat']);

$p=0;
if ($_REQUEST['p']!='') $p=$_REQUEST['p'];
$sql = "select * from tbl_product where status=0 and parent=".$cat." order by sort,date_added desc limit ".$row*$col*$p.",".$row*$col;
$result = @mysql_query($sql,$conn);

$total = countRecord("tbl_product","status=0 and parent=".$cat);
if($total==0){
?>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<table align="center" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr><td height="10"></td></tr>
	<tr>
		<td align="center">
			<font color="#666666"><strong><?=$_lang=="vn"?'Sách đang cập nhật !':'Products are being updated !'?></strong></font>
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
				$width = $size[0]+20;		?>
				
	<td class="border_table" valign="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style="float:left">
				<tr>
				  <td height="40" colspan="2" align="center" valign="top"><a href="./?frame=product_detail&id=<?=$pro['id']?>" class="text_pro"><?=$pro['name']?> </a></td>
				</tr>
				<tr>
				  <td colspan="2" align="center" height="150">
				  <A href="./?frame=product_detail&id=<?=$pro['id'];?>">
<IMG 
src="<?=$pro['image']; ?>" width="180" border=0 onmouseover="showtrail('<? if ($pro['image_large']!='') echo $pro['image_large']; else echo $pro['image']; ?>','',<?=$width; ?>,<?=$height;?>)" onmouseout=hidetrail()></A>
				  <DIV id=preview_div style="DISPLAY: none;  POSITION: absolute"></DIV>				  </td>
				</tr>
				<tr>
				  <td height="25" colspan="2" align="center"><?=_PRICE?>: <span class="red"><strong><?=number_format($pro['price'],0,',','.')?>&nbsp;<?=$currencyUnit?></strong></span> </td>
				</tr>
				<? if($pro['subject']!=0)
					{?>
					<tr><td align="center" style="padding:2px" colspan="2" height="25">
						 <?=$_lang=='vn' ? 'Giá khuyến mãi :' : 'Promotion Price : '?> 
						 <span class="red"><strong><?=number_format($pro['subject'],0,',','.')?>&nbsp;<?=$currencyUnit?></strong></span>
					</td></tr>					
					<? }
					else {?>
						<tr><td align="center" style="padding:2px" colspan="2" height="25">&nbsp;</td></tr>
					<? }										
				?>				
				<tr>
				  <td align="center" height="30" style="padding-top:5px" valign="bottom" colspan="2"><a href="./?frame=cart&p=<?=$pro['id']?>" class="link">
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
<table width="98%" border="0">
 <tr><td class="line">&nbsp;</td></tr>
</table>
<br />
<table align="center" cellSpacing=0 cellPadding=0 width="98%" border=0>
<?
$newsPage       = $_lang=="vn" ? "Sách" : "Products";
$pagePage       = $_lang=="vn" ? "Trang" : "Page";
$titleFirst     = $_lang=="vn" ? "Đầu Tiên" : "First";
$titlePrevious  = $_lang=="vn" ? "Về trước" : "Previous";
$titleNext      = $_lang=="vn" ? "Tiếp theo" : "Next";
$titleLast      = $_lang=="vn" ? "Cuối cùng" : "Last";

$pages = countPages($total,$row*$col);
echo '<tr><td colspan="2" align="center"></td></tr>';
echo '<tr><td class="smallfont" align="left"><b>'.$total.'</b> '.$newsPage.'</td>';
echo '<td class="smallfont" align="right">'.$pagePage.' : ';
$param="";
if ($p>1) echo '<a class="aLink3" title="'.$titleFirst.'" href="./?frame='.$_REQUEST['frame'].'&cat='.$_REQUEST['cat'].'&p=0">[&lt;&lt;]</a> ';
if ($p>0) echo '<a class="aLink3" title="'.$titlePrevious.'" href="./?frame='.$_REQUEST['frame'].'&cat='.$_REQUEST['cat'].'&p='.($p-1).'">[&lt;]</a> ';
$from=($p-10>0?$p-10:0);
$to=($p+10<$pages?$p+10:$pages);
for ($i=$from;$i<$to;$i++){
	if ($i!=$p) echo '<a class="aLink3" href="./?frame='.$_REQUEST['frame'].'&cat='.$_REQUEST['cat'].'&p='.$i.'">'.($i+1).' </a>';
	else echo '<span class="current"> '.($i+1).'</span>';
}
if ($p<$i-1) echo '<a class="aLink3" title="'.$titleNext.'" href="./?frame='.$_REQUEST['frame'].'&cat='.$_REQUEST['cat'].'&p='.($p+1).'">[&gt;]</a> ';
if ($p<$pages-1) echo '<a class="aLink3" title="'.$titleLast.'" href="./?frame='.$_REQUEST['frame'].'&cat='.$_REQUEST['cat'].'&p='.($pages-1).'">[&gt;&gt;]</a>'; 
echo '</td></tr>';
?>
</table><br />
 
<? }?>