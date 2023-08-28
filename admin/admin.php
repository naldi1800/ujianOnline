<?php
if(!isset($_SESSION['login'])) 
return header("Location: ../auth/index.php");

if($_SESSION['level'] !== 'admin') 
return header("Location:../404.php");

$notif = isset($_SESSION['success-msg']);

date_default_timezone_set('Asia/Makassar');
$script_tz = date_default_timezone_get();

class admin 
{
    private $server     = "localhost";
    private $username   = "root";
    private $password = "root1234";
    private $db         = "db_ujian";
    private $conn;
    private $durasiUjian;
    public $imageFolderPath = "../image/soal/";


    public function __construct()
    {
        try
        {

            $this->conn = new mysqli($this->server,$this->username,$this->password,$this->db);
        
        }
        catch (Exception $e)
        {
            echo"conectionn failed" . $e->getMessage();
        }
    }

    public function get_level()
    {
        $query = "SELECT * FROM level";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function get_lvl_id($id_level)
    {
        $query = "SELECT * FROM level WHERE id_level='$id_level'";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function get_user($halaman_awal, $batas)
    {

        $query = "SELECT * FROM user limit $halaman_awal,$batas";
        $hasil = $this->conn->query($query);

        return $hasil;
    }

    public function user_by_level($level, $halaman_awal, $batas)
    {
        $query = "SELECT * FROM user WHERE level='$level' limit $halaman_awal, $batas";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function tmbh_user()
    {
        if(isset($_POST['submit-btn']))
        {
            $nmr_induk = $_POST['nomor_induk'];
            $nama_user = $_POST['nama_user'];
            $tgl_lahir = $_POST['tgl_lahir'];
            $email = $_POST['email'];
            $alamat = $_POST['alamat'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $user_level = $_POST['user_level'];

            $query = "INSERT INTO user VALUES('', '$nmr_induk', '$nama_user', '$tgl_lahir', '$email', '$alamat', '$username', '$password', '$user_level')";

            $sql = $this->conn->query($query);

            if($sql)
            {
                $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                <strong>Berhasil Menambahkan Akun : '.$nama_user.'</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    
                echo"<script>document.location.href='daftar_user.php';
                </script>";
            }
            else
            {
                $_SESSION['success-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert">
                <strong>Gagal Menambahkan Akun : '.$nama_user.'</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    
                echo"<script>document.location.href='tambah_user.php';
                </script>";
            }
        }
    }
    public function get_mapel()
    {
        $query = "SELECT * FROM mapel";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function get_mapel_id($id_mapel)
    {
        $query = "SELECT * FROM mapel WHERE kode_mapel = '$id_mapel'";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function get_mapel_id_new($id_mapel)
    {
        $query = "SELECT * FROM mapel WHERE kode_mapel='$id_mapel'";
        $hasil = $this->conn->query($query);
        $data = null;
        foreach ($hasil as $h) {
            $data = $h;
        }
        return $data;
    }

    public function get_all_user()
    {
        $query = "SELECT * FROM user as A WHERE A.level='3' ";
        $hasil = $this->conn->query($query);
        $data = [];
        foreach ($hasil as $h) {
            array_push($data, $h);
        }
        return $data;
    }

    public function get_soal_id($id)
    {
        $query = "SELECT * FROM tb_soal WHERE id_soal = '$id'";

        $hasil = $this->conn->query($query);

        return $hasil;
    }

    public function get_soal_mapel_id($id_mapel)
    {
        $query = "SELECT * FROM tb_soal WHERE kode_mapel = '$id_mapel'";

        $hasil = $this->conn->query($query);

        return $hasil;
    }

    public function get_soal_mapel_with_id_soal($id_soal)
    {
        $query = "SELECT * FROM tb_soal WHERE id_soal='$id_soal'";

        $hasil = $this->conn->query($query);

        return $hasil;
    }


    public function hitung_durasi($a, $b)
    {

        $mulai = strtotime($a);
        $selesai = strtotime($b);

        $diff = $selesai - $mulai;

        $jam = floor($diff/(60*60));

        $menit    =$diff - $jam * (60 * 60);

        if($menit == 0)
        {
            $this->durasiUjian = $jam." jam";
        }
        else if($jam = 0)
        {
            $this->durasiUjian =  floor($menit/60)." menit";
        }
        else 
        {
            $this->durasiUjian =  $jam." jam ".floor($menit/60)." menit";
        }
    }

    public function tambah_soal()
    {
        if(isset($_POST['submitSoal-Btn']))
        {
            //MAPEL
            $kode_mapel = $_POST['kode_mapel'];
            $nama_mapel = $_POST['nama_mapel'];

            //IMAGE
            $image = (isset($_FILES['image']) && $_FILES['image']['tmp_name'] != "") ? $_FILES['image'] : null;
            $typeImage = "";
            if ($image != null) {
                $typeImage = pathinfo($image['name'], PATHINFO_EXTENSION);
                $imgFile = $image['tmp_name'];
            }

            // ubah format tgl
            $tgl_ujian = date_create($_POST['tgl_ujian']);
            $tgl_ujian1 = date_format($tgl_ujian, "d-m-Y");

            // hitung durasi ujian
            $jam_mulai = $_POST['jam_mulai'];
            $jam_selesai = $_POST['jam_selesai'];

            $jadwal = $jam_mulai." - ".$jam_selesai;

            $this->hitung_durasi($jam_mulai, $jam_selesai);

            $durasiUjian = $this->durasiUjian;

            $soal = $_POST['soal'];

            $pilihan = $_POST['pilihan'];
            $hasil = implode("," , $pilihan); 

            $kunci_jwb = $_POST['kunci_jwb'];

            $query = "INSERT INTO tb_soal VALUES('', '$kode_mapel', '$nama_mapel', '', '$tgl_ujian1', '$jadwal', '$durasiUjian', '$soal', '$hasil', '$kunci_jwb', '$typeImage')";

            $sql = $this->conn->query($query);

            if($sql)
            {
                if($image === null){
                $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                <strong>Berhasil Menambahkan Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
                
                $_SESSION['kode_mapel'] = $kode_mapel;
                $_SESSION['nama_mapel'] = $nama_mapel;
                echo "<script>document.location.href='input_soal.php?form=1';
                </script>";
                //exit;
                return;
            }
            $lastId = $this->conn->insert_id;
            $imageName = "$kode_mapel-$lastId.$typeImage";
            $imagePath = $this->imageFolderPath . $imageName;
            if (move_uploaded_file($imgFile, $imagePath)) {
                $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                <strong>Berhasil Menambahkan Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                $_SESSION['kode_mapel'] = $kode_mapel;
                 $_SESSION['nama_mapel'] = $nama_mapel;
                echo "<script>document.location.href='input_soal.php?form=1';
                </script>";
            } else {
                $_SESSION['success-msg'] = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Gagal Menambahkan Gambar, gambar tidak tersimpan!!</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                echo "<script>document.location.href='input_soal.php';
            </script>";
            }
            }else {
                $_SESSION['success-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert">
                <strong>Gagal Menambahkan Soal :( </strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
    
                echo"<script>document.location.href='input_soal.php';
                </script>";
            }
        }
    }

    public function update_soal($id_soal)
    {
        if(isset($_POST['submitSoal-Btn']))
        {
            $kode_mapel = $_POST['kode_mapel'];
            $nama_mapel = $_POST['nama_mapel'];

             //IMAGE
             $image = (isset($_FILES['image']) && $_FILES['image']['tmp_name'] != "") ? $_FILES['image'] : null;
             $typeImage = "";
             if ($image != null) {
                $typeImage = pathinfo($image['name'], PATHINFO_EXTENSION);
                 $imgFile = $image['tmp_name'];
            }

            // ubah format tgl
            $tgl_ujian = date_create($_POST['tgl_ujian']);
            $tgl_ujian1 = date_format($tgl_ujian, "d-m-Y");

            // hitung durasi ujian
            $jam_mulai = $_POST['jam_mulai'];
            $jam_selesai = $_POST['jam_selesai'];

            $jadwal = $jam_mulai." - ".$jam_selesai;

            $this->hitung_durasi($jam_mulai, $jam_selesai);

            $durasiUjian = $this->durasiUjian;

            $soal = $_POST['soal'];

            $pilihan = $_POST['pilihan'];
            $hasil = implode("," , $pilihan); 

            $kunci_jwb = $_POST['kunci_jwb'];

            if($image != null){
            $query = "UPDATE tb_soal SET kode_mapel=kode_mapel, nama_mapel='$nama_mapel', guru_mapel=guru_mapel, tanggal='$tgl_ujian1', jadwal='$jadwal', durasi='$durasiUjian', soal_ujian='$soal', pilihan_ganda=$hasil, kunci_jawaban='$kunci_jwb', extension='$typeImage' WHERE id_soal='$id_soal'";}
            else{
            $query = "UPDATE tb_soal SET kode_mapel=kode_mapel, nama_mapel='$nama_mapel', guru_mapel=guru_mapel, tanggal='$tgl_ujian1', jadwal='$jadwal', durasi='$durasiUjian', soal_ujian='$soal', pilihan_ganda='$hasil', kunci_jawaban='$kunci_jwb' WHERE id_soal='$id_soal'";}

            $sql = $this->conn->query($query);

            if($sql)
            {
                if ($image == null) 
                {
                    $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                    <strong>Berhasil Menambahkan Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                    echo"<script>document.location.href='input_soal.php';
                    </script>";
                    //exit;
                    return;
                }

                    $imageName = "$kode_mapel-$id_soal.$typeImage";
                    $imageName2 = "$kode_mapel-$id_soal.*";
                    $imagePath = $this->imageFolderPath . $imageName;
                    $imagePath2 = $this->imageFolderPath . $imageName2;
                    $matchingFiles = glob($imagePath2);
                    if (!empty($matchingFiles)) {
                        $matchingFile = $matchingFiles[0];
                        if (is_writable($matchingFile)) {
                            unlink($matchingFile);
            
                        } else {
                            chmod($matchingFile, 0666);
                            unlink($matchingFile);
                        }
                    }
                    //exit;
                    if (move_uploaded_file($imgFile, $imagePath)) {
                        $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                        <strong>Berhasil Update Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                        $_SESSION['kode_mapel'] = $kode_mapel;
                        $_SESSION['nama_mapel'] = $nama_mapel;
                        echo "<script>document.location.href='input_soal.php?form=1';
                    </script>";
                } else {
                    $_SESSION['success-msg'] = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Gagal Update Gambar, gambar tidak tersimpan!!</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                    echo "<script>document.location.href='input_soal.php';
                    </script>";
                } 
            }
            else 
            {
                    $_SESSION['success-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert">
                    <strong>Gagal Update Soal :( </strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
        
                    echo"<script>document.location.href='input_soal.php';
                    </script>";
            }
        }
    }


    public function hapusSoal()
    {
        if(isset($_POST['hapusSoal-btn']))
        {
            $idSoal = $_POST['hapusSoal-btn'];
            $kode_mapel = $_POST['kodeMapel'];
            $query = "DELETE FROM tb_soal WHERE id_soal='$idSoal'";
            $sql = $this->conn->query($query);

            if($sql)
            {
                $_SESSION['success-msg'] = '<div class="alert alert-success  alert-dismissible fade show" role="alert">
                <strong>Berhasil Hapus Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                echo "<script>document.location.href='lihat_soal.php?kode_mapel=$kode_mapel';
                </script>";
            }
            else
            {
                $_SESSION['success-msg'] = '<div class="alert alert-danger  alert-dismissible fade show" role="alert">
                <strong>Gagal Hapus Soal !</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';

                echo "<script>history.back()</script>";
            }
        }
    }
    

    public function get_soal_count(){
        $query = "SELECT * FROM tb_soal";

        $hasil = $this->conn->query($query);
        $res = [];
        foreach($hasil as $h){
            array_push($res, $h);
        }
        return count($res);
    }

    public function get_guru_count(){
        $query = "SELECT level FROM user WHERE level = '2'";

        $hasil = $this->conn->query($query);
        $res = [];
        foreach($hasil as $h){
            array_push($res, $h);
        }
        return count($res);
    }

    public function get_siswa_count(){
        $query = "SELECT level FROM user WHERE level = '3'";

        $hasil = $this->conn->query($query);
        $res = [];
        foreach($hasil as $h){
            array_push($res, $h);
        }
        return count($res);
    }
}
?>