<?php

// if(!isset($_POST['formSoal-Btn']))
// {
//     header('Location: input_soal.php');
// }


if (isset($_SESSION['kode_mapel'])) {
    $kode_mapel = $_SESSION['kode_mapel'];
} else {
    $kode_mapel = $_POST['kode_mapel'];
}

$get_mapel = $app->get_mapel_id($kode_mapel);

foreach ($get_mapel as $mapel);

if (isset($_SESSION['nama_mapel'])) {
    $nama_mapel = $_SESSION['nama_mapel'];
} else {
    $nama_mapel = $mapel['nama_mapel'];
}


?>
<form action="<?= $tambah_soal ?>" method="POST" class="p-3 d-flex gap-3 flex-wrap" enctype="multipart/form-data">
    <input type="hidden" name="nama_mapel" value="<?= $nama_mapel ?>">
    <input type="hidden" name="kode_mapel" value="<?= $kode_mapel ?>">
    <div class="input-group w-25">
        <label class="my-primary-bg text-white p-2 rounded-start-2">Tanggal Ujian</label>
        <input type="date" name="tgl_ujian" class="form-control" required>
    </div>
    <div class="input-group w-25">
        <label class="my-primary-bg text-white p-2 rounded-start-2">Jam Mulai</label>
        <input type="time" name="jam_mulai" class="form-control" required>
    </div>
    <div class="input-group w-25">
        <label class="my-primary-bg text-white p-2 rounded-start-2">Jam Selesai</label>
        <input type="time" name="jam_selesai" class="form-control" required>
    </div>
    <div class="input-group">
        <textarea name="soal" class="form-control border-primary ckeditor">Soal Ujian</textarea>
    </div>
    <div class="input-group">
        <!-- <label class="p-2 my-primary-bg text-white rounded-start-2 ckeditor">Image</label> -->
        <input type="file" accept="image/png, image/jpeg" name="image" id="image" class="form-control" >
    </div>
    <div id="preview" hidden>
        <img src="" alt="" width="150" id="imagePreview">
    </div>
    <div class="input-group">
        <label class="p-2 my-primary-bg text-white rounded-start-2 ckeditor">Pilihan Ganda</label>
        <input type="text" name="pilihan[]" class="form-control" required>
    </div>
    <div class="input-group">
        <label class="p-2 my-primary-bg text-white rounded-start-2 ckeditor">Pilihan Ganda</label>
        <input type="text" name="pilihan[]" class="form-control" required>
    </div>
    <div class="input-group">
        <label class="p-2 my-primary-bg text-white rounded-start-2">Pilihan Ganda</label>
        <input type="text" name="pilihan[]" class="form-control" required>
    </div>
    <div class="input-group" required>
        <label class="p-2 my-primary-bg text-white rounded-start-2 ckeditor">Pilihan Ganda</label>
        <input type="text" name="pilihan[]" class="form-control">
    </div>
    <div class="input-group" required>
        <label class="p-2 my-primary-bg text-white rounded-start-2">Kunci Jawaban</label>
        <input type="text" name="kunci_jwb" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary" name="submitSoal-Btn">Submit</button>
    <script src="../ckeditor/ckeditor.js" type="text/javaScript"></script>
</form>

<script>
    var img = document.links('image')
    var preview = document.links('preview')
    var imagePreview = document.links('imagePreview')

    img.onchange = evt => {
        console.log("tes")
        const [file] = img.files
        if (file) {
            imagePreview.src = URL.createObjectURL(file)
            preview.hidden = false
        }
    }
</script>