<?php
require_once("geoip.inc");

$gi = geoip_open("GeoIP.dat",GEOIP_STANDARD);

$country_code = geoip_country_code_by_addr($gi, $_SERVER['REMOTE_ADDR']);
//$country_code = geoip_country_code_by_addr($gi, "202.44.32.20");

geoip_close($gi);
$cb=$_REQUEST['callback'];
echo "$cb({\"country\":\"$country_code\"})";

?>