<?php
//CHANGE THOSE VARIABLES, IF THE WEBSITE CAN'T ACCESS THE SERVER
$ServerAddress = "localhost";
$ServerUser = "root";
$UserPassword = "";
$DBName = "drg db";

$connection = new PDO("mysql:host=$ServerAddress;dbname=$DBName", $ServerUser, $UserPassword);