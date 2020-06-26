<?php
    session_start();
    if(!$_SESSION['email']){
        echo "<script>document.location='?p=login'</script>";
    }
?>
<?php
    include "./config/config_header.php";
    $id = $_GET['id'];
    $queryGet = "SELECT * FROM berita WHERE id='$id'";
    $berita = $conn->query($queryGet);
    $a = mysqli_fetch_array($berita);
?>
<div class="card">
    <div class="card-body">
        <img src="upload/<?=$a['foto']?>" alt="" class="img-thumbnail" style="margin-right: 15px; float: left">
        <h5 class="card-title">
            <b><?=$a['judul']?></b>
        </h5>
        <p class="card-text"><?=$a['deskripsi']?></p>
        <a href="?p=admin-berita" class="btn btn-secondary">Kembali</a>
    </div>
</div>