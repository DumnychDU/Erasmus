
<?php
include_once 'database.php';    // call creating connection
mysqli_autocommit($conn,TRUE);  // enable to do changes in database

if(isset($_POST['save_to_db']))
{	 
 	$first_name = $_POST['first_name'];
	$surname_name = $_POST['surname_name'];
	$personal_id = $_POST['personal_id'];
    $date_and_place = $_POST['date_and_place'];
    $nationaly = $_POST['nationaly'];
    $h_ability = $_POST['h_ability'];
    $m_status = $_POST['m_status'];
    $citizenship = $_POST['citizenship'];
    $sex = $_POST['sex'];
    $passport = $_POST['passport'];
    $present_street = $_POST['present_street'];
    $present_city = $_POST['present_city'];
    $present_state = $_POST['present_state'];
    $permanent_street = $_POST['permanent_street'];
    $permanent_city = $_POST['permanent_city'];
    $permanent_state = $_POST['permanent_state'];
    $mail = $_POST['mail'];
    $phone_number = $_POST['phone_number'];
    $home_university = $_POST['home_university'];
    $study_field = $_POST['study_field'];
    $specialization = $_POST['specialization'];
    $year_of_study = $_POST['year_of_study'];
    $level_of_study = $_POST['level_of_study'];
    $duration_from = $_POST['duration_from'];
    $duration_to = $_POST['duration_to'];

$app_eror = 0;


$sql = "INSERT INTO incoming_students (meno, priezvisko, rodne_cislo, datum_a_miesto_narodenia, narodnost, zdravotny_stav,
							  rodinny_stav, statna_prislusnost, pohlavie, cislo_pasu, sucasna_ulica, sucasne_mesto, 
                              sucasny_stat, trvala_ulica, trvale_mesto, trvaly_stat, email, telefon, domaca_univerzita, 
							  studijny_odbor, specializacia, rok_studia, stupen_studia, trvanie_studia_od,
							  trvanie_studia_do) 
		VALUES ('$first_name', '$surname_name', '$personal_id', '$date_and_place', '$nationaly', '$h_ability',
				'$m_status', '$citizenship', '$sex', '$passport', '$present_street', '$present_city', '$present_state', 
				'$permanent_street', '$permanent_city', '$permanent_state', '$mail', '$phone_number', '$home_university', 
                '$study_field', '$specialization', '$year_of_study', '$level_of_study', '$duration_from', '$duration_to')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully in table incoming_students!";
	 } else {
        $app_eror = $app_eror + 1; 
		echo "Error: " . $sql . "
" . mysqli_error($conn);

	 }
	 mysqli_close($conn);
}

if($app_eror == 0){
    echo "<br>";
    echo '<button style="text-align: center">';
    echo '<a href="/erasmus/web/erasmus.html">Back to main page</a>';
    echo '</button>';
    }
    else{
        echo "<br>";
        echo "Number of errors  " . $app_eror;
        echo "<br>";
        echo '<button style="text-align: center">';
        echo '<a href="/erasmus/web/incoming_students_web.html">Back to formular</a>';
        echo '</button>';
    }

?>

