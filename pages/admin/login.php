<div class="card">
    <div class="card-body">
        <form method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
        <input type="submit" value="Masuk" name="submit" class="btn btn-primary">
        </form>
    </div>
</div>
<?php
    session_start();
    if(isset($_POST['submit'])){
        $email =  $_POST['email'];
        $password = $_POST['password'];
        if($email=="admin@email.com"&&$password=="12345678"){
            $_SESSION['email'] = $email;
            echo "<script>document.location='?p=admin-dashboard'</script>";
        }else{
            echo "Your Login Name or Password is invalid";
        }
    }
?>