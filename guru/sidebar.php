<!-- Sidebar -->
<div class="sidebar my-primary-bg d-flex flex-column flex-shrink-0 p-3 px-md-3 px-lg-3 gap-4">
    <div class="nav-menu">
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
                    <?php
                    if ($page == 'input_soal' || $page == 'lihat_soal') {
                    ?>
                        <a class="nav-link bg-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-pass"></i> SOAL
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="input_soal.php"><i class="bi-plus-lg"></i> INPUT</a></li>

                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=BIND-135">BAHASA INDONESIA</a></li>
                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=BING-246">BAHASA INGGRIS</a></li>
                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=MTK-795">MATEMATIKA</a></li>
                        </ul>
                    <?php
                    } else {
                    ?>
                        <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-pass"></i> SOAL
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="input_soal.php"><i class="bi-plus-lg"></i> INPUT</a></li>

                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=BIND-135">BAHASA INDONESIA</a></li>
                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=BING-246">BAHASA INGGRIS</a></li>
                            <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=MTK-795">MATEMATIKA</a></li>
                        </ul>
                    <?php } ?>
                </div>
            </li>
            <li class="nav-item">
                <?php
                if ($page == 'daftar_nilai') {
                ?>
                    <a class="nav-link bg-white my-primary-clr" aria-current="page" href="pilih_mapel.php"><i class="bi-file-text-fill"></i> DAFTAR NILAI</a>
                <?php
                } else {
                ?>
                    <a class="nav-link text-white" aria-current="page" href="pilih_mapel.php"><i class="bi-file-text"></i> DAFTAR NILAI</a>
                <?php }; ?>
            </li>
        </ul>
    </div>
</div>
<!-- Sidebar selesai -->