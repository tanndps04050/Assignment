<?
$l_Image   	 = $_lang == 'vn' ? 'Hình ảnh' : 'Image';
$l_name       = $_lang == 'vn' ? 'Họ và tên' : 'Full name';
$l_position   = $_lang == 'vn' ? 'Chức vụ' : 'Position';
$l_company    = $_lang == 'vn' ? 'Công ty' : 'Company name';
$l_address    = $_lang == 'vn' ? 'Địa chỉ' : 'Address';
$l_city       = $_lang == 'vn' ? 'Thành phố' : 'City';
$l_country    = $_lang == 'vn' ? 'Quốc gia' : 'Country';
$l_email      = $_lang == 'vn' ? 'Hộp thư' : 'Email';
$l_website    = $_lang == 'vn' ? 'Trang web' : 'Website';
$l_tel        = $_lang == 'vn' ? 'Điện thoại' : 'Telephone';
$l_fax        = $_lang == 'vn' ? 'Fax' : 'Fax';
$l_mobile     = $_lang == 'vn' ? 'ĐTDĐ' : 'Mobil';

$l_product    = $_lang == 'vn' ? 'Tên Loại Sách' : 'Product';
$l_quantity   = $_lang == 'vn' ? 'Số lượng' : 'Quantity';
$l_price      = $_lang == 'vn' ? 'Đơn giá' : 'Unit price';
$l_money      = $_lang == 'vn' ? 'Thành tiền' : 'Cost';
$l_total      = $_lang == 'vn' ? 'Tổng cộng' : 'Total';
$l_btnSend    = $_lang == 'vn' ? 'Gởi thông tin đặt hàng' : 'Send order';

$l_sendSuccess = $_lang == 'vn' ? 'Thông tin đặt hàng của bạn đã được gởi đến chúng tôi.' : 'Your infomational cart sent successfully.';
$l_btnBackHome = $_lang == 'vn' ? 'Nhấn đây để trở về trang chủ' : 'Click here to go back home page.';

if (!isset($_SESSION['member']) || $_SESSION['member']==''){
	unset($_SESSION['member']);
	echo "<script>window.location='./?frame=login'</script>";
}
if (count($_SESSION['cart'])<=0){
	echo "<script>window.location='./?frame=cart'</script>";
}

function send_mail_order(){
	global $conn;
	global $adminEmail;
	$sql = "select * from tbl_member where uid='".$_SESSION['member']."'";
	$result = mysql_query($sql,$conn);
	$cust = mysql_fetch_assoc($result);
	
	$name    = $cust['name'];
	$address = $cust['address'];
	$tel     = $cust['tel'];
	$email   = $cust['email'];

	$dathang = "";
	$cart = $_SESSION['cart'];

	$tongcong=0;
	$cnt=0;
	foreach ($cart as $product){
		$sql = "select * from tbl_product where id='".$product[0]."'";
		$result = mysql_query($sql,$conn);
		$pro = mysql_fetch_assoc($result);
		
		$dathang .= "Loại Sách : ".$pro['code']."<br>"; 
		$dathang .= "Ten Sách : ".$pro['name']."<br>"; 
		$dathang .= "So luong : ".$product[1]."<br>"; 
		$dathang .= "Don gia : ".$pro['price']."<br>";
		$dathang .= "Thanh tien : ".$pro['price']*$product[1]."<br><br>";
		
		$tongcong = $tongcong+$pro['price']*$product[1];
		$cnt=$cnt+1;
	} 
		$dathang.="<hr>Tong cong : ".$tongcong."<br>";
		//print ($dathang); exit();

	$m2 = send_mail($email,$adminEmail, "Thong tin dat hang cua : ".$name, "Ho ten : ".$name."<br>Dia chi : ".$address."<br>Dien thoai : ".$tel."<br>Email : ".$email."<br><hr><b>Don hang :</b><br>".$dathang);
	if(m2){
		return "";
	}else{
		return "Không thể gởi thông tin !";
	}
}

if (!isset($_SESSION['member'])) echo "<script>window.location='./?frame=registry'</script>";
if (count($_SESSION['cart'])<=0) echo "<script>window.location='./?frame=cart'</script>";
$cart = $_SESSION['cart'];

$sql = "select * from tbl_member where uid='".$_SESSION['member']."'";
$result = mysql_query($sql,$conn);
$cust = mysql_fetch_assoc($result);

