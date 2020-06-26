<?php
    include "./config/config_header.php";
    $queryGet = "SELECT * FROM berita order by dibaca desc limit 1";
    $berita = $conn->query($queryGet);
    $baca = mysqli_fetch_array($berita);
?>
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <img src="upload/<?=$baca['foto']?>" class="card-img-top" alt="">
            <div class="card-body">
                <h5 class="card-title"><?=$baca['judul']?></h5>
                <a href="?p=baca&id=<?=$baca['id']?>" class="btn btn-primary">Baca</a>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">
                    Berita Terpopuler
                </h5>
                <ul class="nav flex-column" style="margin-left: 0px; padding-left: 0px">
                <?php
                    $no = 1;
                    // include "./config/config_header.php";
                    $sql = "SELECT * FROM berita order by dibaca desc limit 5";
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
                    include "./config/config_footer.php";
                ?>
                </ul>
            </div>
        </div>
    </div>
</div>