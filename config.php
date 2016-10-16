<? if(!session_id()); session_start();
$hostname     = "localhost";
$username     = "root";
$password     = "123456";
$databasename = "shop";
$visitorTimeout = 900; //=15 * 60

$MAXPAGE = 10;
$multiLanguage = 1;//0 : single  ;  1 : multi

$arrLanguage = array(
	array('vn','Việt Nam'),
	array('en','English')

);

?>