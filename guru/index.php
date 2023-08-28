<?php
$page = 'dashboard';
session_start();
require 'guru.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Guru</title>
    <?php require 'links.php';?>
</head>
<body>
    <?php require 'navbar.php'?>
    <section class="d-flex pt-5">
        <?php include 'sidebar.php';?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-4 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Dashboard</h5>

                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?=date('h:i:s')?></span>
                </span>
            </div>

            <!-- Card Petunjuk -->
            <div class="w-100 overflow-hidden rounded-2">
                <div class="w-100 my-gradient p-2">
                    <h5 class="text-white"> <i class="bi-info-circle-fill"></i> Petunjuk Penggunaan</h5>
                </div>
                <div class="p-3 d-flex flex-column gap-2 my-gradient-border">
                    <h5>1.Kelola Soal Ujian</h5>
                    <p>Pada sidebar halaman, Silahkan klik menu kelola soal lalu pilih <span class="text-primary border border-dark-subtle p-1 rounded-2"><i class="bi-plus-lg"></i> INPUT</span></p> </p>
                    <h5>2.Kelola Profile</h5>
                    <p>Pada navbar halaman, Silahkan klik menu bergambar <span class="badge bg-primary p-1"><i class="bi-person-fill"></i></span></p>
                </div>
            </div>
            <!-- Card Petunjuk Selesai -->
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