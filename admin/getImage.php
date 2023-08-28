<?php

// $page = 'lihat_soal';
// require 'guru.php';
// $app = new guru();

$id_soal = 1;

$get_soalImages = $app->get_soal_mapel_with_id_soal($id_soal);
echo "<br><br><br><br><br>";
$image = mysqli_fetch_array($get_soalImages);
// var_dump(mysqli_num_rows($get_soalImages));

if (mysqli_num_rows($get_soalImages) > 0) {

    // header("Content-type: image/jpeg");
    // var_dump($image['image']);
    echo $image['image'];
    exit;
} else {
    echo "Image not found.";
}