if (isset($_POST['btnSend'])){
	$tongcong=0;
	$cnt=0;
	$sqlorder="insert into tbl_order (member_id,date_added) values (".$cust['id'].",now())";		
	mysql_query($sqlorder,$conn);
	$newid=mysql_insert_id();
	foreach ($cart as $product){
		//print_r($product);echo 'p:'.$pro['price'];
		$sql = "select * from tbl_product where id='".$product[0]."'";
		$result = mysql_query($sql,$conn);
		$pro=mysql_fetch_assoc($result);
		$price = $pro['price']!=0?$pro['price']:0;
		$sqlorderdetail="insert into tbl_order_detail (product_id,quantity,price,order_id) values (".$product[0].",".$product[1].",".$price.",".$newid.")";
		mysql_query($sqlorderdetail,$conn);
		$tongcong=$tongcong+$pro['price']*$product[1];
		$cnt=$cnt+1;
	}
	if (send_mail_order()==""){
		echo "<script>window.location='./?frame=checkout&code=1'</script>";
	}else{
		echo "<p align='center' class='err'><font color=red>Không thể gởi thông tin</font></p>";
	}
}
?>


<? if ($_REQUEST['code']=='1'){?>
<table align="center" border="0" width="98%" cellpadding="0" cellspacing="0">
	<tr><td height="5"></td></tr>
	<tr>
		<td>
			<table align="center" border="1" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">
						<br><br><br>
						<font color="#0000FF" size="2" face="Verdana, Arial, Helvetica, sans-serif">
							<b><?=$l_sendSuccess?></b>
						</font>
						<br><br>
						<a href='index.php'><?=$l_btnBackHome?></a>
						<br><br><br>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr><td height="5"></td></tr>
</table>
<?
	unset($_SESSION['cart']);
}else{
?>

<table border="0" cellspacing="1" cellpadding="2" width="100%">
	<tr><td colspan="3" height="10"></td></tr>
	<tr>
		<td class="smallfont" align="right" width="100"><?=$l_name?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['name']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_company?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['company']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_address?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['address']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_city?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['city']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_country?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['country']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_tel?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['tel']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_fax?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['fax']?></b></td>
	</tr>
	
	<tr>
		<td class="smallfont" align="right"><?=$l_email?></td>
        <td width="5"></td>
		<td class="smallfont"><b><?=$cust['email']?></b></td>
	</tr>

</table>


<form action="./" method="POST" name="cartform">
<input type="hidden" name="frame" value="checkout">
<table border="1" width="100%" cellspacing="0" cellpadding="4" style="border-collapse:collapse" bordercolor="#666666">
	<tr>
		<th width="100"><span style="font-size:12px; font-family:Tahoma"><?=$l_Image ?></span></th>
		<th class="smallfont"><span style="font-size:12px; font-family:Tahoma"><?=$l_product?></span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_quantity?></span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_price?><br>(<font color="#CC0000"><?=$currencyUnit?></font>)</span></th>
		<th class="smallfont" width="70"><span style="font-size:12px; font-family:Tahoma"><?=$l_money?></span></th>
	</tr>
<?
$cart=$_SESSION['cart'];
$cnt=0;
$tongcong=0;
foreach ($cart as $product){
	$sql = "select * from tbl_product where id='".$product[0]."'";
	$result = mysql_query($sql,$conn);
	if(mysql_num_rows($result)>0){
		$pro=mysql_fetch_assoc($result)?>	
	<tr>
		<td class="smallfont" align="center">
			<a href="./?frame=product_detail&id=<?=$pro['id']?>">
				<img id="" src="<?=$pro['image']?>" alt="<?=$pro['name']?>" border="0" width="100">
			</a>
		</td>
		<td class="smallfont" align="left"><?=$pro['name']?></td>
		<td class="smallfont" align="center"><?=$product[1]?></td>
		<td class="smallfont" align="center"><?=number_format($pro['price'],0)?></td>
		<td class="smallfont" align="center"><?=number_format(($pro['price']*$product[1]),0)?></td>
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
		<td align="center">
<input type="submit" class="buttonorange" onmouseover="this.className='buttonblue'" onmouseout="this.className='buttonorange'" name="btnSend" style="width:150" value="<?=$l_btnSend?>">
		</td>
	</tr>
</table>

</form>

<? }?>

