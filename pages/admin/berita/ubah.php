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
        <h5 class="card-title">
            Ubah Berita
        </h5>
        <form method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <select name="kategori_id" id="" class="form-control" required>
                            <?php
                                $sql = "SELECT * FROM kategori order by nama asc";
                                $result = $conn->query($sql);
                                while($b = $result->fetch_assoc()) { ?>

                                <option value="<?=$b['id']?>" <?=$b['id']==$a['kategori_id']?'selected':''?>><?=$b['nama']?></option>

                            <?php } 
                            ?>
                        </select>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Judul</label>
                        <input type="text" name="judul" value="<?=$a['judul']?>" class="form-control" required>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"  class="textarea"><?=$a['deskripsi']?></textarea>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Foto</label>
                        <input type="file" name="photo">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <input type="submit" value="Simpan" name="submit" class="btn btn-primary">
                        <a href="?p=admin-berita" class="btn btn-secondary">Kembali</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<?php 
    if(isset($_POST['submit'])){
        $judul = $_POST['judul'];
        $deskripsi = $_POST['deskripsi'];
        $kategori_id = $_POST['kategori_id'];
        $foto = $a['foto'];
        $dibaca = 0;
        $tanggal = date("Y-m-d H:i:s");

        // Check if file was uploaded without errors
        if(isset($_FILES["photo"]) && $_FILES["photo"]["error"] == 0){
            $allowed = array("jpg" => "image/jpg", "jpeg" => "image/jpeg", "gif" => "image/gif", "png" => "image/png");
            $filename = $_FILES["photo"]["name"];
            $filetype = $_FILES["photo"]["type"];
            $filesize = $_FILES["photo"]["size"];
        
            // Verify file extension
            $ext = pathinfo($filename, PATHINFO_EXTENSION);
            if(!array_key_exists($ext, $allowed)) die("Error: Please select a valid file format.");
        
            // Verify file size - 5MB maximum
            $maxsize = 5 * 1024 * 1024;
            if($filesize > $maxsize) die("Error: File size is larger than the allowed limit.");
        
            // Verify MYME type of the file
            if(in_array($filetype, $allowed)){
                // Check whether file exists before uploading it
                if(file_exists("upload/" . $filename)){
                    echo $filename . " is already exists.";
                } else{
                    move_uploaded_file($_FILES["photo"]["tmp_name"], "upload/" . $filename);
                    echo "Your file was uploaded successfully.";
                    $foto = $filename;
                    unlink('upload/'.$a['foto']);
                } 
            } else{
                echo "Error: There was a problem uploading your file. Please try again."; 
            }
        } else{
            echo "Error: " . $_FILES["photo"]["error"];
        }

        $sql = "UPDATE berita SET judul='$judul', deskripsi='$deskripsi', foto='$foto', kategori_id='$kategori_id' WHERE id='$id'";
        if ($conn->query($sql) === TRUE) {
        echo "<script>document.location='?p=admin-berita'</script>";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }

        include "./config/config_footer.php";
    }
?>