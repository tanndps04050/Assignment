<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<?
$code = $_lang=='vn' ? "vn_yahoo" : "vn_yahoo";
$sql = "select * from tbl_content where status=0 and parent in (select id from tbl_content_category where code='".$code."') order by sort, date_added";
$result = @mysql_query($sql,$conn);
while($row=mysql_fetch_assoc($result)){
?>
  <tr><td align="center" style="padding:5px 0px 5px 0px"><b><?=$row['name']?></b></td></tr>	
  <tr>
	<td height="25" align="center" valign="middle"><a href="ymsgr:sendIM?<?=$row['code']?>">
		<img border="0" src="http://mail.opi.yahoo.com/online?u=<?=$row['code']?>&m=g&t=2" alt="<?=$row['name']?>"></a></td>
  </tr>	    
<? }?>		 
</table>