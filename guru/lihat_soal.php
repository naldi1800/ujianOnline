<?php
$page = 'lihat_soal';
session_start();
require 'guru.php';
$app = new guru();

$id_mapel = $_GET['kode_mapel'];

$get_mapel = $app->get_mapel_id($id_mapel);
foreach ($get_mapel as $mapel);

$get_soal = $app->get_soal_mapel_id($id_mapel);

$hapusSoal = $app->hapusSoal();

// include 'getImage.php';
if (!$_GET['kode_mapel']) {
    $_SESSION['mapel-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert"><strong>Silahkan Pilih Mapel Terlebih Dahulu !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
}

if (mysqli_num_rows($get_soal) == 0) {
    $_SESSION['mapel-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert"><strong>Soal Mapel ' . $mapel['nama_mapel'] . ' Belum Diinput!</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal <?= $mapel['nama_mapel'] ?></title>
    <?php require 'links.php'; ?>
</head>

<body>
    <?php require 'navbar.php' ?>
    <section class="d-flex pt-5">
        <?php include 'sidebar.php'; ?>

        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-4 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <h5 class="text-white">Soal </h5>

                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?= date('h:i:s') ?></span>
                </span>
            </div>

            <!-- Notif -->
            <?php if (isset($_SESSION['mapel-msg'])) {
                echo $_SESSION['mapel-msg'];
                unset($_SESSION['mapel-msg']);
            }
            ?>
            <!-- Notif -->

            <!-- Card Soal -->
            <div class="w-100 overflow-hidden rounded-2">
                <h2 class="mb-4">Daftar Soal</h2>

                <?php
                $nomor = 1;
                foreach ($get_soal as $soal) {
                    $plhGanda = $soal['pilihan_ganda'];
                    $abc = 'A.,B.,C.,D.';

                    $cetakAbc  = explode(",", $abc);
                    $cetakPlhGanda = explode(",", $plhGanda);
                    $i = 0;
                    $image = null;
                    if ($soal['extension'] != "")
                        $image = $app->imageFolderPath . $soal['kode_mapel'] . "-" . $soal['id_soal'] . "." . $soal['extension'];

                ?>
                    <div class="card border-primary mb-2">
                        <div class="card-body d-flex flex-column gap-2">
                            <h5 class="card-title">No. <?= $nomor++ ?></h5>
                            <p class="card-text text-capitalize"><?= $soal['soal_ujian'] ?></p>
                            <?php if ($image != null) : ?>
                                <img src="<?= $image ?>" alt="" width="600">
                            <?php endif; ?>
                            <div class="d-flex flex-column gap-4">
                                <span class="fw-bold">Pilihan Ganda : </span>
                                <?php
                                foreach ($cetakPlhGanda as $cetak) {
                                ?>
                                    <span><?= $cetakAbc[$i] . " " . $cetakPlhGanda[$i] ?></span>
                                <?php
                                    $i++;
                                }
                                ?>
                            </div>
                            <span class="fw-bold">Kunci Jawaban = <?= $soal['kunci_jawaban'] ?></span>
                            <a href="update_soal.php?id_soal=<?= $soal['id_soal'] ?>" class="btn btn-sm btn-primary">Update</a>
                            <form action="<?=$hapusSoal?>" method="POST">
                                    <input type="hidden" name="kodeMapel" value="<?=$_GET['kode_mapel']?>">
                                    <button type="submit" class="btn btn-danger w-100" name="hapusSoal-btn" value="<?= $soal['id_soal'] ?>">Hapus</button>
                            </form>
                        </div>
                    </div>
                <?php } ?>
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
</body>

</html>