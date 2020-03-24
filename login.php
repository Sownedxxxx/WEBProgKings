<!doctype html>
<html lang="sv">
<body>
<h1>Logga in i databasen</h1>
<form method="post" action="login.php">
<tr>
  <td>Username:</td>
  <td><input type="text" name="username"></td>
  <td>Password:</td>
  <td><input type="Password" name="password"></td>
</tr>
<input type="submit" name="submit" value="skicka">
  <?php
    if (isset($_POST['username']) && isset($_POST['password'])){


    }
//Hej detta är inlogggggggggg(wille)
   ?>
</form>
<div=isterband>
  <?php
    session_start();



    if (isset ($_POST["username"]))
    {
      $connection = mysqli_connect("localhost", "root", "", "stampla");
      $query = "SELECT Pass FROM konto WHERE User=" . $_POST['username'];

      $result = mysqli_query($connection, $query); // fixa query!!!!!!!

      echo $result;
      if (isset($_POST['password']))
      {
          if ($_POST['password'] == $result)
          {
              $_SESSION['inloggad'] = true;
              echo"hej";
              header("Location: register.php");
          }
          else{
            echo "<p> användarnamnet och lösenordet matchar inte </p>";
          }
        }

      }
  ?>
</div>
</body>
</html>
