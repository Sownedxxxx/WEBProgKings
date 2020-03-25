<!doctype html>
<html lang="sv">
<head>
<link rel="stylesheet" href="mycket.css">
<meta charset="utf-8"/>
<title>Stämpla</title>
</head>
<body>

<div id=keb>
  <?php
  session_start();

  //Sätt i många olika divar mannen!!!
  $link = mysqli_connect("localhost", "root", "", "stampla");

  if($link === false)
  {
      die("ERROR: Could not connect. " . mysqli_connect_error());
  }

  if(isset($_POST['submit'])){

    $Per = $_POST['Personnummer'];
    $Namn = $_POST['Förnamn'];
    $Efter = $_POST['Efternamn'];
    $Pass = $_POST['Password'];
    $Roll = $_POST['Roll'];
    $User = substr($Namn,0,1) . substr($Efter,0,1) . substr($Per,-4);



    $sql = $link->prepare("INSERT INTO konto (Personnummer,User,Pass,Roll,Fistname,Secondname) VALUES (?,?,?,?,?,?)");
    $sql->bind_param("isssss",$Per,$User,$Pass,$Roll,$Namn,$Efter);
    $sql->execute();
  }

    ?>
  <div class="Skapa">
      <form class="" action="register.php" method="post">
        <div id="1">


        <label>Förnamn: </label>
        <input pattern="[A-Za-z]{1,}" type="text" name="Förnamn" value=""><br><br>
        </div>
        <div id="2">


        <label>Efternamn: </label>
        <input pattern="[A-Za-z]{1,}"type="text" name="Efternamn" value=""><br><br>
        </div>

        <div id="3">

        <label>Personnummer: </label>
        <input pattern="[0-9]{12,12}"  type="text" name="Personnummer" value=""><br><br>

        </div>

        <div id="4">


        <label>Lösenord: </label>
        <input patter="[A-Za-z0-9_]{6,20}" type="text" name="Password" value=""><br><br>
        </div>



        <select name="Roll" required>
          <option disabled selected value="">Välj Roll</option>
          <option value="Chef">Chef</option>
          <option value="Medarbetare">Medarbetare</option>

        </select>
        <input type="submit" name="submit" value="skicka">

      </form>

      <?php
        if(isset($_POST['submit'])){



        }


       ?>


  </div>
    <?php

  mysqli_close($link);
  ?>





</div>
</body>
</html>
