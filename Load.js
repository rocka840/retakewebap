$(start);

function start() {
    $("#cities").load("City.php?"+"Country="+$("#Country").val());
    $("#Country").on("change",differentCountry);
}

function differentCountry(){
    $("#citydiv").html("");
    $("#citydiv").load("City.php?"+"Country="+$("#Country").val())
    $("#citydiv").on("change",cases);
}

function cases() {
    $("#covidCases").html("");
    $("#covidCases").load("City.php?"+"cities="+$("#cities").val())
}