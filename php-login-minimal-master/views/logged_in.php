<!-- if you need user information, just put them into the $_SESSION variable and output them here -->
<?php include'/../view/header.php' ?>
<hr>
Dear, <?php echo $_SESSION['user_name']; ?>. You are logged in.
Please choose your classes from this listing. 
<?php echo $_SESSION['user_email']; ?> Your user e-mail.
<label for="books">Books</label>
<select name="books">
    <?php include('book_function.php') ?>
</select>

Still logged in! ;)

<!-- because people were asking: "index.php?logout" is just my simplified form of "index.php?logout=true" -->


<a href="../index.php?logout">Logout</a>
<?php print_r($_SESSION);?>
<form action="." method="post">
    
    
</form>
<hr>
<?php include'/../view/footer.php' ?>
