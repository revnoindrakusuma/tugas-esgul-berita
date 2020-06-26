<?php
    session_start();
    if(!$_SESSION['email']){
        echo "<script>document.location='?p=login'</script>";
    }
?>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">Selamat Datang Admin</h5>
        <p class="card-text">Silahkan update berita-berita terbaru</p>
    </div>
</div>