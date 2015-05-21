<!DOCTYPE html>
<!--
    Opening page to the site will use includes from the view directory
-->
<?php 
    require_once "db.php";
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Welcome to Barclift University</title>
    </head>
    <body>
        <?php include'/view/header.php' ?>
        <main>
            <nav>
                <h3>
                    Welcome to Barclift University,Please Login to Access your file</h3>
                    <hr>
                    <?php include 'php-login-minimal-master/index.php';?>
                    <hr>
                    <div><?php var_dump($_SESSION);?></div>
                    <p>Please register for your classes here by creating your account</p>
                         <br>
            </nav>
        </main>
            <?php include'/view/footer.php';?>
    </body>
</html>



