<?php
    session_start();
    if(!$_SESSION['email']){
        echo "<script>document.location='?p=login'</script>";
    }
?>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">
            Kategori
            <div class="pull-right">
                <a href="?p=admin-input-kategori" class="btn btn-primary btn-sm">Input</a>
            </div>
        </h5>
        <table class="table table-striped table-bordered table-hover" id="myTable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    include "./config/config_header.php";
                    $sql = "SELECT * FROM kategori order by nama asc";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    while($a = $result->fetch_assoc()) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $a['nama'] ?></td>
                            <td>
                                <a href="?p=admin-ubah-kategori&id=<?=$a['id']?>" class="btn btn-warning btn-sm">Ubah</a>
                                <!-- <a href="?p=admin-hapus-kategori&id=<?=$a['id']?>" class="btn btn-danger btn-sm">Hapus</a> -->
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