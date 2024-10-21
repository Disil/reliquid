<?php
require 'flight/Flight.php';

// Database configuration
Flight::register('db', 'PDO', array('mysql:host=reliquid-db-reliquid.i.aivencloud.com:22381;dbname=reliquid','avnadmin', 'AVNS_UCk44b-vvmAo0cetie2'));

// Routing untuk halaman beranda
Flight::route('/', function(){
    include 'views/home.php';
});

Flight::route('/login', function(){
    include 'views/login.php';
});

Flight::route('/register', function(){
    include 'views/register.php';
});
?>
