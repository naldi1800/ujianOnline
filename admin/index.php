<?php
session_start();
$page = 'dashboard';
require 'admin.php';
$app = new admin();
$soal = $app->get_soal_count();
$guru = $app->get_guru_count();
$siswa = $app->get_siswa_count();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Admin</title>
    <?php require 'links.php';?>
</head>
<body>
    <?php require 'navbar.php'?>
    <section class="d-flex">
        <?php include 'sidebar.php';?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
        <div class="d-flex flex-column gap-2 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Dashboard</h5>
                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?=date('h:i:s')?></span>
                </span>
            </div>

            <div class="d-flex gap-4 w-100 flex-wrap">
                <!-- Card Soal -->
                <div class="my-primary-bg text-white border-0 shadow p-3 rounded-2 dashboard-card" style="width: 20rem;">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                        <h5 class="card-title">Jumlah Soal</h5>
                        <i class="bi-pass-fill"></i>
                        </div>
                        <?= $soal ?>
                        <!-- <a href="#" class="text-white fst-italic">Lihat</a> -->
                    </div>
                </div>
                <!-- Card Soal Selesai -->

                <!-- Card User -->
                <div class="my-primary-bg text-white border-0 shadow p-3 rounded-2 dashboard-card" style="width: 20rem;">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                        <h5 class="card-title">Jumlah Guru</h5>
                        <i class="bi-person-fill"></i>
                        </div>
                        <?= $guru ?>
                        <!-- <a href="#" class="text-white fst-italic">Lihat</a> -->
                    </div>
                </div>

                <div class="my-primary-bg text-white border-0 shadow p-3 rounded-2 dashboard-card" style="width: 20rem;">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                        <h5 class="card-title">Jumlah Siswa</h5>
                        <i class="bi-person-fill"></i>
                        </div>
                        <?= $siswa ?>
                        <!-- <a href="#" class="text-white fst-italic">Lihat</a> -->
                    </div>
                </div>
                <!-- Card User Selesai -->
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