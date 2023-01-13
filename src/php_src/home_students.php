
<?php
include_once 'database.php';	// call creating connection
mysqli_autocommit($conn,TRUE);	// enable to do changes in database

if(isset($_POST['save']))
{	 
	$time_id = null;
	$type_programe = $_POST['type_programe'];
	$academic_year1 = $_POST['academic_year1'];
	$academic_year2 = $_POST['academic_year2'];
	$academic_year = $academic_year1."/".$academic_year2;
	$field_of_study = $_POST['field_of_study'];
	$prior_years = $_POST['prior_years'];
	$institution = $_POST['institution'];
	$faculty = $_POST['faculty'];
	$coordinator = $_POST['coordinator'];
 	$first_name = $_POST['first_name'];
	$family_name = $_POST['family_name'];
	$date_of_birth = $_POST['date_of_birth'];
	$sex = $_POST['sex']; 
	$nationaly = $_POST['nationaly']; 
	$place_of_birth = $_POST['place_of_birth']; 
	$address1 = $_POST['address1']; 
	$address2 = $_POST['address2']; 
	$telephone = $_POST['telephone']; 
	$mail = $_POST['mail']; 

	$study = $_POST['study']; 
	$country = $_POST['country']; 
	$university = $_POST['university']; 
	$month1 = $_POST['month1']; 
	$month2 = $_POST['month2']; 
	$duration = $_POST['duration']; 
	$credits = $_POST['credits']; 
	$country2 = $_POST['country2']; 
	$university2 = $_POST['university2']; 
	$month12 = $_POST['month12']; 
	$month22 = $_POST['month22']; 
	$duration2 = $_POST['duration2']; 
	$credits2 = $_POST['credits2']; 
	$country3 = $_POST['country3']; 
	$university3 = $_POST['university3']; 
	$month13 = $_POST['month13']; 
	$month23 = $_POST['month23']; 
	$duration3 = $_POST['duration3']; 
	$credits3 = $_POST['credits3']; 

	$m_tongue = $_POST['m_tongue']; 
	$institution_language = $_POST['institution_language'];
	$other_language_1 = $_POST['other_language_1'];
	$a1 = $_POST['a1'] ?? "";
 	$other_language_2 = $_POST['other_language_2'];
	$r2a1 = $_POST['r2a1'] ?? "";
	$other_language_3 = $_POST['other_language_3'];
	$r3a1 = $_POST['r3a1'] ?? "";
	$previous_erasmus_study_1 = $_POST['yn1'] ?? "";
	$previous_study_1_from = $_POST['date_from_1'];
	$previous_study_1_till = $_POST['date_till_1'];
	$previous_erasmus_study_2 = $_POST['yn2'] ?? "";
	$previous_study_2_from = $_POST['date_from_2'];
	$previous_study_2_till = $_POST['date_till_2'];

	$confirm = $_POST['confirm'] ?? "";
	
$app_eror = 0;

$sql = "SELECT CURRENT_TIMESTAMP(6) AS time_id";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    $time_id = $row["time_id"];
  }
} else {
  echo "0 results"."<br>";
}

$sql = "INSERT INTO students (time_id, typ_programu, akademicky_rok, studijny_odbor, roky_studia, domaca_univerzita, 
							  domaca_fakulta, koordinator, meno_studenta, priezvisko_studenta, datum_narodenia, pohlavie, 
							  narodnost, miesto_narodenia, aktualna_adresa, trvala_adresa, telefon, email, stupen_studia, 
							  krajina_univerzity_1, univerzita_1, datum_zaciatku_programu_1, datum_konca_programu_1, 
							  dlzka_studia_v_mesiacoch_1, pocet_kreditov_1, krajina_univerzity_2, univerzita_2, 
							  datum_zaciatku_programu_2, datum_konca_programu_2, dlzka_studia_v_mesiacoch_2, pocet_kreditov_2,
							  krajina_univerzity_3, univerzita_3, datum_zaciatku_programu_3, datum_konca_programu_3, 
							  dlzka_studia_v_mesiacoch_3, pocet_kreditov_3, materinsky_jazyk, jazyk_domacej_univerzity, 
							  cudzi_jazyk_1, uroven_jazyka_1, cudzi_jazyk_2, uroven_jazyka_2, cudzi_jazyk_3, uroven_jazyka_3,
							  predosle_studium_na_programe, predosle_studium_od, predosle_studium_do, predosla_staz_na_programe,
							  predosla_staz_od, predosla_staz_do, potvrdenie) 
		VALUES ('$time_id','$type_programe', '$academic_year', '$field_of_study', '$prior_years', 
				'$institution', '$faculty', '$coordinator', '$first_name', '$family_name', '$date_of_birth', '$sex', 
				'$nationaly', '$place_of_birth', '$address1', '$address2', '$telephone', '$mail', '$study', '$country', 
				'$university', '$month1', '$month2', '$duration', '$credits', '$country2', '$university2', '$month12',
				'$month22', '$duration2', '$credits2', '$country3', '$university3', '$month13', '$month23', '$duration3',
				'$credits3', '$m_tongue', '$institution_language', '$other_language_1', '$a1', '$other_language_2', 
				'$r2a1', '$other_language_3', '$r3a1', '$previous_erasmus_study_1', '$previous_study_1_from', 
				'$previous_study_1_till', '$previous_erasmus_study_2', '$previous_study_2_from', '$previous_study_2_till',
				'$confirm')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully in table students!"."<br>";
	 } else {
		$app_eror = $app_eror + 1; 
		echo "Error: " . $sql . " " . mysqli_error($conn)."<br>";
	 }
	 
