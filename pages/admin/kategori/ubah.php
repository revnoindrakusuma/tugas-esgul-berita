<?php
    session_start();
    if(!$_SESSION['email']){
        echo "<script>document.location='?p=login'</script>";
    }
?>
<?php
    include "./config/config_header.php";
    $id = $_GET['id'];
    $queryGet = "SELECT * FROM kategori WHERE id='$id'";
    $kategori = $conn->query($queryGet);
    $a = mysqli_fetch_array($kategori);
?>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">
            Ubah kategori
        </h5>
        <form method="post">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nama kategori</label>
                        <input type="text" name="nama" value="<?=$a['nama']?>" class="form-control" required>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <input type="submit" value="Perbarui" name="submit" class="btn btn-primary">
                        <a href="?p=admin-kategori" class="btn btn-secondary">Kembali</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<?php 
    if(isset($_POST['submit'])){
        $nama = $_POST['nama'];

        $sql = "UPDATE kategori SET nama='$nama' WHERE id='$id'";
        if ($conn->query($sql) === TRUE) {
        echo "<script>document.location='?p=admin-kategori'</script>";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }

        include "./config/config_footer.php";
    }
?>