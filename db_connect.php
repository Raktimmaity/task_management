<?php
            require_once 'config.php';
            try {
                $pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                die('DB ERROR: ' . $e->getMessage());
            }
            // $pdo=mysqli_connect("sql307.infinityfree.com","	if0_37175168","ssmnWbcgsDBgB","if0_37175168_task");
            // $pdo=mysqli_connect("localhost","root","","task1");
            ?>
            