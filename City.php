<?php

include_once "DbConnect.php";

if(isset($_GET["Country"])){

$sql = $conn->prepare("SELECT * FROM cities WHERE CountryFkId=?");
$countrySelected = $_GET["Country"];
$sql->bind_param("i",$countrySelected);
$sql->execute();
$res=$sql->get_result();

print("Select city:  ");
    
print("<select id='cities'>");
    
while($row = $res->fetch_assoc()){
?>
<option value="<?=$row["RegionName"]?>"><?= $row["RegionName"]?></option>

<?php
    }
print("</select>");

$sql->close();

}

if(isset($_GET["cities"])){
    
    $sql = $conn->prepare("SELECT CovidCases FROM cities WHERE RegionName=?");
    $citySelected = $_GET["cities"];
    $sql->bind_param("s",$citySelected);
    $sql->execute();
    $res=$sql->get_result();

    $cases = $res->fetch_assoc();
    echo "There are ".$cases["CovidCases"]." covid cases in ".$citySelected;
}
?>
