<?
switch ($_REQUEST['act']){
	//------------------------------------------------------------------------------------------
	case "product_category"   : $title = 'Danh mục sách';break;
	case "product_category_m" : $title = 'Hiệu chỉnh / Cập nhật : Danh mục sách';break;
	case "product"  		  : $title = 'Sản phẩm';break;
	case "product_m" 		  : $title = 'Hiệu chỉnh / Cập nhật : Sản phẩm';break;	
	case "product_new" 		  : $title = 'Sách mới';break;
	case "product_new_m"	  : $title = 'Hiệu chỉnh / Cập nhật : Sách mới';break;	
	case "product_special"	  : $title = 'Sách bán chạy';break;
	case "product_special_m"  : $title = 'Hiệu chỉnh / Cập nhật : Sách bán chạy';break;	
	//--------------------------------------category for product--------------------------------
	case "inchsize"			  :	$title = 'Inch size';break;
	case "inchsize_m"		  :	$title = 'Hiệu chỉnh / Cập nhật : Inch size';break;	
	case "manufacturer"		  : $title = 'Nhà cung cấp';break;			
	case "manufacturer_m"	  :	$title = 'Hiệu chỉnh / Cập nhật : Nhà cung cấp';break;
	//-------------------------------------Content----------------------------------------------
	case "intro"              : $title = 'Giới thiệu';break;
	case "intro_m"            : $title = 'Hiệu chỉnh / Cập nhật : Giới thiệu';break;
	case "contact"            : $title = 'Liên hệ';break;
	case "contact_m"          : $title = 'Hiệu chỉnh / Cập nhật : Liên hệ';break;	
	case "banner"             : $title = 'Quản lý banner';break;
	case "banner_m"           : $title = 'Hiệu chỉnh / Cập nhật : Quản lý banner';break;
	//-------------------------Tin tức & Sự kiện-------------------------------------------------
	case "news"               : $title = 'Tin tức';break;
	case "news_m"             : $title = 'Hiệu chỉnh / Cập nhật : Tin tức';break;
	//-------------------------Single page-------------------------------------------------------
	case "service"            : $title = 'Dịch vụ';break;
	case "service_m"          : $title = 'Hiệu chỉnh / Cập nhật : Dịch vụ';break;
	case "consulting"         : $title = 'Tư vấn';break;
	case "consulting_m"       : $title = 'Hiệu chỉnh / Cập nhật : Tư vấn';break;
	case "employment"         : $title = 'Tuyển dụng';break;
	case "employment_m"       : $title = 'Hiệu chỉnh / Cập nhật : Tuyển dụng';break;	
	//----------------------------Customer-------------------------------------------------------
	case "customer"           : $title = 'Khách hàng';break;
	case "customer_m"         : $title = 'Hiệu chỉnh / Cập nhật : Khách hàng';break;
	//-------------------------advertise---------------------------------------------------------
	case "advleft"            : $title = 'Quảng cáo trái';break;
	case "advleft_m"          : $title = 'Hiệu chỉnh / Cập nhật : Quảng cáo trái';break;
	case "advright"           : $title = 'Quảng cáo phải';break;
	case "advright_m"         : $title = 'Hiệu chỉnh / Cập nhật : Quảng cáo phải';break;
	case "advbottom"          : $title = 'Quảng cáo dưới';break;
	case "advbottom_m"        : $title = 'Hiệu chỉnh / Cập nhật : Quảng cáo dưới';break;
	//---------------------------Hỗ trợ trực tuyến-----------------------------------------------
	case "yahoo"              : $title = 'Hỗ trợ trực tuyến (Yahoo)';break;
	case "yahoo_m"            : $title = 'Hiệu chỉnh / Cập nhật : Hỗ trợ trực tuyến (Yahoo)';break;
	case "skype"              : $title = 'Hỗ trợ trực tuyến (Skype)';break;
	case "skype_m"            : $title = 'Hiệu chỉnh / Cập nhật : Hỗ trợ trực tuyến (Skype)';break;		
	//----------------------------Thành viên & Đơn hàng--------------------------------------------	
	case "member"             : $title = 'Thành viên';break;
	case "member_m"           : $title = 'Thêm mới / Cập nhật : Thành viên';break;
	case "order"              : $title = 'Đơn hàng';break;
	case "order_detail"       : $title = 'Chi tiết : Đơn hàng';break;
	//----------------------------danh mục hệ thống-------------------------------------------------
	case "config"             : $title = 'Cấu hình';break;
	case "config_m"           : $title = 'Cấu hình : Cập nhật';break;
	case "changepass"         : $title = 'Đổi mật khẩu';break;
	//-----------------------------------------------------------------------------------------------
	default                   : $title = 'Thông kê truy cập';break;
}
echo $title;
?>