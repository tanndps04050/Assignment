<!--<script language="javascript">
function chkImage( $param, $data, $item ){
if( !empty( $data ) ){
$d_match = preg_match( "/^(image)\/(gif|png|bmp|jpeg|jpg|pjpeg)/i", $data );
if( $d_match <= 0 ){
$this->err_msg_[$param] = $item;
} else {
return $data;
}}
</script>-->

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<?
$code = $_lang=='vn' ? "vn_banner" : "en_banner";
$sql = "select * from tbl_content where status=0 and parent in (select id from tbl_content_category where code='".$code."') order by sort, date_added";
$result = @mysql_query($sql,$conn);
while($row=mysql_fetch_assoc($result)){
?>
<tr>
  <td align="center">
    <?  $str = substr($row['image'],-3);	
		if($str='swf')
		{?>
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="571" height="245">
		  <param name="movie" value="<?=$row['image']?>" />
		  <param name="quality" value="high" />
		  <embed src="<?=$row['image']?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="571" height="245">
		  </embed>
            </object>
		<? }
		else if($str='jpg' || $str='gif' || $str='png' || $str='bmp'){?>
			<a href="<?=$row['code']?>" target="_blank"><img border="0" src="<?=$row['image']?>" width="571" height="245"></a>
		<? }
		
	?>	 					
  </td>
</tr>
<? }
?>
</table>