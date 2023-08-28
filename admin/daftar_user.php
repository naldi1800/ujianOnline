<?php
$page = 'kelola_user';
$batas = 4;
session_start();
require 'admin.php';
$app = new admin();

$halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

$prev = $halaman - 1;
$next = $halaman + 1;

$get_level = $app->get_level();

$get_user = $app->get_user($halaman_awal,$batas);
$link_halaman = 'daftar_user.php?halaman=';

if(isset($_GET['sort-level']))
{
    $id_level = $_GET['sort-level'];

    $get_user = $app->user_by_level($id_level, $halaman_awal,$batas);

    if($id_level == '') return header("Location: daftar_user.php");

    $link_halaman = 'daftar_user.php?sort-level='.$id_level.'&&halaman=';
}

$rowsCount = mysqli_num_rows($get_user);
$__page = ceil($rowsCount) / 2;


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar User</title>
    <?php require 'links.php'; ?>
</head>
<body>
<?php require 'navbar.php'?>
    <section class="d-flex">
        <?php include 'sidebar.php';?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">

            <div class="d-flex flex-column gap-2 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Daftar User</h5>
                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?=date('H:i:s')?></span>
                </span>
            </div>

            <form action="" method="get">
                <div class="input-group input-group-sm w-25">
                    <label class="btn btn-primary"><i class="bi-filter-left"></i></label>
                    <select name="sort-level" class="form-select">
                        <option value="">Semua</option>
                        <?php
                        $get_level = $app->get_level(); 
                        foreach($get_level as $lvl)
                        {?>
                        <option value="<?=$lvl['id_level']?>"><?=$lvl['nama_level']?></option>
                        <?php } ?>
                    </select>
                    <button class="btn btn-primary" type="submit">Filter</button>
                </div>
            </form>

            <!-- Session Message -->
            <?php include 'notif.php'?>
            <!-- Session Message Selesai -->

            <!-- table -->
            <table class="table table-bordered border-primary table-hover">
            <thead class="my-primary-bg text-white">
                <tr>
                    <th >No</th>
                    <th>Username</th>
                    <th>Level</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php

                $no = $halaman_awal+1;

                foreach($get_user as $user)
                {

                    $get_level_id = $app->get_lvl_id($user['level']);
                    foreach($get_level_id as $level);
                ?>
                <tr>
                    <th scope="row"><?=$no++?></th>
                    <td><?=$user['username']?></td>
                    <td><?=$level['nama_level']?></td>
                    <td class="text-center"><a href="#" class="btn btn-sm btn-primary"><i class="bi-pencil-square"></i></a></td>
                </tr>
                <?php } ?>
            </tbody>
            </table>
            <!-- table selesai -->
            <div class="d-flex gap-2 align-items-center">
                <?php
                if($halaman > 1  and $no >= $batas)
                {
                ?>
                <a href="<?=$link_halaman.$prev?>" class="btn btn-primary"><i class="bi-chevron-left"></i> Sebelumnya </a>
                <?php
                }
                ?>
                <?php
                if($halaman >= 1)
                {
                ?>
                <a href="<?=$link_halaman.$next?>" class="btn btn-primary justify-content-end">Selanjutnya <i class="bi-chevron-right"></i></a>
                <?php
                }
                ?>
            </div>

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