<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Country List</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <script src='Load.js'></script>
</head>
<body>
<?php

include_once "dbConnect.php";
    
$sql = $conn->prepare("SELECT * FROM Countries");
$sql->execute();
$res=$sql->get_result();

print "Select a country:  ";

print("<select id='Country'>");

    while($row = $res->fetch_assoc()){
?>

    <option value="<?= $row["CountryId"] ?>"><?= $row["CountryName"]?></option>

<?php
        }
        print("</select>");
    
        $sql->close();
?>

<div id="Region"></div>
<div id="Covid"></div>

</body>
</html>