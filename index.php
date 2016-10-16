<? if(!session_id()); session_start();
require("config.php");
require("common_start.php");
require("lib/func.lib.php");
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sách Online</title>
<script language="javascript" src="lib/varAlert.<?=$_lang?>.unicode.js"></script>
<script language="javascript" src="lib/javascript.lib.js"></script>
<script language="javascript">
function btnSearch_onclick(){
	if(test_empty(document.frmSearch.keyword.value)){
		alert(mustInput_Search);document.frmSearch.keyword.focus();return false;
	}
	document.frmSearch.submit();
	return true;
}

</script>
<SCRIPT language="javascript" src="js/preview_templates.js" type="text/javascript"></SCRIPT>
<SCRIPT language="javascript" src="js/common.js" type="text/javascript"></SCRIPT>
<SCRIPT language="JavaScript" src="js/dynwindow.js" type="text/javascript"></SCRIPT>
<SCRIPT language="javascript" src="js/networkbar.js" type="text/javascript"></SCRIPT>
<SCRIPT language="javascript" src="js/loader.js" type="text/javascript"></SCRIPT>
<SCRIPT language="javascript" src="js/AC_RunActiveContent.js" type="text/javascript"></SCRIPT>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
	
<table width="990" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/line_top.jpg" width="990" height="14" /></td>
  </tr>
  <tr>
    <td><img src="banner4.png" border="0"></td>
  </tr>
  <tr>
    <td id="menu"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="28%" height="31" align="center" valign="middle" background="images/lang.jpg" ><table width="90%" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td width="41%"><a href="#" onClick="doChangeLanguage(1)" style="cursor:pointer" class="link_lang">
				<img src="images/vn.jpg" width="26" height="17" border="0" align="absmiddle" />&nbsp;&nbsp;Tiếng việt</a></td>
           
          </tr>
        </table></td>
        <td width="72%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top" class="line_menu"><a href="./" class="text_menu"><?=_HOME?></a></td>
            <td valign="top" class="line_menu"><a href="./?frame=intro" class="text_menu"><?=_INTRO?></a></td>
            <td valign="top" class="line_menu"><a href="./?frame=service" class="text_menu"><?=_SERVICE?> </a></td>
            <td valign="top" class="line_menu"><a href="./?frame=consulting" class="text_menu"><?=_CONSULTING?></a></td>
            <td valign="top" class="line_menu"><a href="./?frame=employment" class="text_menu"><?=_EMPLOYMENT?></a></td>
            <td valign="top" class="line_menu"><a href="./?frame=registry" class="text_menu"><?=_REGISTRY?></a></td>
            <td valign="top" class="line_menu"><a href="./?frame=login" class="text_menu"><?=_LOGIN?></a></td>
            <td align="center" valign="top"><a href="./?frame=contact" class="text_menu"> <?=_CONTACT?></a></td>
            <td align="right" valign="top"><img src="images/menu_right.jpg" width="8" height="31" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td id="left" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="220px" valign="top" id="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                    <td class="text_tab"><?=_PRODUCT_CATEGORY?></td>
                    </tr>
                </table></td>
                </tr>
              <tr>
                <td colspan="2" class="border_left_right">
					<? include('module/product_category.php')?>
				</td>
                </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                      <td class="text_tab"> <?=_SUPPORTONLINE?></td>
                      </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right"><table width="100%" border="0" cellspacing="3" cellpadding="0">
                  <tr>
                    <td height="25" align="center" valign="bottom"><strong><?=$_lang=='vn' ? 'Mua hàng trực tiếp':'Direct purchase'?></strong></td>
                  </tr>
                  <tr>
                    <td align="center"><? include('module/contactInfoSubject.php')?></td>
                  </tr>
                  <tr>
                    <td height="25" align="center" valign="bottom"><? include('box/box_yahoo.php')?></td>
                  </tr>
                  <tr>
                    <td height="25" align="center" valign="bottom"><? include('box/box_skype.php')?></td>
                  </tr>                  
                </table>				</td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
		  <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                      <td class="text_tab"><?=_RATE?></td>
                      </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right" style="padding-bottom:5px">					
							
				</td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="border_top"><img src="images/cover_1.jpg" width="4" height="4" /></td>
                <td align="right" valign="top" class="border_top"><img src="images/cover_2.jpg" width="4" height="4" /></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right">
					<? include('box/box_total.php')?>
				</td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="border_top"><img src="images/cover_1.jpg" width="4" height="4" /></td>
                <td align="right" valign="top" class="border_top"><img src="images/cover_2.jpg" width="4" height="4" /></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right">
					<? include('box/box_left.php')?>
				</td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          
        </table></td>
        <td width="400px" valign="top" id="center"><table width="100%" border="0" cellspacing="6" cellpadding="0">
          <tr>
            <td align="center">
	
	
    
			</td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="bg_tab_center">
                  <tr>
                    <td width="9%" rowspan="2" valign="top"><img src="images/index_35.jpg" width="45" height="16" vspace="3" /></td>
                    <td width="91%" class="text_tab_center"><? include('module/processTitle.php')?> </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top">    
					<table width="570" border="0" cellpadding="0" cellspacing="0">
					  <tr>
						<td><? include('module/processFrame.php')?></td>
					  </tr>
					</table>
				</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="300px" valign="top" id="right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="border_top"><img src="images/cover_1.jpg" width="4" height="4" /></td>
                <td align="right" valign="top" class="border_top"><img src="images/cover_2.jpg" width="4" height="4" /></td>
              </tr>
			  <?
					$cnt=0;
					$tongcong=0;
					$cart=$_SESSION['cart'];if ($cart<>''){
					foreach ($cart as $product){
						$sql = "select * from tbl_product where id='".$product[0]."'";
						$result = mysql_query($sql,$conn);
						if (mysql_num_rows($result)>0){
						$pro = mysql_fetch_assoc($result)?>
						<?
					}
					$tongcong=$tongcong+$product[1];
					$cnt=$cnt+1;
					} }				
				?>
              <tr>
                <td height="40" colspan="2" align="center" class="border_left_right">
					<img src="images/cart.jpg" width="20" height="17" align="baseline" />
					&nbsp;&nbsp;&nbsp;<?=$_lang=='vn' ?'Giỏ hàng':'Cart'?>: <span class="red"><?=$tongcong?></span> <?=$_lang=='vn' ?'Sản phẩm':'Product'?></td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                      <td class="text_tab"><?=_PRODUCT_SEARCH?></td>
                      </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right"><form action="./" method="get" name="frmSearch">
					<input type="hidden" name="act" value="search" />
					<input type="hidden" name="frame" value="search" />
					<table width="100%" border="0" cellspacing="5" cellpadding="0">
                  <tr>
                    <td><label>
                   		<input name="keyword" type="text"  style="font-family:Arial; font-size:12px"
					  	value="<?=_PRODUCT_SEARCH?>..." onFocus="this.value='';"/>
                    </label></td>
                  </tr>                 
				  <tr>
                  
                  <tr>
                    <td><label>
						<input name="price" type="text"  style="font-family:Arial; font-size:12px"
					  	value="<?=$_lang=='vn' ? 'Nhập giá...':'Input Price...'?>" onFocus="this.value='';"/>						
                    </label></td>
                  </tr>
                  <tr>
                    <td align="center">
                      <label>
                      <input type="submit" class="submit" value="<?=$_lang=='vn' ?'Tìm':'Search'?>" onClick="return btnSearch_onclick();" />
                      </label></td>
                  </tr>
                </table>
                </form></td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                      <td class="text_tab"><?=_BEST_SELLING?></td>
                      </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right">
					<marquee direction="up" scrollamount="2" scrolldelay="100">
						<? include('module/product_special.php')?>
					</marquee></td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
		  <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="border_top1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%" align="left" valign="top"><img src="images/tab_1.jpg" width="32" height="31" /></td>
                      <td class="text_tab"> <?=_NEWS?></td>
                      </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right"><? include('module/news.php')?></td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="margin_bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="border_top"><img src="images/cover_1.jpg" width="4" height="4" /></td>
                <td align="right" valign="top" class="border_top"><img src="images/cover_2.jpg" width="4" height="4" /></td>
              </tr>
              <tr>
                <td colspan="2" class="border_left_right">
					<? include('box/box_right.php')?>
				</td>
              </tr>
              <tr>
                <td align="left" valign="bottom" class="border_bottom"><img src="images/cover_3.jpg" width="4" height="4" /></td>
                <td align="right" valign="bottom" class="border_bottom"><img src="images/cover_4.jpg" width="4" height="4" /></td>
              </tr>
            </table></td>
          </tr>
          
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#e6e6e6">
      <tr>
        <td align="left" valign="top" class="border_top"><img src="images/cover_11.jpg" width="4" height="4" /></td>
        <td align="right" valign="top" class="border_top"><img src="images/cover12.jpg" width="4" height="4" /></td>
      </tr>
      <tr>
        <td colspan="2" class="border_left_right"><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td><? include('box/box_bottom.php')?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="bottom" class="border_bottom"><img src="images/cover14.jpg" width="4" height="4" /></td>
        <td align="right" valign="bottom" class="border_bottom"><img src="images/cover14-48.jpg" width="4" height="4" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" class="text_bottom1"><a href="./" class="menu_bottom"><?=_HOME?></a>    |   <a href="./?frame=intro" class="menu_bottom"><?=_INTRO?></a>    |   <a href="./?frame=service" class="menu_bottom"><?=_SERVICE?></a>    |   <a href="./?frame=consulting" class="menu_bottom"><?=_CONSULTING?></a>    |   <a href="./?frame=employment" class="menu_bottom"><?=_EMPLOYMENT?></a>    |   <a href="./?frame=registry" class="menu_bottom"><?=_REGISTRY?></a>    |   <a href="./?frame=login" class="menu_bottom"><?=_LOGIN?></a>    |   <a href="./?frame=contact" class="menu_bottom"><?=_CONTACT?></a> </td>
  </tr>
  <tr>
    <td id="bottom"><? include('module/contactInfoDetailShort.html')?><span class="name">
   
  </tr>
</table>
<form name="tf_language" action="./?frame=home" method="POST">
	<input type="hidden" value="true" name="set_language">
	<input type="hidden" value="" name="LANGUAGE">
</form>
<script language="javascript">
function doChangeLanguage(id){
	document.tf_language.LANGUAGE.value=id;
	document.tf_language.submit();
}
</script>
</body>
</html>
<? require("common_end.php")?>
