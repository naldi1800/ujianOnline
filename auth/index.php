<?php
require 'auth.php';
session_start();
$auth = new auth();
$masuk = $auth->login();
$data_lvl = $auth->get_all_level();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/css/login.css">
    <script src="../assets/js/login.js" defer></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/bootstrap-icons-1.10.3/bootstrap-icons.css">
    <!-- <script src="../assets/js/bootstrap.bundle.min.js"></script> -->
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <img src="../assets/img/logo.png">
            <span class="fs-3">SILAHKAN LOGIN</span>
            <form action="<?=$masuk?>" method="POST">
                <div class="input-group">
                    <label class="btn btn-light"><i class="bi-person-fill"></i></label>
                    <input type="text" class="form-control" placeholder="Username" name="user" style="box-shadow: none;outline:none;">
                </div>
                <div class="input-group">
                    <label class="btn btn-light"><i class="bi-person-fill-lock"></i></label>
                    <input type="password" name="pass" class="form-control" placeholder="Password" style="box-shadow: none;outline:none;"  id="passInp">
                </div>
                <div class="input-group">
                    <label class="btn btn-light">
                        <i class="bi-pass-fill"></i> 
                    </label>
                    <select name="level" class="form-select">
                        <option selected>Pilih Level</option>
                        <?php
                        foreach($data_lvl as $lvl)
                        {
                        ?>
                        <option value="<?=$lvl['id_level']?>"><?=$lvl['nama_level']?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>
                <button type="submit" name="login-btn" class="btn btn-primary">MASUK</button>
            </form>
        </div>
    </div>
</body>
</html>