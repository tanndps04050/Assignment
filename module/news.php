<link href="../css/css.css" rel="stylesheet" type="text/css" />
<table border="0" width="176" cellspacing="3" cellpadding="0">
<?
$code = $_lang == 'vn' ? 'vn_news' : 'en_news';
$parentWhere = "and parent = (select id from tbl_content_category where code='$code')";

$parentRecord = getRecord("tbl_content","1=1 ".$parentWhere);

$cat = killInjection($_REQUEST['cat']);
if ($cat=='') $cat = $parentRecord['parent'];
$per_page = 10;
$p=0;
if ($_REQUEST['p']!='') $p=killInjection($_REQUEST['p']);

$sql = "select * from tbl_content where status=0 $parentWhere order by sort,date_added desc limit ".$per_page*$p.",".$per_page;
$result = @mysql_query($sql,$conn);
$i=0;
while($row=mysql_fetch_assoc($result))
{ ?>

	<tr>
      <td><a href="./?frame=news_detail&id=<?=$row['id']?>" class="text_news"><?=$row['name']?></a></td>
    </tr>
<? }?>
	<tr>
       <td align="right"><a href="./?frame=news_all" class="text_dt"><?=$_lang=='vn' ?'Xem tất cả':'See all'?> &gt;&gt;</a> </td>
    </tr>
</table>