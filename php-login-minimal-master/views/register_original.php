<?php
// show potential errors / feedback (from registration object)
if (isset($registration)) {
    if ($registration->errors) {
        foreach ($registration->errors as $error) {
            echo $error;
        }
    }
    if ($registration->messages) {
        foreach ($registration->messages as $message) {
            echo $message;
        }
    }
}
?>

<?php include'/../view/header.php' ?>
 <hr>

<!-- register form -->
<form method="post" action="php-login-minimal-master/register.php" name="registerform">

    <!-- the user name input field uses a HTML5 pattern check -->
    <label for="login_input_username">Username (only letters and numbers, 2 to 64 characters)</label>
    <input id="login_input_username" class="login_input" type="text" pattern="[a-zA-Z0-9]{2,64}" name="user_name" required />
    <br>
    <!-- the email input field uses a HTML5 email type check -->
    <label for="login_input_email">User's email</label>
    <input id="login_input_email" class="login_input" type="email" name="user_email" required />
    <br>
    
    <label for="login_input_password_new">Password (min. 6 characters)</label>
    <input id="login_input_password_new" class="login_input" type="password" name="user_password_new" pattern=".{6,}" required autocomplete="off" />
    <br>
    
    <label for="login_input_password_repeat">Repeat password</label>
    <input id="login_input_password_repeat" class="login_input" type="password" name="user_password_repeat" pattern=".{6,}" required autocomplete="off" />
    
    <br>
    
    <label for="f_Name">First Name</label>
     <input type="text" name="f_Name" class="login_input" required><br>
     <br>
     
     <label for="l_Name">Last Name</label>
     <input type="text" name="l_Name" required>
     
     <br>
     <label for="address">Home Address</label>
     <input type="text" name="address" required>
     <br>
     <label>State</label><br>
     <select name="state">
        <?php for($i = 1; $i <= 10; $i++) : ?>
                    <option value="<?php echo $i; ?>">
                        <?php echo $i; ?>
                    </option>
                    <?php endfor; ?>
            </select><br>
                    <label>Phone Number</label><br>
                    <input type="tel" name="phone"><br>
                    <input type="radio" name="sex" value="male" checked>Male
                    <br>
                    <input type="radio" name="sex" value="female">Female<br>
                    
                    <input type="submit" name="register" value="create account">

</form>

<div><?php var_dump($_GET);?></div>
 <hr>

<!-- backlink -->
<a href="../index.php">Back to Login Page</a>
<?php include'/../view/footer.php' ?>