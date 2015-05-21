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
<html>
    <head></head>
    <body>
        <form method="POST" action="register.php" name="registrationNew">
            <label>First Name</label><br>
                    <input type="text" name="f_Name" required><br>
                    <label>Last Name</label><br>
                    <input type="text" name="l_Name" required>
                    <br><label>Address</label><br>
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
                    <input type="submit" name="submit" value="create account">
         </form>           
    </body>

</html>

