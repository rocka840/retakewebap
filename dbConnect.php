<?php 
  $servername="localhost";
  $username="root";
  $password="";
  $db="ccr";

  $conn = new mysqli($servername, $username, $password, "ccr");

  //Check connection 
  if($conn->connect_error){
      die("Connection failed: ". $conn->connect_error);
}

      