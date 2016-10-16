<? 
$row = 1;
$col = 10;

$p=0;
if ($_REQUEST['p']!='') $p=$_REQUEST['p'];
$sql = "select * from tbl_content where status=0 AND (parent=74 OR parent=75) AND lang='".$_lang."' order by sort,date_added desc limit ".$row*$col*$p.",".$row*$col;
$result = @mysql_query($sql,$conn);

$total = countRecord("tbl_content","status=0 AND (parent=74 OR parent=75) AND lang='".$_lang."'");
if($total==0){
?>
<?
}else{
?>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<table align="center" cellspacing="0" cellpadding="0" width="100%" border="0">
  <?
for($i=0; $i<$row; $i++){
?>
  <tr>   
    <td>
	<? for($j=0; $j<$col&&$products=mysql_fetch_assoc($result); $j++){
		$pro = getRecord("tbl_content","id=".$products['id'])?>       
          <table width="91px" height="52px" border="0" cellspacing="0" cellpadding="0" style="float:left; padding-left:5px" align="center">
            <tr>
              <td valign="middle" align="center">
			  <a href="<?=$pro['code']?>" title="<?=$pro['name']?>" target="_blank">               
                	<img src="<?=$pro['image']?>" width="91" height="52" border="0" hspace="5"/>              					
              </a></td>
            </tr>           
          </table>
      <?
}
while($j<$col){
	echo "";
	$j=$j+1;
}
?></td>
  </tr>
  <? }?>
</table>
 
<? }?>		