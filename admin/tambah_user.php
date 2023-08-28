<?php
$page = 'kelola_user';
session_start();
require 'admin.php';
$app = new admin();
$get_level = $app->get_level();
$submit = $app->tmbh_user();
?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah User</title>
    <?php require 'links.php'; ?>
</head>
<body>
<?php require 'navbar.php'?>
    <section class="d-flex">
        <?php include 'sidebar.php';?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-2 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Tambah User</h5>
                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?=date('h:i:s')?></span>
                </span>
            </div>

            <!-- Session Message -->
            <?php include 'notif.php'?>
            <!-- Session Message Selesai -->

            <!-- Form Tambah User -->
            <div class="w-100 overflow-hidden rounded-2">
                <div class="w-100 my-gradient p-2 px-4">
                    <h5 class="text-white"> <i class="bi-person-fill-add"></i> Form</h5>
                </div>

                <form class="p-3 my-gradient-border d-flex flex-column gap-3" action="<?=$submit?>" method="POST">

                    
                    <div class="row g-3">

                        <div class="col">
                            <div class="input-group border border-primary rounded-2 overflow-hidden">
                                <label class="p-2 my-primary-bg text-white">Username</label>
                                <input required type="text" class="form-control border-0" name="username" placeholder="Masukkan Username">
                            </div>
                        </div>

                        <div class="col">
                            <div class="input-group border border-primary rounded-2 overflow-hidden">
                                <label class="p-2 my-primary-bg text-white">Password</label>
                                <input required type="password" class="form-control border-0" name="password" placeholder="Masukkan Password">
                            </div>
                        </div>

                        <div class="col">
                            <div class="input-group border border-primary rounded-2 overflow-hidden">
                                <label class="p-2 my-primary-bg text-white">Level</label>
                                <select class="form-select" name="user_level" required>
                                <option selected>
                                    --Pilih Level--
                                </option>
                                <?php
                                foreach($get_level as $level) { ?>
                                <option value="<?=$level['id_level']?>"><?=$level['nama_level']?></option>
                                <?php } ?>
                                </select>
                            </div>
                        </div>

                    </div>

                    <button type="submit" class="btn btn-primary" name="submit-btn">Tambahkan</button>
                </form>
            </div>
            <!-- Form Tambah User Selesai -->
        </div>
        
    </section>

<script>
const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');

const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

// waktu
setInterval(function()
{
    $('#showTime').load('waktu.php');
}, 1000);
// waktu selesai
</script>
</body>
</html>