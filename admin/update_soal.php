<?php
$page = 'lihat_soal';
session_start();
require 'admin.php';
$app = new admin();

$id_soal = $_GET['id_soal'];
$get_soal = $app->get_soal_id($id_soal);
foreach ($get_soal as $soal);

$update_soal = $app->update_soal($id_soal);

$jam = $soal['jadwal'];
$pisah_jam = explode(" - ", $jam);
$jam_mulai = $pisah_jam[0];
$jam_selesai = $pisah_jam[1];

$pilihanGanda = $soal['pilihan_ganda'];
$pisah_Pilihan = explode(",", $pilihanGanda);

$tanggal_ujian = date_create($soal['tanggal']);

$tgl_ujian = date_format($tanggal_ujian, "Y-m-d");

$get_mapel = $app->get_mapel_id($soal['kode_mapel']);

foreach ($get_mapel as $mapel);

$nama_mapel = $mapel['nama_mapel'];
$image = "";
if ($soal['extension'] != "")
    $image = $app->imageFolderPath . $soal['kode_mapel'] . "-" . $soal['id_soal'] . "." . $soal['extension'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal <?= $soal['nama_mapel'] ?></title>
    <?php require 'links.php'; ?>
</head>

<body>
    <?php require 'navbar.php' ?>
    <section class="d-flex">
        <?php include 'sidebar.php'; ?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-4 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Soal </h5>

                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?= date('h:i:s') ?></span>
                </span>
            </div>

            <!-- Notif -->
            <?php if (isset($_SESSION['soal-msg'])) {
                echo $_SESSION['soal-msg'];
                unset($_SESSION['soal-msg']);
            }
            ?>
            <!-- Notif -->

            <!-- Card Soal -->
            <div class="w-100 overflow-hidden rounded-2">
                <form action="<?= $update_soal ?>" method="POST" class="p-3 d-flex gap-3 flex-wrap" enctype="multipart/form-data">
                    <input type="hidden" name="nama_mapel" value="<?= $nama_mapel ?>">
                    <input type="text" name="kode_mapel" value="<?= $soal['kode_mapel'] ?>">
                    <div class="input-group w-25">
                        <label class="my-primary-bg text-white p-2 rounded-start-2">Tanggal Ujian</label>
                        <input type="date" name="tgl_ujian" class="form-control" value="<?= $tgl_ujian ?>" required>
                    </div>
                    <div class="input-group w-25">
                        <label class="my-primary-bg text-white p-2 rounded-start-2">Jam Mulai</label>
                        <input type="time" name="jam_mulai" class="form-control" value="<?= $jam_mulai ?>" required>
                    </div>
                    <div class="input-group w-25">
                        <label class="my-primary-bg text-white p-2 rounded-start-2">Jam Selesai</label>
                        <input type="time" name="jam_selesai" class="form-control" value="<?= $jam_selesai ?>" required>
                    </div>
                    <div class="input-group">
                        <textarea name="soal" class="form-control border-primary ckeditor"><?= $soal['soal_ujian'] ?></textarea>
                    </div>
                    <div class="input-group">
                        <input type="file" accept="image/png, image/jpeg" name="image" id="image" class="form-control">
                    </div>
                    <div id="preview" <?= ($image == "") ? 'hidden' : '' ?>>
                        <img src="<?= $image ?>" alt="" width="150" id="imagePreview">
                    </div>
                    <div class="input-group">
                        <label class="p-2 my-primary-bg text-white rounded-start-2">Pilihan Ganda</label>
                        <input type="text" name="pilihan[]" class="form-control" value="<?= $pisah_Pilihan[0] ?>" required>
                    </div>
                    <div class="input-group">
                        <label class="p-2 my-primary-bg text-white rounded-start-2">Pilihan Ganda</label>
                        <input type="text" name="pilihan[]" class="form-control" value="<?= $pisah_Pilihan[1] ?>" required>
                    </div>
                    <div class="input-group">
                        <label class="p-2 my-primary-bg text-white rounded-start-2">Pilihan Ganda</label>
                        <input type="text" name="pilihan[]" class="form-control" value="<?= $pisah_Pilihan[2] ?>" required>
                    </div>
                    <div class="input-group" required>
                        <label class="p-2 my-primary-bg text-white rounded-start-2">Pilihan Ganda</label>
                        <input type="text" name="pilihan[]" class="form-control" value="<?= $pisah_Pilihan[3] ?>">
                    </div>

                    <div class="input-group" required>
                        <label class="p-2 my-primary-bg text-white rounded-start-2">Kunci Jawaban</label>
                        <input type="text" name="kunci_jwb" class="form-control" value="<?= $soal['kunci_jawaban'] ?>" required>
                    </div>
                    <button type="submit" class="btn btn-primary" name="submitSoal-Btn">Submit</button>
                    <script src="../ckeditor/ckeditor.js" type="text/javaScript"></script>
                </form>
            </div>
            <!-- Card Soal Selesai -->
        </div>

    </section>

    <script>
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
        const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

        // waktu
        setInterval(function() {
            $('#showTime').load('waktu.php');
        }, 1000);
        // waktu selesai
    </script>
    <script>
        var img = document.getElementById('image')
        var preview = document.getElementById('preview')
        var imagePreview = document.getElementById('imagePreview')

        img.onchange = evt => {
            console.log("tes")
            const [file] = img.files
            if (file) {
                imagePreview.src = URL.createObjectURL(file)
                preview.hidden = false
            }
        }
    </script>
</body>

</html>