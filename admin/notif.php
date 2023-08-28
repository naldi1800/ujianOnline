<?php

if($notif)
{
    echo $_SESSION['success-msg'];
    unset($_SESSION['success-msg']);
} 

?>