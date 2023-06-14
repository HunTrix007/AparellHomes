<?php

    //declare variables
    $server = "localhost";
    $username = "root";
    $password = "";
    $db = "apartment sales system";

    //create connection
    $conn = new mysqli($server,$username,$password,$db);

    //check connection
    if($conn->connect_error){
        die("Connection Failed: ".$conn->connect_error);
    }

?>