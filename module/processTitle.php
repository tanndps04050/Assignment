<?
switch ($_REQUEST['frame']){

	case "product" :
		$cat = 0;
		if ($_REQUEST['cat']!= '') $cat = killInjection($_REQUEST['cat']);
		$catInfo = getRecord("tbl_product_category","id=".$cat);
		$title = $catInfo['name'];
		break;	
	case "product_total" :
		$cat1 = 0;
		if ($_REQUEST['cat1']!= '') $cat1 = killInjection($_REQUEST['cat1']);
		$catInfo = getRecord("tbl_product_category","id=".$cat1);
		$title = $catInfo['name'];
		break;		
		
	case "product_new" 	   : $title = $_lang=="vn" ? "Sách Mới" : "New Product";break;	
	case "product_detail"  : $title = $_lang=="vn" ? "Thông tin chi tiết" : "Product detail";break;	
	//====================================Single page=================================================
	case "service"     	   : $title = $_lang=="vn" ? "Dịch vụ" : "Service";break;
	case "consulting"	   : $title = $_lang=="vn" ? "Tư vấn" : "Consulting";break;
	case "employment"      : $title = $_lang=="vn" ? "Tuyển dụng" : "Employment";break;													
	//------------------------------------------------------------------------------------------------
	case "cart"    		   : $title = $_lang=="vn" ? "Giỏ hàng" : "Cart";	break;
	case "checkout" 	   : $title = $_lang=="vn" ? "Thông tin đơn hàng" : "Information order";	break;
	case "customer" 	   : $title = $_lang=="vn" ? "Khách hàng" : "Customer";	break;
	case "contact"         : $title = $_lang=="vn" ? "Liên hệ" : "Contact";	break;
	case "intro"           : $title = $_lang=="vn" ? "Giới thiệu" : "Introduction";break;
	case "news"            : $title = $_lang=="vn" ? "Tin tức & Sự kiện" : "News & Event";break;
	case "news_all"        : $title = $_lang=="vn" ? "Tin tức & Sự kiện" : "News & Event";break;
	case "news_detail"     : $title = $_lang=="vn" ? "Thông tin chi tiết" : "News detail";break;
	//====================================Search======================================================
	case "search"          : $title = $_lang=="vn" ? "Kết quả tìm kiếm" : "RETURN SEARCH";break;
	case "registry"        : $title = $_lang=="vn" ? "Đăng ký thành viên" : "REGISTRY";break;
	case "member"          : $title = $_lang=="vn" ? "Thành viên" : "LOGIN";break;
	case "login"           : $title = $_lang=="vn" ? "Ðăng nhập" : "LOGIN";break;
	case "forgotpass"      : $title = $_lang=="vn" ? "Quên mật khẩu" : "Forgot password";break;	
	case "changepassword"  : $title = $_lang=="vn" ? "Đổi mật khẩu" : "Change password";break;		
	
	case "home"            : $title = $_lang=="vn" ? "Sách Mới" : "New product";break;
	default                : $title = $_lang=="vn" ? "Sách Mới" : "New product";break;

}
echo $title;
?>
