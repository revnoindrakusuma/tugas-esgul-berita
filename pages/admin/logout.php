<?php
   session_start();
   
   if(session_destroy()) {
      echo "<script>document.location='?p=login'</script>";
   }
?>