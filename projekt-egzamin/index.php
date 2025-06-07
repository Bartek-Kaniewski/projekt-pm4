<?php
    $con = mysqli_connect("localhost", "root", "", "pytania");
    mysqli_set_charset($con, "utf8");

    if (!$con){
        die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
    }

    $tabela = null;
    $wyniki = null;

    foreach(['e12', 'e13', 'e14', 'ee08', 'ee09'] as $nazwa){
        if(isset($_POST[$nazwa])){
            $tabela = $nazwa;
        }
    }
    if(isset($_POST['tabela'])){
        $tabela = $_POST['tabela']; // np. po zapisaniu edycji
    }

    // Jeśli mamy ustaloną tabelę, pobierz dane
    if ($tabela){
        $sql = "SELECT * FROM `$tabela`";
        $wyniki = mysqli_query($con, $sql);
    }
?>


<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona Główna</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Wybór Kwalifikacji</h1>
    <main>
        <form id="main-form" method="post" action=''>
            <ul>
                <li><a href="e12.php">E12</a> Montaż i eksploatacja komputerów osobistych oraz urządzeń peryferyjnych<button type="submit" name="e12">Edytuj</button></li>
                <li><a href="e13.php">E13</a> Projektowanie lokalnych sieci komputerowych i administrowanie sieciami<button type="submit" name="e13">Edytuj</button></li>
                <li><a href="e14.php">E14</a> Tworzenie aplikacji internetowych i baz danych oraz administrowanie bazami<button type="submit" name="e14">Edytuj</button></li>
                <li><a href="ee08.php">EE08</a> Montaż i eksploatacja systemów komputerowych, urządzeń peryferyjnych i siec<button type="submit" name="ee08">Edytuj</button></li>
                <li><a href="ee09.php">EE09</a> Programowanie, tworzenie i administrowanie stronami internetowymi i bazami danychs<button type="submit" name="ee09">Edytuj</button></li>
            </ul>
        </form>
    </main>
    <hr>
    <secion>
        <?php
        function wyswietalnieTab(){
            global $wyniki, $tabela, $con;

            if($wyniki){
                echo "<h1>Wyniki dla tabeli: $tabela</h1>";
                echo "<table>";
                echo "<tr><th>nrPyt</th><th>pyt</th><th>odpA</th><th>odpB</th><th>odpC</th><th>odpD</th><th>obraz</th><th>poprawna</th><th>Akcja</th></tr>";

                for($i = 0; $i < mysqli_num_rows($wyniki)+1; $i++){
                    $row = mysqli_fetch_assoc($wyniki); //dopuki ma pytania + 1 bo dodawnie nowej lini
                    $nrPyt = $i + 1;
                    if($row){
                        $nrPyt = $row['nrPyt'];
                    }

                    echo "<tr><form method='post' action=''>";
                    echo "<input type='hidden' name='tabela' value='$tabela'>";
                    echo "<input type='hidden' name='nrPyt' value='$nrPyt'>";

                    // Czy ten wiersz ma być edytowalny?
                    if(isset($_POST['edytuj']) && $_POST['edytuj'] == $nrPyt){
                        echo "<td>$nrPyt</td>";
                        echo "<td><input type='text' name='pyt' value='" . htmlspecialchars($row['pyt']) . "'></td>";
                        echo "<td><input type='text' name='odpA' value='" . htmlspecialchars($row['odpA']) . "'></td>";
                        echo "<td><input type='text' name='odpB' value='" . htmlspecialchars($row['odpB']) . "'></td>";
                        echo "<td><input type='text' name='odpC' value='" . htmlspecialchars($row['odpC']) . "'></td>";
                        echo "<td><input type='text' name='odpD' value='" . htmlspecialchars($row['odpD']) . "'></td>";
                        echo "<td><input type='text' name='obraz' value='" . htmlspecialchars($row['obraz']) . "'></td>";
                        echo "<td><input type='text' name='poprawna' value='" . htmlspecialchars($row['poprawna']) . "'></td>";
                        echo "<td><button type='submit' name='zapisz'>Zapisz</button></td>";
                    }
                    else if($i == mysqli_num_rows($wyniki)){ //dodawanie nowego wiersza do baz danch
                        echo "<td>$nrPyt</td>";
                        echo "<td><input type='text' name='pyt' value=''></td>";
                        echo "<td><input type='text' name='odpA' value=''></td>";
                        echo "<td><input type='text' name='odpB' value=''></td>";
                        echo "<td><input type='text' name='odpC' value=''></td>";
                        echo "<td><input type='text' name='odpD' value=''></td>";
                        echo "<td><input type='text' name='obraz' value=''></td>";
                        echo "<td><input type='text' name='poprawna' value=''></td>";
                        echo "<td><button type='submit' name='dodaj'>Dodaj</button></td>";
                    }
                    else{
                        echo "<td>$nrPyt</td>";
                        echo "<td>" . $row['pyt'] . "</td>";
                        echo "<td>" . $row['odpA'] . "</td>";
                        echo "<td>" . $row['odpB'] . "</td>";
                        echo "<td>" . $row['odpC'] . "</td>";
                        echo "<td>" . $row['odpD'] . "</td>";
                        echo "<td>" . $row['obraz'] . "</td>";
                        echo "<td>" . $row['poprawna'] . "</td>";
                        echo "<td><button type='submit' name='edytuj' value='$nrPyt'>Edytuj</button></td>";
                    }

                    echo "</form></tr>";
                }

                echo "</table>";
            }
            else{
                echo "Brak wyników lub błąd zapytania.";
            }
        }

        if(isset($_POST['zapisz'])){
            $nrPyt = $_POST['nrPyt'];
            $pyt = $_POST['pyt'];
            $odpA = $_POST['odpA'];
            $odpB = $_POST['odpB'];
            $odpC = $_POST['odpC'];
            $odpD = $_POST['odpD'];
            $obraz = $_POST['obraz'];
            $poprawna = $_POST['poprawna'];

            $sql = "UPDATE `$tabela` SET 
                        pyt='$pyt', 
                        odpA='$odpA', 
                        odpB='$odpB', 
                        odpC='$odpC', 
                        odpD='$odpD', 
                        obraz='$obraz', 
                        poprawna='$poprawna'
                    WHERE nrPyt=$nrPyt";

            if(mysqli_query($con, $sql)){
                echo "<p style='color: green'>Zmieniono pytanie nr $nrPyt</p>";
            }
            else{
                echo "<p style='color: red'>Błąd: " . mysqli_error($con) . "</p>";
            }

            // ponownie pobierz dane, żeby mieć aktualne
            $sql = "SELECT * FROM `$tabela`";
            $wyniki = mysqli_query($con, $sql);
        }

        if(isset($_POST['dodaj'])){
            $nrPyt = mysqli_num_rows($wyniki) + 1;
            $pyt = $_POST['pyt'];
            $odpA = $_POST['odpA'];
            $odpB = $_POST['odpB'];
            $odpC = $_POST['odpC'];
            $odpD = $_POST['odpD'];
            $obraz = $_POST['obraz'];
            $poprawna = $_POST['poprawna'];

            $sql = "INSERT INTO $tabela(nrPyt, pyt, odpA, odpB, odpC, odpD, obraz, poprawna) 
                    VALUES ('$nrPyt', '$pyt', '$odpA', '$odpB', '$odpC', '$odpD', '$obraz', '$poprawna');";

            if(mysqli_query($con, $sql)){
                echo "<p style='color: green'>????????Zmieniono pytanie nr $nrPyt</p>";
            }
            else{
                echo "<p style='color: red'>Błąd: " . mysqli_error($con) . "</p>";
            }
            $sql = "SELECT * FROM `$tabela`";
            $wyniki = mysqli_query($con, $sql);
        }

            wyswietalnieTab();

            mysqli_close($con);

        ?>
    </secion>
</body>
</html>