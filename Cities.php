<?php

include_once "dbConnect.php";

if(isset($_GET["Country"])){

$sql = $conn->prepare("SELECT * FROM Cities WHERE CountryFkId=?");
$countrySelected = $_GET["Country"];
$sql->bind_param("i",$countrySelected);
$sql->execute();
$res=$sql->get_result();

print("Select city:  ");
    
print("<select id='Cities'>");
    
while($row = $res->fetch_assoc()){
?>
<option value="<?=$row["RegionName"]?>"><?= $row["RegionName"]?></option>

<?php
    }
print("</select>");

$sql->close();

}

if(isset($_GET["Cities"])){
    
    $sql = $conn->prepare("SELECT CovidCases FROM Cities WHERE RegionName=?");
    $citySelected = $_GET["Cities"];
    $sql->bind_param("s",$citySelected);
    $sql->execute();
    $res=$sql->get_result();

    $cases = $res->fetch_assoc();
    echo "There are ".$cases["CovidCases"]." covid cases in ".$citySelected;
}
?>
