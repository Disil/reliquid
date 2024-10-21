<?php
class User {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function register($username, $password) {
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
        $stmt = $this->db->prepare("INSERT INTO users (username, password) VALUES (:username, :password)");
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $hashedPassword);
        return $stmt->execute();
    }
}
?>