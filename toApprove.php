<?php
    include_once 'config.php';
?>
<?php
require "checkAccTypeStaff.php";

    $sql = "SELECT * FROM apartments WHERE approved = 'NULL'";

    $result = $conn->query($sql);

?>
<!DOCTYPE html>
<html>
    <head>
        <title>My Ads | Aparell</title>
        <link rel="icon" type="image" href="images/Favicon.png">
        <link rel="stylesheet" href="style/dashStyle.css" id="stylesheet">
    </head>

    <body>

        <!-- Navigation panel -->
        <nav>

            <!-- Logo -->
            <a href="index.php"><img src="images/Logo(light).png" id="logo" alt="logo"></a>

            <!-- Nav buttons -->
            <ul>
                <li><a href="index.php"><font class="hov">Home</font></a></li>
                <li><a href="searchApartment.php"><font class="hov">Apartments</font></a></li>
                <li><a href="aboutus.html"><font class="hov">About Us</font></a></li>
                <li><a href="contactUs.php" ><font class="hov">Contact Us</font></a></li>
            </ul>

            <!-- Profile icon -->
            <div id="profile">
                <img src="<?php echo $dp ?>" height="50px" alt="profile" style="border-radius:50%";>
            </div>

            <!-- Dark Mode toggle switch
            <div id="drkmode">
                <img src="images/night.png" alt="dark" id="dark" class="mode" width="20px" onclick="light('OFF')">
                <img src="images/day.png" alt="light" id="light" class="mode" width="20px" onclick="light('ON')">
            </div> -->

        </nav>       

<br><br><br>
        
        <!-- Ads -->
        <section>
            <nav>
                <ul>
                    <li><a href="staffDash.php" class="hover">Dashboard</a></li>
                    <li><a href="toApprove.php" class="hover activeNav">To Approve</a></li>
                    <li><a href="messages.php" class="hover">Customer Support</a></li>
                    <li><a href="manageUsers.php" class="hover">Manage Users</a></li>
                    <li><a href="staffsettings.php" class="hover">Settings</a></li>
                </ul>
            </nav>
            <hr>
            <?php
                if($result->num_rows>0){
                    while($row = $result->fetch_assoc()){
                        $id = $row['aprtID'];
                        $title = $row['title'];
                        $description = $row['description'];
                        $addrs = $row['addrs'];
                        $price = $row['price'];
                        $img = $row['img1'];

                        echo"
                            <div class='ads'>
                                <img src='$img' width='25%' height='215px'>
                                <div class='adDisc'>
                                    <h2>$title</h2>
                                    <p>$addrs<br><br>$description<br><br><br>Rs.$price</p>
                                    <div>
                                    <a href='approve.php?aprtID=$id'><button class='approve'>Approve</button></a><a href='reject.php?aprtID=$id'><button class='reject'>Reject</button></a>
                                    </div>
                                </div>
                            </div>";
                    }
                }
                else{
                    echo "<center><img src='images/allDone.jpg' style='margin:50px 0px' width='300px'></center>";
                }
                
            ?>
            <br><br> 
        </section> 

        <!-- Footer -->
        <footer>
            <center>
                <!-- Social Media -->
                <div id="icons">
                    <a href="https://www.facebook.com/profile.php?id=100086685492601" target="_blank"><img src="images/facebook.png" width="30px"></a>
                    <a href="https://www.instagram.com/aparellhomes/" target="_blank"><img src="images/instagram.png" width="30px"></a>
                    <a href="https://twitter.com/AparellHomes" target="_blank"><img src="images/twitter.png" width="30px"></a>
                    <a href="mailto: aparellhomes@gmail.com"><img src="images/mail.png" width="30px"></a>
                    <a href="https://wa.me/0740276949" target="_blank"><img src="images/whatsapp.png" width="30px"></a>
                </div>
                <!-- Links -->
                <div id="links">
                    <a href="aboutus.html">Info</a> &#x2022 <a href="contactUs.php">Support</a> &#x2022 <a href="contactUs.php">Marketing</a><br>
                    <a href="terms.html">Terms of Use</a> &#x2022 <a href="privacy.html">Privacy Policy</a>
                </div>
                <!-- Copyrights -->
                <div id="cpyryt">
                    &#x00A9 2022 Aparell Homes
                </div>
            </center>
        </footer>

        <script src="js/script.js"></script>
        <script>
            function decision(id){
                var confirmation = confirm('This will permenantly delete your ad! Please Confirm.');
                if(confirmation){
                    window.location.replace('deleteAd.php?aprtID='+id);
                }
            };

        </script>
    </body>
</html>