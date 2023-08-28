<?php
$page = 'soal';
session_start();
require 'peserta.php';
$app = new peserta();
$mapel = $app->get_mapel_id($_GET['kode_mapel']);
$soal = $app->get_soal($_GET['kode_mapel']);
$answer = $app->setAnswer();
$saveAll = $app->save($_GET['kode_mapel']);
$finish = 0;
// exit();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal</title>
    <?php require 'links.php'; ?>
</head>

<body>
    <?php require 'navbar.php' ?>
    <section class="d-flex">
        <?php include 'sidebar.php'; ?>
        <div class="container-fluid p-3 d-flex flex-column gap-3">
            <div class="d-flex flex-column gap-2 w-100 my-gradient bg-opacity-50 p-4 rounded-2">
                <!-- <?= var_dump($soal) ?> -->
                <h5 class="text-white">Ujian <?= $mapel['nama_mapel'] ?></h5>
                <span class="text-white">
                    Waktu Lokal(makassar) : <span id="showTime"><?= date('h:i:s') ?></span>
                </span>
            </div>

            <?php $nomor = 0;
            foreach ($soal as $s) :
                $pilihan = explode(",", $s['pilihan_ganda']);
                // $pilihan = $s['pilihan_ganda'];
                // var_dump($pilihan);
                $opt = ['A', 'B', 'C', 'D',];
                $i = 0;
                $id_soal = $s['id_soal'];
                $nomor++;
                $jawaban = $app->getAnswer($id_soal);
                $jawaban = ($jawaban != null) ? $jawaban['jawaban'] : "";
                $finish = ($jawaban != "") ? $finish + 1 : $finish;
                // var_dump($jawaban);
                // var_dump($finish);
                // var_dump($nomor);
                // exit;
                $image = null;
                if ($s['extension'] != "")
                    $image = $app->imageFolderPath . $s['kode_mapel'] . "-" . $s['id_soal'] . "." . $s['extension'];

            ?>
                <form action="<?= $answer ?>" method="post" name="<?= "formsoal_" . $id_soal ?>" id="<?= "formsoal_" . $id_soal ?>">
                    <div class="w-100 overflow-hidden rounded-2" id="<?=$nomor?>">
                        <div class="w-100 my-gradient p-2">
                            <h5 class="text-white"> Soal No <?= $nomor ?></h5>
                            <input type="hidden" name="nomorSoal" value="<?=$nomor?>">
                        </div>
                        <div class="p-3 d-flex flex-column gap-2 my-gradient-border">
                            <h5><?= $s['soal_ujian'] ?></h5>
                            <?php if ($image != null) : ?>
                                <img src="<?= $image ?>" alt="" width="550">
                            <?php endif; ?>
                            <input type="hidden" name="id_soal" value="<?= $id_soal ?>">
                            <input type="hidden" name="kode_mapel" value="<?= $_GET['kode_mapel'] ?>">
                            <?php foreach ($pilihan as $p) : ?>
                                <div class="d-flex">
                                    <span><?=$opt[$i++] .""?></span>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="answer_<?= $id_soal ?>" value="<?= $p ?>" <?= ($jawaban == $p) ? 'checked' : '' ?>>
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            <?= $p ?>
                                        </label>
                                    </div>
                                </div>
                                <!-- <input type="radio"></input> -->
                            <?php endforeach; ?>
                            <div class="row">
                                <button type="submit" name="saveAnswer" class="btn btn-info col-2">Simpan</button>
                                <label for="" class="col-3 my-auto"><?= ($jawaban != "") ? "Jawaban disimpan" : "" ?></label>
                            </div>
                        </div>
                    </div>
                </form>
            <?php endforeach;

            ?>
            <div class="row">
                <form action="<?= $saveAll ?>" method="post" class="col-2 mx-auto" onsubmit="return confirmSubmit()">
                    <input type="submit" name="saveALl" class="btn btn-primary text-center" value="Save All Answer" <?= ($finish < $nomor) ? 'disabled' : '' ?>>
                </form>
            </div>
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

        function confirmSubmit() {
            // Display a confirmation dialog
            var confirmation = confirm("Apakah anda yakin menyelesaikan nya?");

            // Return true if the user clicks "OK" to confirm, and false otherwise
            return confirmation;
        }
    </script>
</body>

</html>