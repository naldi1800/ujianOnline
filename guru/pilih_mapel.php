<?php
$page = 'daftar_nilai';
session_start();
require 'guru.php';
$app = new guru();
$get_mapel = $app->get_mapel();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Soal Ujian</title>
    <?php require 'links.php';?>
</head>
<body>
    <?php require 'navbar.php'?>
    <section class="d-flex pt-5">
        <?php include 'sidebar.php';?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex gap-4 w-100 my-gradient bg-opacity-50 p-4 rounded-2 flex-column">
                <h5 class="text-white" contenteditable="true">Input Soal</h5>
                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?=date('h:i:s')?></span>
                </span>
            </div>

            <!-- Session Message -->
            <?php include 'notif.php'?>
            <!-- Session Message Selesai -->
        
            <form action="lihat_nilai.php" method="get" class="p-3 d-flex flex-column gap-3">
                <div class="input-group">
                    <label class="p-2 my-primary-bg text-white rounded-start-2">Pilih Mapel</label>
                    <select name="kode_mapel" class="form-select" required>
                        <option selected>--Pilih Mapel--</option>
                        <?php
                        foreach($get_mapel as $mapel)
                        {
                        ?>
                        <option value="<?=$mapel['kode_mapel']?>">
                        <?=$mapel['nama_mapel']?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Selanjutnya</button>
            </form>
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