<link href="../css/css.css" rel="stylesheet" type="text/css">
<table align="center" border="0" width="98%" cellpadding="0" cellspacing="0">
<?
if ($_REQUEST['p']!='') $p=killInjection($_REQUEST['p']);

$code = $_lang == 'vn' ? 'vn_news' : 'en_news';
$parentWhere = "and parent = (select id from tbl_content_category where code='".$code."')";
$sql = "select * from tbl_content where status=0 $parentWhere order by sort,date_added desc limit 1";
$result = @mysql_query($sql,$conn);
while($a=mysql_fetch_assoc($result)){
?>
<tr><td height="22" style="padding-left:5px; padding-top:5px"><span style="font-family:Tahoma; font-size:14px; color:#0033FF"><?=$a['name']?></span></td></tr>	
	<tr>
		<td>
			<?
			if($a['image'] || $a['image_large']){
				$img = $a['image']!='' ? $a['image'] : $a['image_large'];
			?>
				<img border="0" src="<?=$img?>" width="120px"  height="90px" align="left" vspace="10" hspace="10"> 
			<? }?>
			<br/>
			<?=$a['detail_short']?>
		</td>
	</tr>
<? }?>
</table>
<br/>
<table align="center" border="0" width="98%" cellpadding="0" cellspacing="0">	
	<tr>
	  <td valign="top"><img src="images/icon1.gif" hspace="5" border="0"/>&nbsp;&nbsp;<?=$_lang=="vn" ? "<span style='font-family:Tahoma; font-size:12px; color:#0000000; font-weight:600'>Các tin đã đăng</span>" : "More news"?></td>
	</tr>	
	<tr><td height="10px"></td></tr>
</table>

<table align="center" border="0" width="98%" cellpadding="0" cellspacing="0">
<?
$p1 = 1;
$p2 = 10;
$per_page = 5;
$p=0;
if ($_REQUEST['p']!='') $p=killInjection($_REQUEST['p']);

$code = $_lang == 'vn' ? 'vn_news' : 'en_news';
$parentWhere = "and parent = (select id from tbl_content_category where code='".$code."')";
$sql = "select * from tbl_content where status=0 AND id<>'".$a['id']."' AND (parent=8 or parent=80) $parentWhere order by sort,date_added desc limit ".$p1.",".$p2;

$result = @mysql_query($sql,$conn);
$total = countRecord("tbl_content","status=0 AND (parent=8 or parent=80) AND lang='".$_lang."'");
while($n=mysql_fetch_assoc($result)){
?>
	<tr> 
		<td width="30"><img src="images/icon_next.jpg" border="0" hspace="5" /></td>
		<td width="900" valign="middle">
			<a class="text_yellow" href="./?frame=news_detail&id=<?=$n['id']?>&p=<?=$_REQUEST['p']?>"><?=$n['name']?></a></td>		
	</tr>
	<tr><td height="5px" colspan="2"></td></tr>
<? }?>
</table>

<table align="center" cellSpacing="0" cellPadding="0" width="98%" border="0">
<?
$rowPage       = $_lang=="vn" ? "Tin" : "news";
$pagePage       = $_lang=="vn" ? "Trang" : "Page";
$titleFirst     = $_lang=="vn" ? "Đầu Tiên" : "First";
$titlePrevious  = $_lang=="vn" ? "Về trước" : "Previous";
$titleNext      = $_lang=="vn" ? "Tiếp theo" : "Next";
$titleLast      = $_lang=="vn" ? "Cuối cùng" : "Last";

$pages = countPages($total,$per_page);
echo '<tr><td colspan="2" align="center"></td></tr>';
echo '<tr>';
echo '<td class="smallfont" align="right">'.$pagePage.' : ';
$param="";
if ($p>1) echo '<a class="aLink3" title="'.$titleFirst.'" href="./?frame='.$_REQUEST['frame'].'&id='.$_REQUEST['id'].''.$param.'&p=0">[&lt;&lt;]</a> ';
if ($p>0) echo '<a class="aLink3" title="'.$titlePrevious.'" href="./?frame='.$_REQUEST['frame'].'&id='.$_REQUEST['id'].''.$param.'&p='.($p-1).'">[&lt;]</a> ';
$from=($p-10>0?$p-10:0);
$to=($p+10<$pages?$p+10:$pages);
for ($i=$from;$i<$to;$i++){
	if ($i!=$p) echo '<a class="aLink3" href="./?frame='.$_REQUEST['frame'].'&id='.$_REQUEST['id'].''.$param.'&p='.$i.'">'.($i+1).' </a>';
	else echo '<b>'.($i+1).'</b> ';
}
if ($p<$i-1) echo '<a class="aLink3" title="'.$titleNext.'" href="./?frame='.$_REQUEST['frame'].'&id='.$_REQUEST['id'].''.$param.'&p='.($p+1).'">[&gt;]</a> ';
if ($p<$pages-1) echo '<a class="aLink3" title="'.$titleLast.'" href="./?frame='.$_REQUEST['frame'].'&id='.$_REQUEST['id'].''.$param.'&p='.($pages-1).'">[&gt;&gt;]</a>'; 
echo '</td></tr>';
?>
</table><br>