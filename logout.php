<?php
    session_start();
        
    $_SESSION['BuyerSignedIn'] = false;
    $_SESSION['SellerSignedIn'] = false;
    $_SESSION['StaffSignedIn'] = false;
    $_SESSION['LoginStat'] = false;

    echo "<script>
            alert('Logged out');
            window.location.replace('index.php');
          </script>";
?>