$(start);

function start() {
    $("#Cities").load("Cities.php?"+"Country="+$("#Country").val());
    $("#Country").on("change",differentCountry);
}

function differentCountry(){
    $("#Region").html("");
    $("#Region").load("Cities.php?"+"Country="+$("#Country").val())
    $("#Region").on("change",cases);
}

function cases() {
    $("#Covid").html("");
    $("#Covid").load("Cities.php?"+"Cities="+$("#Cities").val())
}