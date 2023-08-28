<?php
$page = 'daftar_nilai';
session_start();
require 'guru.php';
$app = new guru();
$id_mapel = $_GET['kode_mapel'];
$get_mapel = $app->get_mapel_id($id_mapel);
foreach($get_mapel as $mapel);

$get_nilai = $app->get_nilai_id($id_mapel);
$nomor = 1;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Nilai : <?= $mapel['nama_mapel'] ?></title>
    <?php require 'links.php'; ?>
</head>
<body>
    <?php require 'navbar.php' ?>
    <section class="d-flex pt-5">
    <?php include 'sidebar.php'; ?>
        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-4 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Daftar Nilai <?= $mapel['nama_mapel'] ?></h5>

                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?= date('h:i:s') ?></span>
                </span>
            </div>

            <table class="table table-bordered border-primary">
            <thead class="bg-primary text-white">
                <tr>
                <th scope="col">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Nilai</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach($get_nilai as $nilai)
                {
                    $get_user = $app->get_user($nilai['id_user']);
                    foreach($get_user  as $user);
                ?>
                <tr>
                <th scope="row"><?=$nomor++?></th>
                <td><?=$user['username']?></td>
                <td><?=$nilai['nilai']?></td>
                </tr>
                <?php } ?>
            </tbody>
            </table>

        </div>


    </section>
    
</body>
</html>