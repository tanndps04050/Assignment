<script language="javascript" src="http://www.vnexpress.net/Service/Forex_Content.js"></script>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<table width="100%" border="0">
  <tr>
    <td height="2px"></td>
  </tr>
</table>

<table width="100%" border="1" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" bordercolor="#666666" style="border-collapse:collapse">
	<tr>
		<td width="48%" bgcolor="#FFFFFF"><div align="center"><b><?=$_lang=='vn' ?'Mã ngoại tệ' :'Currency code'?></b></div></td>
			<td width="52%" height="17" bgcolor="#FFFFFF"><div align="center"><b><?=$_lang=='vn' ?'Giá bán' :'Price'?></b></div></td>	
	</tr>
<?
$i=0;
while($i<12){
	$vForex = 'vForexs['.$i.']';
	$vCost = 'vCosts['.$i++.']';
	?>
	  <tr>
			<td width="48%" bgcolor="#FFFFFF"><div align="center">&nbsp;<script language="javascript">document.write(<?=$vForex?>);</script></div></td>
			<td width="52%" height="17" bgcolor="#FFFFFF"><div align="center"><script language="javascript">document.write(<?=$vCost?>);</script>&nbsp;</div></td>
	  </tr> 	
	<?
}
?>	                    
</table>