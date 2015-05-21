<?php
    $dsn = 'mysql:host=localhost;dbname=barclift_university';
    $username = "ot_user";
    $passwd = "pa55word";

try{
    $db = new PDO($dsn, $username, $passwd);
} catch (PDOException $e) {
    $error_message = $e->getMessage();
    include('db_error.php');
    exit();
}


/* This will connect to the database and create the password */




