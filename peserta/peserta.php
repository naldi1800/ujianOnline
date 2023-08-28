<?php
if (!isset($_SESSION['login']))
    return header("Location: ../auth/index.php");

if ($_SESSION['level'] !== 'peserta')
    return header("Location:../404.php");

date_default_timezone_set('Asia/Makassar');
$script_tz = date_default_timezone_get();

class peserta
{
    private $server     = "localhost";
    private $username   = "root";
    private $password = "root1234";
    private $db         = "db_ujian";
    private $conn;
    public $imageFolderPath = "../image/soal/";

    public function __construct()
    {
        try {

            $this->conn = new mysqli($this->server, $this->username, $this->password, $this->db);
        } catch (Exception $e) {
            echo "conectionn failed" . $e->getMessage();
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
        $query = "SELECT * FROM mapel WHERE kode_mapel='$id_mapel'";
        $hasil = $this->conn->query($query);
        $data = null;
        foreach ($hasil as $h) {
            $data = $h;
        }
        return $data;
    }

    public function get_soal_id($id_soal)
    {
        $query = "SELECT * FROM tb_soal WHERE id_soal='$id_soal'";
        $hasil = $this->conn->query($query);
        $data = null;
        foreach ($hasil as $h) {
            $data = $h;
        }
        return $data;
    }

    public function get_soal($id_mapel)
    {
        if ($this->cekShuffle($id_mapel)) {
            $hasil = $this->getShuffle($id_mapel);
        } else {
            $query = "SELECT * FROM tb_soal WHERE kode_mapel = '$id_mapel'";

            $hasil = $this->conn->query($query);
            $data = [];
            $id = [];
            foreach ($hasil as $h) {
                array_push($data, $h);
            }
            $hasil = self::shuffle($data);
            foreach ($hasil as $h) {
                array_push($id, $h['id_soal']);
            }
            $this->saveShuffle($id, $id_mapel);
        }
        return $hasil;
    }

    public function cekShuffle($id_mapel)
    {
        $id_user = $_SESSION['id_user'];

        $query = "SELECT * FROM shuffle WHERE id_mapel = '$id_mapel' AND id_user = '$id_user'";

        $hasil = $this->conn->query($query);
        return ($hasil->num_rows > 0);
    }
    public function saveShuffle($id, $kode_mapel)
    {
        $id_user = $_SESSION['id_user'];
        $id_save = implode(",", $id);
        $nilai  = 0.00;
        $query = "INSERT INTO shuffle VALUES('', '$id_user', '$kode_mapel', '$id_save', 0, '$nilai')";
        $this->conn->query($query);
    }
    public function getShuffle($id_mapel)
    {
        $id_user = $_SESSION['id_user'];
        $query = "SELECT * FROM shuffle WHERE id_mapel = '$id_mapel' AND id_user = '$id_user'";
        $hasil = $this->conn->query($query);
        $data = $hasil->fetch_assoc();
        if ($data['submit'] == 1) {
            header("location: index.php?mk=end");
            exit;
        }
        $ids = explode(",", $data['soal']);
        $result = [];
        foreach ($ids as $id) {
            $res = $this->get_soal_id($id);
            array_push($result, $res);
        }
        return $result;
    }

    public static function shuffle(array $array): array
    {
        $count = count($array);
        $tempArr = $array;
        $result = [];
        for ($i = $count; $i > 0; $i--) {
            // var_dump($tempArr);

            $r = mt_rand(0, count($tempArr) - 1);


            $tempArr[$r]['pilihan_ganda'] = self::shuffle_pilihan_ganda(explode(",", $tempArr[$r]['pilihan_ganda']));
            array_push($result, $tempArr[$r]);
            array_splice($tempArr, $r, 1);
        }
        return $result;
    }
    public static function shuffle_pilihan_ganda(array $arrPil): array
    {
        $c = count($arrPil);
        $tempArrPil = $arrPil;
        $resPil = [];
        for ($i = $c; $i > 0; $i--) {
            $r = mt_rand(0, count($tempArrPil) - 1);
            array_push($resPil, $tempArrPil[$r]);
            array_splice($tempArrPil, $r, 1);
        }
        return $resPil;
    }
    public function save($kode_mapel)
    {
        if (!isset($_POST['saveALl'])) return;
        $id_user = $_SESSION['id_user'];
        $nilai = $this->NILAI($kode_mapel);
        $query = "UPDATE shuffle SET submit=1, nilai='$nilai' WHERE id_user='$id_user' AND id_mapel='$kode_mapel'";
        $this->conn->query($query);
        header("location: index.php");
        exit;
    }

    public function NILAI($kode_mapel)
    {
        $shuffle = $this->getShuffle($kode_mapel);
        $benar = 0;
        $salah = 0;

        foreach ($shuffle as $h) {
            $getAnswer = $this->getAnswer($h['id_soal']);
            $answer = $getAnswer['jawaban'];
            $choose = explode(",", $h['pilihan_ganda']);
            $numCorrect =  ord(strtoupper($h['kunci_jawaban'])) - 65;
            $correctAnswer = $choose[$numCorrect];
            ($correctAnswer == $answer) ? $benar++ : $salah++;
        }

        $nilai = ($benar / ($benar + $salah)) * 100; // INI SALAH

        return $nilai;
    }


    public function setAnswer()
    {
        if (isset($_POST['saveAnswer'])) {

            $id_soal = $_POST['id_soal'];
            $nomorSoal = $_POST['nomorSoal'];
            $a = "answer_" . $id_soal;
            $answer = $_POST[$a];
            $kode_mapel = $_POST['kode_mapel'];
            $id_user = $_SESSION['id_user'];
            $get = $this->getAnswer($id_soal);
            if ($get == null) {
                $query = "INSERT INTO answer VALUES('', '$id_user', '$id_soal', '$answer')";
            } else {
                $query = "UPDATE answer SET jawaban='$answer' WHERE id_user='$id_user' AND id_soal='$id_soal'";
            }

            $this->conn->query($query);

            echo "<script>document.location.href='soal.php?kode_mapel=$kode_mapel#$nomorSoal';
                </script>";
        }
    }
    public function getAnswer($id_soal)
    {
        $id_user = $_SESSION['id_user'];
        $query = "SELECT * FROM answer WHERE id_soal = '$id_soal' AND id_user = '$id_user'";
        $hasil = $this->conn->query($query);
        $data = null;
        foreach ($hasil as $h) {
            $data = $h;
        }
        return $data;
    }

    public function getNilai()
    {
        $id_user = $_SESSION['id_user'];
        $query = "SELECT * FROM shuffle as A JOIN mapel as B ON A.id_mapel=B.kode_mapel WHERE A.id_user = '$id_user'";
        $hasil = $this->conn->query($query);
        $res = [];
        foreach ($hasil as $h) {
            array_push(
                $res,
                [
                        "kode_mapel" => $h['kode_mapel'],
                        "nama_mapel" => $h['nama_mapel'],
                        "nilai" => $h['nilai'],
                        "finish" => $h['submit'],
                ],
                );
        }
        return $res;
        // echo json_encode($res);
        // exit;
        // $data = $hasil->fetch_assoc();
    }
}
