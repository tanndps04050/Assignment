<?
$l_Product       = $_lang == 'vn' ? 'Tin' : 'News';
$l_Price         = $_lang == 'vn' ? 'Giá' : 'Price';

$l_Keyword       = $_lang == 'vn' ? 'Từ khóa' : 'Keyword';
$l_CheckboxLabel = $_lang == 'vn' ? 'Chỉ tìm trong phần mô tả sách' : 'Only search in product detail';
$l_BelongTo      = $_lang == 'vn' ? 'Trong danh mục' : 'Belong to';
$l_PriceFrom     = $_lang == 'vn' ? 'Giá từ' : 'Price from';
$l_PriceTo       = $_lang == 'vn' ? 'Giá đến' : 'Price to';
$l_DateFrom      = $_lang == 'vn' ? 'Từ ngày' : 'From date';
$l_DateTo        = $_lang == 'vn' ? 'Đến ngày' : 'To date';

$l_DateFormat    = $_lang == 'vn' ? 'Tháng / ngày / năm' : 'month / day / year';
?>

<?
$row = 5;
$col = 2;

if (isset($_REQUEST['act'])){
?>

<?
	$where="1=1";
	$keyword = killInjection($_REQUEST['keyword']);
	$price = killInjection($_REQUEST['price']);
	$inchsize = killInjection($_REQUEST['inchsize']);
	$manufacturer = killInjection($_REQUEST['manufacturer']);
	
	if ($keyword!=''){
		$where .= " and (detail_short like '%".$keyword."%' or detail like '%".$keyword."%' AND price='".$price."' AND inchsize='".$inchsize."' OR manufacturer='".$manufacturer."'";
		if (!isset($_REQUEST['search_in_detail'])) 
			$where.=" or code like '%".$keyword."%' or name like '%".$keyword."%' AND price='".$price."' AND inchsize='".$inchsize."' OR manufacturer='".$manufacturer."'"; 
		$where.=") ";
	}
	if ($_REQUEST['parent']!='') $where.=" and parent=".$_REQUEST['parent'];
	if ($_REQUEST['pfrom']!='')	$where.=" and price>=".$_REQUEST['pfrom'];
	if ($_REQUEST['pto']!='') $where.=" and price<=".$_REQUEST['pto'];
	if ($_REQUEST['dfrom']!='')	$where.=" and date_added>=".$_REQUEST['dfrom'];
	if ($_REQUEST['dto']!='') $where.=" and date_added<=".$_REQUEST['dto'];
	
	$p=0;
	if ($_REQUEST['p']!='') $p=$_REQUEST['p'];
	
	$result = @mysql_query("select count(*) from tbl_product where $where",$conn);
	$total = mysql_fetch_row($result);

	$sql="select * from tbl_product where $where limit ".$row*$col*$p.",".$row*$col;
	$result = @mysql_query($sql,$conn);
	{
		?>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
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
				  <td colspan="2" align="center" height="150">
				  <A href="./?frame=product_detail&id=<?=$pro['id'];?>">
<IMG src="<?=$pro['image']; ?>" width="180" border=0 onmouseover="showtrail('<? if ($pro['image_large']!='') echo $pro['image_large']; else echo $pro['image']; ?>','',<?=$width; ?>,<?=$height;?>)" onmouseout=hidetrail()></A>
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

		<?
	}
	?>
</table>
<table width="98%" border="0" cellpadding="0" cellspacing="0">
   <tr>
        <td colspan="2" id="boder_button">&nbsp;</td>
   </tr>
   <tr><td height="5px"></td></tr>
</table>
<table align="center" cellSpacing=0 cellPadding=0 width="98%" border=0>
<?
$newsPage       = $_lang=="vn" ? "Sách" : "Products";
$pagePage       = $_lang=="vn" ? "Trang" : "Page";
$titleFirst     = $_lang=="vn" ? "Đầu Tiên" : "First";
$titlePrevious  = $_lang=="vn" ? "Về trước" : "Previous";
$titleNext      = $_lang=="vn" ? "Tiếp theo" : "Next";
$titleLast      = $_lang=="vn" ? "Cuối cùng" : "Last";

$total=$total[0];
$pages=countPages($total,$row*$col);
echo '<tr><td colspan="2" align="center"></td></tr>';
echo '<tr><td class="smallfont" align="left"><b>'.$total.'</b> '.$newsPage.'</td>';
echo '<td class="smallfont" align="right">'.$pagePage.' : ';
$param="act=search&keyword=$keyword";
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
</table>
<br />

<?
}else{
?>

<table border="0" cellpadding="10" cellspacing="1" width="100%">
	<tr><td>
<form name="frmSearch" action="./" method="GET">
<input type="hidden" name="act" value="search">
<input type="hidden" name="frame" value="search">
<table border="0" width="100%" cellSpacing="0" cellPadding="2">
	<tr>
		<td width="100" class="smallfont" align="right"><?=$l_Keyword?></td>
		<td width="5" class="smallfont" align="center"></td>
		<td class="smallfont">
			<input type="text" name="keyword" style="width: 90%" class="textbox">
		</td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"></td>
		<td class="smallfont" align="center"></td>
		<td class="smallfont">
			<input type="checkbox" value="1" name="search_in_detail" class="textbox"> <?=$l_CheckboxLabel?>
		</td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"></td>
		<td class="smallfont" align="center"></td>
		<td class="smallfont">
			<input type="submit" class="button" value="<?=_SEARCH?>">
		</td>
	</tr>
	
	<tr><td colspan="3" height="20"></td></tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_BelongTo?></td>
		<td class="smallfont" align="center">:</td>
		<td class="smallfont">
			<?
			$sourceCombo = getArrayCategory("tbl_product_category");
			echo comboCategory('parent',$sourceCombo,'smallfont',"",1);
			?>
		</td>
	</tr>

	<tr>
		<td class="smallfont" align="right"><?=$l_PriceFrom?></td>
		<td class="smallfont" align="center">:</td>
		<td class="smallfont"><input type="text" name="pfrom" class="textbox"></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_PriceTo?></td>
		<td class="smallfont" align="center">:</td>
		<td class="smallfont"><input type="text" name="pto" class="textbox"></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_DateFrom?></td>
		<td class="smallfont" align="center">:</td>
		<td class="smallfont"><input type="text" name="dfrom" class="textbox"> (<?=$l_DateFormat?>)</td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_DateTo?></td>
		<td class="smallfont" align="center">:</td>
		<td class="smallfont"><input type="text" name="dto" class="textbox"> (<?=$l_DateFormat?>)</td>
	</tr>
	
</table>

</form>

	</td></tr>
</table>
<? }?>