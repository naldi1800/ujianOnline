<?php
session_start();
// session_destroy();

if(!isset($_SESSION['login']))
{
    return header("Location: auth/index.php");
}
else echo '<script>history.back()</script>'; 
?>