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
                <?php
                if ($page == 'kelola_soal') {
                ?>
                    <div class="dropdown">
                        <a class="nav-link bg-white my-primary-clr dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-pass"></i> KELOLA SOAL
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="#"><i class="bi-plus-lg"></i> INPUT</a></li>
                            <?php
                            $get_mapel = $app->get_mapel();
                            foreach ($get_mapel as $m) :
                            ?>
                                <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=<?= $m['kode_mapel'] ?>"><?= $m['nama_mapel'] ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php } else { ?>
                    <div class="dropdown">
                        <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-pass"></i> KELOLA SOAL
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="input_soal.php"><i class="bi-plus-lg"></i> INPUT SOAL</a></li>
                            <?php
                            $get_mapel = $app->get_mapel();
                            foreach ($get_mapel as $m) :
                            ?>
                                <li><a class="dropdown-item text-primary" href="lihat_soal.php?kode_mapel=<?= $m['kode_mapel'] ?>"><?= $m['nama_mapel'] ?></a></li>
                            <?php endforeach; ?>
                            <!-- <li><a class="dropdown-item text-primary" href="#"><i class=   "bi-person-plus-fill"></i> GURU MAPEL</a></li> -->
                        </ul>
                    </div>
                <?php } ?>
            </li>
            <li class="nav-item">
                <?php
                if ($page == 'kelola_user') {
                ?>
                    <div class="dropdown">
                        <a class="nav-link bg-white my-primary-clr dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-person-gear"></i> KELOLA USER
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="daftar_user.php"><i class="bi-person-lines-fill"></i> DAFTAR USER</a></li>

                            <li><a class="dropdown-item text-primary" href="tambah_user.php"><i class="bi-person-plus-fill"></i> TAMBAH</a></li>
                        </ul>
                    </div>
                <?php } else { ?>
                    <div class="dropdown">
                        <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi-person-gear"></i> KELOLA USER
                        </a>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-primary" href="daftar_user.php"><i class="bi-person-lines-fill"></i> DAFTAR USER</a></li>

                            <li><a class="dropdown-item text-primary" href="tambah_user.php"><i class="bi-person-plus-fill"></i> TAMBAH</a></li>
                        </ul>
                    </div>
                <?php } ?>
            </li>
        </ul>
    </div>
</div>
<!-- Sidebar selesai -->