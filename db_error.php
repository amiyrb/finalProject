<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Barclift University</title>
    </head>
    <body>
        <h1>Error connecting to database</h1>
        <p>There was an error connecting to your database.<br/> 
            Please make sure your database is installed properly </p>
        <?php
             echo $db_error_message ; 
        ?>
        
        <?php include'/view/footer.php';?>
    </body>
</html>
