 <!-- navbar -->
    <nav class="navbar my-gradient w-100 px-3 ">
        <div class="container-fluid d-flex justify-content-between align-content-center">
            <div class="navbar-left">
                <a href="#" class="navbar-brand text-white">UJIAN ONLINE</a>
            </div>
            <div class="navbar-left d-flex gap-2 align-items-center">
                <span class="text-white badge bg-primary p-2"><?=$_SESSION['username']?></span>    
                <a href="#" class="text-center my-primary-bg text-uppercase text-white my-primary-clr py-1 px-2 rounded-2" data-bs-toggle="tooltip"
                data-bs-placement="bottom" data-bs-title="Profil"><i class="bi-person-fill"></i></a>  
                       
                <a href="../logout.php" class="btn btn-danger btn-sm" data-bs-toggle="tooltip"
                data-bs-placement="bottom" data-bs-title="Logout"><i class="bi-power"></i></a>
            </div>
        </div>
    </nav>
<!-- navbar selesai -->