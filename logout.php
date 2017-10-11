<?php
session_start();
session_destroy();
session_unset();
ob_start();
header("location:login.php");
ob_flush();
?>
