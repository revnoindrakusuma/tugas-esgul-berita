<?php
    session_start();
    if(!$_SESSION['email']){
        echo "<script>document.location='?p=login'</script>";
    }
?>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">
            Berita
            <div class="pull-right">
                <a href="?p=admin-input-berita" class="btn btn-primary btn-sm">Input</a>
            </div>
        </h5>
        <table class="table table-striped table-bordered table-hover" id="myTable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul Berita</th>
                    <th>Kategori Berita</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    include "./config/config_header.php";
                    $sql = "SELECT * FROM berita b join kategori k on k.id=b.kategori_id order by tgl_upload desc";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    while($a = $result->fetch_assoc()) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $a['judul'] ?></td>
                            <td><?= $a['nama'] ?></td>
                            <td>
                                <a href="?p=admin-baca-berita&id=<?=$a['id']?>" class="btn btn-info btn-sm">Baca</a>
                                <a href="?p=admin-ubah-berita&id=<?=$a['id']?>" class="btn btn-warning btn-sm">Ubah</a>
                                <!-- <a href="?p=admin-hapus-berita&id=<?=$a['id']?>" class="btn btn-danger btn-sm">Hapus</a> -->
                            </td>
                        </tr>
                <?php }
                    } else {
                        echo "0 results";
                    }
                    include "./config/config_footer.php";
                ?>
            </tbody>
        </table>
    </div>
</div>