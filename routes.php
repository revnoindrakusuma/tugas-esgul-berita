<?php
if(isset($_GET["p"])){
    $page = $_GET["p"];
}else{
    $page = 'beranda';
}   
switch ($page){

    case "beranda":
        require ("pages/beranda.php");
        break;
    case "kategori":
        require ("pages/kategori.php");
        break;
    case "baca":
        require ("pages/baca.php");
        break;

    case "login":
        require ("pages/admin/login.php");
        break;
    case "logout":
        require ("pages/admin/logout.php");
        break;
    case "admin-dashboard":
        require ("pages/admin/dashboard.php");
        break;

    case "admin-kategori":
        require ("pages/admin/kategori/index.php");
        break;
    case "admin-input-kategori":
        require ("pages/admin/kategori/input.php");
        break;
    case "admin-ubah-kategori":
        require ("pages/admin/kategori/ubah.php");
        break;

    case "admin-berita":
        require ("pages/admin/berita/index.php");
        break;
    case "admin-input-berita":
        require ("pages/admin/berita/input.php");
        break;
    case "admin-ubah-berita":
        require ("pages/admin/berita/ubah.php");
        break;
    case "admin-baca-berita":
        require ("pages/admin/berita/baca.php");
        break;

    default:
        require ("pages/beranda.php");
}
?>