//---------------------------------------------------------------------------------------------------------------------


$uploaddir = "\erasmus\database\upload\\";	//directory on server to save attachments
$foto = $uploaddir . basename($_FILES['myfile0']['name']);
$curiculum_vitae = $uploaddir . basename($_FILES['myfile1']['name']);
$transcript = $uploaddir . basename($_FILES['myfile2']['name']);
$cover_letter = $uploaddir . basename($_FILES['myfile3']['name']);
$language_certificate = $uploaddir . basename($_FILES['myfile4']['name']);
$certificate_of_scientific = $uploaddir . basename($_FILES['myfile5']['name']);
$copy_of_passport = $uploaddir . basename($_FILES['myfile6']['name']);
$other_file = $uploaddir . basename($_FILES['myfile7']['name']);

if($foto != $uploaddir){
	if (move_uploaded_file($_FILES['myfile0']['tmp_name'], $foto)) {
		echo "File 0 $foto is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $foto upload failed!"."<br>";	
	}
}
else{
	$foto = NULL;
}
if($curiculum_vitae != $uploaddir){
	if (move_uploaded_file($_FILES['myfile1']['tmp_name'], $curiculum_vitae)) {
    	echo "File 1 $curiculum_vitae is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $curiculum_vitae upload failed!"."<br>";	
	}
}
else{
	$curiculum_vitae = NULL;
}
if($transcript != $uploaddir){
	if (move_uploaded_file($_FILES['myfile2']['tmp_name'], $transcript)) {
		echo "File 2 $transcript is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $transcript upload failed!"."<br>";
	}
}
else{
	$transcript = NULL;
}
if($cover_letter != $uploaddir){
	if (move_uploaded_file($_FILES['myfile3']['tmp_name'], $cover_letter)) {
		echo "File 3 $cover_letter is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $cover_letter upload failed!"."<br>";
	}
}
else{
	$cover_letter = NULL;
}
if($language_certificate != $uploaddir){
	if (move_uploaded_file($_FILES['myfile4']['tmp_name'], $language_certificate)) {
		echo "File 4 $language_certificate is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $language_certificate upload failed!"."<br>";
	}	
}
else{
	$language_certificate = NULL;
}
if($certificate_of_scientific != $uploaddir){
	if (move_uploaded_file($_FILES['myfile5']['tmp_name'], $certificate_of_scientific)) {
		echo "File 5 $certificate_of_scientific is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $certificate_of_scientific upload failed!"."<br>";
	}
}
else{
	$certificate_of_scientific = NULL;
}
if($copy_of_passport != $uploaddir){
	if (move_uploaded_file($_FILES['myfile6']['tmp_name'], $copy_of_passport)) {
		echo "File 6 $copy_of_passport is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $copy_of_passport upload failed!"."<br>";
	}
}
else{
	$copy_of_passport = NULL;
}
if($other_file != $uploaddir){
	if (move_uploaded_file($_FILES['myfile7']['tmp_name'], $other_file)) {
		echo "File 7 $other_file is valid, and was successfully uploaded."."<br>";
	} else {
		$app_eror = $app_eror + 1;
		echo "File 0 $other_file upload failed!"."<br>";
	}
}
else{
	$other_file = NULL;
}



$sql = "INSERT INTO attachments_foto (foto, time_id, zivotopis, prepis_zaznamov, motivacny_list, jazykova_sposobilost, 
									  vedecke_a_akademicke_uspechy, kopia_pasu, ine) 
		VALUES ('".basename($foto)."', '$time_id', '".basename($curiculum_vitae)."', '".basename($transcript)."', '".basename($cover_letter)."',
				'".basename($language_certificate)."', '".basename($certificate_of_scientific)."', '".basename($copy_of_passport)."', 
				'".basename($other_file)."')";

	 if (mysqli_query($conn, $sql) && ($app_eror == 0)) {
		echo "New record created successfully in table attachments_foto!";
	 } else {
		$app_eror = $app_eror + 1; 
		echo "Error: " . $sql . " " . mysqli_error($conn);
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
	echo '<a href="/erasmus/web/home_students_web.html">Back to formular</a>';
	echo '</button>';
}

?>




