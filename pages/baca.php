<?php
    include "./config/config_header.php";
    $id = $_GET['id'];
    $queryGet = "SELECT * FROM berita WHERE id='$id'";
    $berita = $conn->query($queryGet);
    $baca = mysqli_fetch_array($berita);
?>
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <img src="upload/<?=$baca['foto']?>" class="card-img-top" alt="">
            <div class="card-body">
                <h5 class="card-title"><?=$baca['judul']?></h5>
                <p class="sub-title"><?=$baca['tgl_upload']?></p>
                <hr>
                <p class="card-text"><?=$baca['deskripsi']?></p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">
                    Berita Lainnya
                </h5>
                <ul class="nav flex-column" style="margin-left: 0px; padding-left: 0px">
                <?php
                    $no = 1;
                    $kategori = $baca['kategori_id'];
                    $sql = "SELECT * FROM berita where kategori_id='$kategori' order by dibaca desc limit 5";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    while($a = $result->fetch_assoc()) { ?>
                        <li class="nav-item">
                            <a class="nav-link" href="?p=baca&id=<?=$a['id']?>"><?=$no?>. <?=$a['judul']?></a>
                        </li>

                <?php 
                        $no++;
                        }
                    } else {
                ?>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Kosong</a>
                    </li>
                <?php
                    }
                    // include "./config/config_footer.php";
                ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<?php 
    $update_dibaca = intval($baca['dibaca']) + 1;

    $sql = "UPDATE berita SET dibaca='$update_dibaca' WHERE id='$id'";
    // $conn->query($sql);
    if ($conn->query($sql) === TRUE) {
    // echo "<script>document.location='?p=admin-berita'</script>";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

    include "./config/config_footer.php";
?>