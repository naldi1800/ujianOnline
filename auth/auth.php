<?php
if($_SESSION['login'] = 'true')
{
    return "<script>history.back()</script>";
}
class auth 
{
    private $server     = "localhost";
    private $username   = "root";
    private $password = "root1234";
    private $db         = "db_ujian";
    private $conn;

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

    public function get_all_level()
    {
        $query = "SELECT * FROM level";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function get_level_id($id_level)
    {
        $query = "SELECT * FROM level WHERE id_level = '$id_level' ";
        $hasil = $this->conn->query($query);
        return $hasil;
    }

    public function login()
    {
        if(isset($_POST['login-btn']))
        {
            $user = $_POST['user'];
            $pass = $_POST['pass'];
            $level = $_POST['level'];

            $get_lvl_id = $this->get_level_id($level);
            $get_lvl_id = mysqli_fetch_assoc($get_lvl_id);

            $query = mysqli_query($this->conn, "SELECT * FROM user WHERE username = '$user'");
            $cari_user = mysqli_fetch_assoc($query);

            if($pass == $cari_user['password'] && $level == $cari_user['level'])
            {
                $_SESSION['login'] = 'true';
                $_SESSION['id_user'] = $cari_user['id'];
                $_SESSION['username'] = $cari_user['username'];
                $_SESSION['nama'] = $cari_user['nama'];
                $_SESSION['level'] = $get_lvl_id['nama_level'];

                echo"<script> alert('Selamat datang ".$_SESSION['username']."' );
                document.location.href='../".$_SESSION['level']."/index.php';
                </script>";
            }
        }
    }
}