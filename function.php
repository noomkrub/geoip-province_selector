<?php

function opendb ($qry){
	global $dbhost,$dbname,$dbuser,$dbpass;
	$connect=mysql_connect($dbhost,$dbuser,$dbpass);
	$db=mysql_select_db($dbname,$connect);
	$result=mysql_query($qry);
	return($result);
	}


?>