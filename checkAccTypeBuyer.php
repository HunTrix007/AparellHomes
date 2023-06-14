<?php
session_start();

if(isset($_SESSION['LoginStat'])){
    $logStat = $_SESSION['LoginStat'];

    if($_SESSION['LoginStat'] == true){

        if($_SESSION['StaffSignedIn'] == true){
            echo "<script>
                    alert('Please login as an Admin!');
                    window.location.replace('staffDash.php');
                </script>";
        }
        elseif($_SESSION['SellerSignedIn'] == true){
            echo "<script>
                    alert('Please login as a seller!');
                    window.location.replace('sellerDash.php');
                </script>";
        }
        elseif($_SESSION['BuyerSignedIn'] != true){
            echo "<script>
                    alert('Please login to proceed!');
                    window.location.replace('loginHTML.php');
                </script>";
        }
        else{
            $email = $_SESSION['Email'];
            $acc = $_SESSION['AccType'];
            $fname = $_SESSION['fName'];
            $lname = $_SESSION['lName'];
            $addrs = $_SESSION['addrs'];
            $phone = $_SESSION['mobile'];
            $pwd = $_SESSION['Pwd'];
            $dp = $_SESSION['profile'];
        }    
    }  
    else{
        echo "<script>
                        alert('Please login to proceed!');
                        window.location.replace('loginHTML.php');
                    </script>";
    }        
}
else{
    echo "<script>
                    alert('Please login to proceed!');
                    window.location.replace('loginHTML.php');
                </script>";
}
?>