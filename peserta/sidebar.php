<!-- Sidebar -->
<?php
// session_start();
// require 'peserta.php';
// $app = new peserta();
?>
<div class="sidebar my-primary-bg d-flex flex-column flex-shrink-0 p-3 px-md-3 px-lg-3 gap-4">
    <div class="nav-menu ">
        <ul class="nav nav-pills flex-column gap-2">
            <li class="nav-item">
                <?php
                if ($page == 'dashboard') {
                ?>
                    <a class="nav-link bg-white my-primary-clr" aria-current="page" href="index.php"><i class="bi-house-fill"></i> DASHBOARD</a>
                <?php
                } else {
                ?>
                    <a class="nav-link text-white" aria-current="page" href="index.php"><i class="bi-house"></i> DASHBOARD</a>
                <?php }; ?>
            </li>
            <li class="nav-item">
                <div class="dropdown">
                    <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bi-pass"></i> UJIAN</a>

                    <ul class="dropdown-menu">
                        <!-- <li><a class="dropdown-item text-primary" href="#"><i class="bi-plus-lg"></i> INPUT</a></li> -->
                        <?php
                        $get_mapel = $app->get_mapel();
                        foreach ($get_mapel as $m) :
                        ?>
                            <li><a class="dropdown-item text-primary" href="soal.php?kode_mapel=<?= $m['kode_mapel'] ?>"><?= $m['nama_mapel'] ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <?php
                if ($page == 'lihat_nilai') {
                ?>
                    <a class="nav-link bg-white my-primary-clr" aria-current="page" href="#"><i class="bi-file-text-fill"></i> LIHAT NILAI</a>
                <?php
                } else {
                ?>
                    <a class="nav-link text-white" aria-current="page" href="nilai.php"><i class="bi-file-text"></i> LIHAT NILAI</a>
                <?php }; ?>
            </li>
        </ul>

    </div>

    <?php
    $get_allsoal = $app->get_soal($_GET['kode_mapel']);
    // var_dump($get_allsoal);
    ?>
    <div class="sticky-top pt-2">
        <div class="row row-cols-5">
            <?php
            for ($i = 0; $i < count($get_allsoal); $i++) :
                $j = $app->getAnswer($get_allsoal[$i]['id_soal']);
                $j = ($j != null) ? $j['jawaban'] : "";
                // var_dump($j);
            ?>
                <a class="col p-1 m-1 btn border border-dark text-center bg-<?= ($j == "")? 'danger' : 'success' ?>" href="#formsoal_<?= $get_allsoal[$i]['id_soal'] ?>"><?= $i + 1 ?></a>
            <?php endfor; ?>
        </div>
    </div>
</div>
<!-- Sidebar selesai -->