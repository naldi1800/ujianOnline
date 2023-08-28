<?php				
			include 'admin.php'; //menghubungkan ke file koneksi untuk ke database
			$id = $_GET['id_soal']; //menampung id

			//query hapus
			$datas = mysqli_query($conn, "DELETE FROM tb_soal WHERE id ='$id'") or die(mysqli_error($conn));

			//alert dan redirect ke index.php
			echo "<script>alert('data berhasil dihapus.');window.location='lihat_soal.php';</script>";
	?>