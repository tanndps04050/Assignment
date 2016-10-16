<?
$l_Image   	 = $_lang == 'vn' ? 'Hình ảnh' : 'Image';
$l_product   = $_lang == 'vn' ? 'Sách' : 'Product';
$l_quantity  = $_lang == 'vn' ? 'Số lượng' : 'Quantity';
$l_price     = $_lang == 'vn' ? 'Đơn giá' : 'Unit price';
$l_money     = $_lang == 'vn' ? 'Thành tiền' : 'Cost';
$l_total     = $_lang == 'vn' ? 'Tổng cộng' : 'Total';

$l_btnDel    = $_lang == 'vn' ? 'Xóa' : 'Delete';
$l_btnDelAll = $_lang == 'vn' ? 'Xóa hết' : 'Delete all';
$l_btnUpdate = $_lang == 'vn' ? 'Cập nhật' : 'Update';
$l_btnPay    = $_lang == 'vn' ? 'Thanh toán' : 'Pay';

$l_cartEmpty = $_lang == 'vn' ? 'Bạn chưa chọn bất kỳ loại sách nào.' : 'Your cart is empty.';

function checkexist(){
	$cart=$_SESSION['cart'];
	foreach ($cart as $product)
		if ($product[0]==$_REQUEST['p']) return true;
	return false;
}

if ($_REQUEST['act']=='del'){
	if (count($_SESSION['cart'])==1){
		unset($_SESSION['cart']);
	}else{
		$cart=$_SESSION['cart'];
		unset($cart[$_REQUEST['pos']]);
		$_SESSION['cart']=$cart;
	}
}

if (isset($_POST['butUpdate'])||isset($_POST['btnCheckout'])){
	$cart=$_SESSION['cart'];
	$t=0;
	foreach ($_POST['txtQuantity'] as $quantity){
		if (is_numeric($quantity) && $quantity>0 && strlen($quantity)<5)
			$cart[$t][1]=(int)$quantity;
		if ($quantity<=0){
			unset($cart[$t]);
			$t=$t-1;
		}
		$t=$t+1;
	}
	if (count($cart)<=0) unset($cart);
	$_SESSION['cart']=$cart;
	
	if (isset($_POST['btnCheckout'])) echo "<script>window.location='./?frame=checkout'</script>";
}
	
if (isset($_POST['btnDeleteAll'])) unset($_SESSION['cart']);

if (isset($_REQUEST['p'])){
	if (!isset($_SESSION['cart'])){
		$pro=$_REQUEST['p'];
		$cart=array();
		$cart[] = array($pro,1);
		$_SESSION['cart']=$cart;
	}else{
		$pro=$_REQUEST['p'];
		$cart=$_SESSION['cart'];
		if (countRecord("tbl_product","id='".$_REQUEST['p']."'")>0 && checkexist()==false){
			$cart[]=array($pro,1);
			$_SESSION['cart']=$cart;
		}
	}
}else{
	$cart=$_SESSION['cart'];
}
?>


<? if (!isset($_SESSION['cart'])){?>
<table align="center" border="0" width="98%" cellpadding="0" cellspacing="0">
	<tr><td height="5"></td></tr>
	<tr>
		<td>
			<table align="center" border="1" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<br><br>
						<font color="#0000FF" size="2" face="Verdana, Arial, Helvetica, sans-serif">
							<b><?=$l_cartEmpty?></b>
						</font>
						<br><br>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr><td height="5"></td></tr>
</table>
<? }else{?>


<FORM action="./" method="POST" name="frmCart">
<input type="hidden" name="frame" value="cart"> 
<table border="1" width="100%" cellspacing="0" cellpadding="4" bordercolor="#000000" style="border-collapse:collapse">
	<tr>
		<th width="100"><span style="font-size:12px; font-family:Tahoma"><?=$l_Image?></span></th>
		<th class="smallfont"><span style="font-size:12px; font-family:Tahoma"><?=$l_product?></span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_quantity?></span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_price?><br>(<font color="#CC0000"><?=$currencyUnit?></font>)</span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_money?></span></th>
		<th width="60"><span style="font-size:12px; font-family:Tahoma"><?=$l_btnDel?></span></th>
	</tr>
<?
$cnt=0;
$tongcong=0;
foreach ($cart as $product){
	$sql = "select * from tbl_product where id='".$product[0]."'";
	$result = mysql_query($sql,$conn);
	if (mysql_num_rows($result)>0){
	$pro = mysql_fetch_assoc($result)?>
	<tr>
		<td class="smallfont" align="center">
			<a href="./?frame=product_detail&id=<?=$pro['id']?>">
				<img id="" src="<?=$pro['image']?>" alt="<?=$pro['name']?>" border="0" width="100">
			</a>
		</td>
		<td class="smallfont"><?=$pro['name']?></td>
		<td class="smallfont" align="center">
			<input type="text" name="txtQuantity[]" size="5" value="<?=$product[1]?>">
		</td>
		<td class="smallfont" align="center"><?=number_format($pro['price'],0)?></td>
		<td class="smallfont" align="center"><?=number_format(($pro['price']*$product[1]),0)?></td>
		<td class="smallfont" align="center">
        	<input type="submit" class="buttonorange" onmouseover="this.className='buttonblue'" onmouseout="this.className='buttonorange'" style="width:50" name="btnDelete" value="<?=$l_btnDel?>" onclick="window.location='./?frame=cart&act=del&pos=<?=$cnt?>';return false;">
	  </td>
	</tr>
<?
}
$tongcong=$tongcong+$pro['price']*$product[1];
$cnt=$cnt+1;
} 
?>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr><td height="10" colspan="2"></td></tr>
	<tr>
		<td class="smallfont" align="right" colspan="2">
			<b><?=$l_total?> : <font color="#CC0000"><?=number_format($tongcong,0)?></font> <?=$currencyUnit?></b>
		</td>
	</tr>
	<tr><td height="10" colspan="2"></td></tr>
	<tr>
		<td>
			<input type="submit" class="buttonorange" onmouseover="this.className='buttonblue'" onmouseout="this.className='buttonorange'" name="butUpdate" value="<?=$l_btnUpdate?>">
			<input type="submit" class="buttonorange" onmouseover="this.className='buttonblue'" onmouseout="this.className='buttonorange'" name="btnDeleteAll" value="<?=$l_btnDelAll?>">
		</td>
		<td align="right">
			<input type="submit" class="buttonorange" onmouseover="this.className='buttonblue'" onmouseout="this.className='buttonorange'" name="btnCheckout" value="<?=$l_btnPay?>">
		</td>
	</tr>
</table>

</FORM>
<?
}
?>

