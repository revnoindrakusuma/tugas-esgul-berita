<?php
    session_start();
?>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <!-- datatable -->
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- datatable -->
        <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://adminlte.io/themes/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <title>Berita</title>
        <style>
            body{
                background-color: #ecf0f1 !important;
            }
            .pull-right{
                float: right;
            }
            .sub-title{
                color: #007bff;
                font-size: 12px;
            }
        </style>
    </head>
    <body>
        <?php
            $page = @$_GET['p'];
            $page = explode("-", $page);
            if(count($page)>1){
                $page = $page[1];
            }else{
                $page = $page[0];
            }
        ?>
        <?php
            if($page != 'login') {
        ?>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand" href="?p=beranda">Berita</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <?php
                            if(!$_SESSION['email']){
                        ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Kategori
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <?php
                                include "./config/config_header.php";
                                $sql = "SELECT * FROM kategori order by nama asc";
                                $result = $conn->query($sql);
                                if ($result->num_rows > 0) {
                                while($a = $result->fetch_assoc()) { ?>
                                    <a class="dropdown-item" href="?p=kategori&id=<?=$a['id']?>"><?=strtoupper($a['nama'])?></a>
                            <?php }
                                } else {
                            ?>
                                <a class="dropdown-item" href="#">kosong</a>
                            <?php
                                }
                                include "./config/config_footer.php";
                            ?>
                            </div>
                        </li>
                        <?php
                            }else{
                        ?>
                        <li class="nav-item">
                            <a class="nav-link" href="?p=admin-kategori">Kategori</a>
                        </li>
                        <div class="nav-item">
                            <a class="nav-link" href="?p=admin-berita">Berita</a>
                        </li>
                        <?php
                            }
                        ?>
                    </ul>
                    <?php
                        if(!$_SESSION['email']){
                    ?>
                    <div class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" id="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="button" id="btnSearch">Search</button>
                    </div>
                    <?php
                        }else{
                    ?>
                    <a href="?p=logout" class="btn btn-outline-light my-2 my-sm-0">Logout</a>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </nav>
        <?php
            }
        ?>
        <!-- isi -->
        <div class="container">
            <br>
            <?php include "routes.php" ?>
            <!-- tutup isi -->
        </div>

        <script>
            $(document).ready( function () {
                $('#myTable').DataTable();
                $('.textarea').wysihtml5();
                $('#btnSearch').click(function(){
                    var isi = $('#search').val();
                    document.location="?p=kategori&cari="+isi;
                });
            } );
        </script>
    </body>
</html>