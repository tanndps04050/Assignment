<?
$arrMenu = array(
	array(
		'Danh mục sách',
		'Danh mục sách_$_./?act=product_category',		
		'Sách_$_./?act=product',
		'Sách mới_$_./?act=product_new',
		'Sách bán chạy_$_./?act=product_special',
		),	
	array(
		'Danh mục tìm kiếm theo sách',
		'Inch size_$_./?act=inchsize',
		'Nhà cung cấp_$_./?act=manufacturer',
		),	
	array(
		'Danh mục Nội dung',
		'Giới thiệu_$_./?act=intro',												
		'Liên hệ_$_./?act=contact',
		'Dịch vụ_$_./?act=service',
		'Tư vấn_$_./?act=consulting',
		'Tuyển dụng_$_./?act=employment',
		'Hỗ trợ trực tuyến(Yahoo)_$_./?act=yahoo',
		'Hỗ trợ trực tuyến(Skype)_$_./?act=skype',
		'Quản lý banner_$_./?act=banner',
	),
	array(
		'Danh mục quảng cáo',
		'Quảng cáo trái_$_./?act=advleft',
		'Quảng cáo phải_$_./?act=advright',	
		'Quảng cáo dưới_$_./?act=advbottom',													
	),	
	array(
		'Danh mục Tin tức',		
		'Tin tức_$_./?act=news',
	),	
	array(
		'Danh mục Thành viên',		
		'Thành viên_$_./?act=member',
		'Đơn hàng_$_./?act=order',		
	),			
	array(
		'Hệ thống',
		'Cấu hình_$_./?act=config',
		'Đổi mật khẩu_$_./?act=changepass',
		'Thoát_$_./?act=logout',
	),
);

for($i=0;$i<count($arrMenu);$i++){?>
<table border="1" bordercolor="#0069A8" style="border-collapse: collapse" width="161" cellpadding="0">
	<tr>
		<td width="161" height="20" bgcolor="#0069A8" class="title">
			&nbsp;<font style="font-weight: 700" color="#FFFFFF"><?=$arrMenu[$i][0]?></font>
		</td>
	</tr>
	<?
	for($j=1;$j<count($arrMenu[$i]);$j++){
		$arr = explode('_$_',$arrMenu[$i][$j]);
	?>
	<tr>
		<td width="161" height="25" class="normalfont" style="border-bottom-color:#CCCCCC">
			<? if(substr($arr[1],7)!=$_REQUEST['act']){?>
				&nbsp;&nbsp;&nbsp;<a href="<?=$arr[1]?>"><?=$arr[0]?></a>
			<? }else{?>
				&nbsp;&nbsp;&nbsp;<a href="<?=$arr[1]?>"><font color="#CC0000"><?=$arr[0]?></font></a>
			<? }?>
		</td>
	</tr>
	<? }?>
</table>
<? }?>