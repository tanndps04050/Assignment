<table width="100%" align="center" cellpadding="0" cellspacing="0">
<?
$code = $_lang=='vn' ? "vn_skype" : "vn_skype";
$sql = "select * from tbl_content where status=0 and parent in (select id from tbl_content_category	 where code='".$code."') order by sort, date_added";
$result = @mysql_query($sql,$conn);
while($row=mysql_fetch_assoc($result)){
?>	
	<tr><td align="center" style="padding:5px 0px 5px 0px"><b><?=$row['name']?></b></td></tr>
	<tr>
		<td align="center">
			<a href="skype:<?=$row['code']?>?call">   
			<img src="http://download.skype.com/errors/i/images/logos/skype_logo.png" style="border: none;" width="119" height="49" alt="<?=$row['name']?>"/></a>		</td>
	</tr>	
<? }?>	
</table>