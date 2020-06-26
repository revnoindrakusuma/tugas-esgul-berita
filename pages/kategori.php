<?php
    include "./config/config_header.php";
    $cari = $_GET['cari'];
    $id = $_GET['id'];
    $queryGet = "SELECT * FROM kategori WHERE id='$id'";
    $berita = $conn->query($queryGet);
    $baca = mysqli_fetch_array($berita);
?>
<?php
    if(!empty($id)){
        ?>
    <h1>Kategori <?=$baca['nama']?></h1>
<?php
    }else{
?>
    <h1>Hasil Pencarian</h1>
<?php
    }
?>
<?php
    $no = 1;
    if(!empty($id)){
        $sql = "SELECT * FROM berita where kategori_id='$id' ";
    }else{
        $sql = "SELECT * FROM berita where judul like '%$cari%' ";
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
    while($a = $result->fetch_assoc()) { ?>
        <div class="card">
            <div class="card-body">
                <img src="upload/<?=$a['foto']?>" style="max-width: 200px; float: left; margin-right: 15px;">
                <h5 class="card-title" onclick="baca(<?=$a['id']?>)" style="cursor: pointer;">
                    Kategori <?=$a['judul']?>
                </h5>
                <p class="sub-title"><?=$a['tgl_upload']?></p>
                </ul>
            </div>
        </div>
<?php 
        $no++;
        }
    } else {
?>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">
                Kosong
            </h5>
            </ul>
        </div>
    </div>
<?php
    }
    include "./config/config_footer.php";
?>
<script>
    function baca(id){
        document.location="?p=baca&id="+id;
    }
</script>