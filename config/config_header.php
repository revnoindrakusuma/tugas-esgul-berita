<?php
$conn = new mysqli("localhost", "root", "password", "tugas13_pweb");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>