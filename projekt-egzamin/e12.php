<?php
    session_start();

    $con = mysqli_connect("localhost", "root", "", "pytania");

    mysqli_set_charset($con, "utf8");

    if(!$con){
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM e12;";
    $result = mysqli_query($con, $sql);
    $rows = mysqli_num_rows($result);        

    if(!isset($_SESSION['tab'])){ //nowa sesja
        $_SESSION['tab'] = [];
        $_SESSION['index'] = 0;
        $_SESSION['points'] = 0;
        $_SESSION['dobra_odp'] = '';
        $_SESSION['sprawdzono'] = false;
        $_SESSION['wybranaOdp'] = '';
        for($i = 0; $i < $rows; $i++){
            $_SESSION['tab'][$i] = $i;
        }
        shuffle($_SESSION['tab']);
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>e12</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="post" action="">
        <input type="hidden" name="wybranaOdp" id="wybranaOdp">
        <?php
            if(!$_SESSION['sprawdzono']){
                echo "<button type='submit' name='show' onClick='sprawdzonoOdp()' id='show'>Sprawdź odpowiedź👁️</button>";
            }
        ?>
        <button type="submit" name="next" id="next">Następne pytanie⏭️</button>
    </form>

    <div id="php">
        <?php
            if($_SESSION['index'] < count($_SESSION['tab'])){
                $id = $_SESSION['tab'][$_SESSION['index']];
                mysqli_data_seek($result, $id);
                $linia = mysqli_fetch_assoc($result);
                $_SESSION['dobra_odp'] = $linia['poprawna'];
                echo "<p>" . ($_SESSION['index'] + 1) . ". " . $linia['pyt'] . ", ilosc punktów: " . $_SESSION['points'] . "</p>";                echo  "<ul>";
                echo "<li> <button type='button' id='A' onClick='sprawdz(\"A\")'>A. " . $linia['odpA'] . "</button> </li>";
                echo "<li> <button type='button' id='B' onClick='sprawdz(\"B\")'>B. " . $linia['odpB'] . "</button> </li>";
                echo "<li> <button type='button' id='C' onClick='sprawdz(\"C\")'>C. " . $linia['odpC'] . "</button> </li>";
                echo "<li> <button type='button' id='D' onClick='sprawdz(\"D\")'>D. " . $linia['odpD'] . "</button> </li>";
                echo "</ul>";

                /*if($linia['obraz']){ // jednak bez obrazów bo nie mam plików
                    echo "<img src='" . $linia['obraz'] . "' alt='Obrazek do pytania' style='max-width: 100%; height: auto;'>";

                }*/
                }
            else{ //koniec testu
                echo "<h1>Ukończyłęś test z wynikiem: " . $_SESSION['points'] . "/". count($_SESSION['tab']) . "</h1>";
                session_destroy(); // Czyszczenie sesji na koniec
                echo "<p>Przejdź do <a href='./index.php'>menu głównego</a></p>";
            }

        ?>
    </div>
    <script>
        function sprawdz(odp){
            document.getElementById("wybranaOdp").value = odp;

            document.querySelectorAll("button").forEach(button => {
                button.style.backgroundColor = "lightblue";
            });
            document.getElementById(odp).style.backgroundColor = "blue";
        }

        function sprawdzonoOdp(){
            document.getElementById("show").style.display = "none";
        }
    </script>
</body>
</html>

<?php
    if (isset($_POST['show'])) { //sprawdzanie odpowiedzi

        $_SESSION['wybranoOdp'] = $_POST['wybranaOdp'];
        $_SESSION['sprawdzono'] = true;
        if($_SESSION['wybranoOdp'] == $_SESSION['dobra_odp']){
            echo "<p>Poprawna odpowiedź!</p>";
            $_SESSION['points']++;
        }
        else if($_SESSION['wybranoOdp'] == ''){
            echo "<p>Nie wybrałeś odpowiedzi!</p>";
        }
        else{
            echo "<p>Niepoprawna. Poprawna odpowiedź to: " . $_SESSION['dobra_odp'] . "</p>";
        }

        if($_SESSION['wybranoOdp'] != ''){
            echo "<script>
                document.getElementById('show').style.display = 'none';
                document.querySelectorAll('button').forEach(button => {
                    button.disabled = true;
                });
                document.getElementById('" . $_SESSION['wybranoOdp'] . "').style.backgroundColor = 'red';
                document.getElementById('" . $_SESSION['dobra_odp'] . "').style.backgroundColor = 'green';
                document.getElementById('next').disabled = false;
            </script>";
        }
        else{
            echo "<script>
                document.getElementById('show').style.display = 'none';
                document.querySelectorAll('button').forEach(button => {
                    button.disabled = true;
                });
                document.getElementById('next').disabled = false;
            </script>";
        }

    }

    if(isset($_POST['next'])){ //następne pytanie
        $_SESSION['index']++;
        $_SESSION['sprawdzono'] = false;
        $_SESSION['wybranoOdp'] = '';
        header("Location: " . $_SERVER['PHP_SELF']); // przekierowywyje na tą samą stronę
    }
?>