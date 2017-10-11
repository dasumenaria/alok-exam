<?php 
date_default_timezone_set('asia/kolkata');
error_reporting(0);
@ini_set('display_errors',0);
ini_set('max_execution_time', 200000);
@session_start();
@$session=$_SESSION['sess'];
$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = $_SESSION['session']; 
$con = mysql_connect($dbHost, $dbUser, $dbPass) or die('Error Connecting to MySQL DataBase' .mysql_error());
mysql_select_db($dbName,$con);
?>