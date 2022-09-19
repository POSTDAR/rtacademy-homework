<!DOCTYPE html>
<html lang="uk">
<body>
<form action="/example.php?hello=world"
method="POST">
 <label for="fullname">Повне імʼя:</label>
 <input type="text" id="fullname"
name="fullname">
 <label for="email">Email:</label>
 <input type="email" id="email" name="email">
 <label for="message">Повідомлення:</label>
 <textarea id="message"
name="message"></textarea>
 <input type="checkbox" id="agree" name="agree"
value="yes">
 <label for="agree">Я погоджуюсь з тим, що мені
будуть надсилати спам-повідомлення</label>
 <button type="submit">Надіслати</button>
</form>
<?php
echo( '$_GET: ' );
print_r( $_GET );
echo( '$_POST: ' );
print_r( $_POST );
?>
</body>
</html>