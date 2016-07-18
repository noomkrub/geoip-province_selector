<?php
include("config.php");
include("function.php");

if ($_REQUEST['m']=="province"){
	$qry="select province_name,province_code from world_province where country_code='".$_REQUEST['country_code']."' order by province_name";
	$result=opendb($qry);
	if(mysql_error()){echo mysql_error();echo $qry;}
	$count=mysql_num_rows($result);
	$country=$_REQUEST['country_code'];
	for($i=0;$i<$count;$i++){
		list($name,$code)=mysql_fetch_row($result);
		$province[$code]=$name;
		}
	$body=$_GET['callback'] . '('.json_encode($province).')';
	
	//echo $_GET['callback'] . '('.json_encode($data).')';
	}
$callback = isset($_GET['callback']) ? preg_replace('/[^a-z0-9$_]/si', '', $_GET['callback']) : false;
header('Content-Type: ' . ($callback ? 'application/javascript' : 'application/json') . ';charset=UTF-8');

echo $body;

?>


