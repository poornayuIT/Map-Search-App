<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Add CORS headers to allow requests from any origin
header("Access-Control-Allow-Origin: *"); // You can replace '*' with your specific frontend domain for more security
header("Content-Type: application/json");

// Database connection variables
$server = "localhost";
$username = "root";
$password = "B3ngal@india";
$dbname = "purulia_tourism";

// Create a connection to the database
$conn = mysqli_connect($server, $username, $password, $dbname);

// Check if the connection is successful
if ($conn) {
    // Retrieve JSON input data from the request
    $inputData = json_decode(file_get_contents("php://input"), true);

    // Check if input data exists
    if ($inputData) {
        // Sanitize and assign data to variables
        $name = mysqli_real_escape_string($conn, $inputData['name']);
        $email = mysqli_real_escape_string($conn, $inputData['email']);
        $message = mysqli_real_escape_string($conn, $inputData['message']);

        // Insert the data into the database (change 'contacts' to your table name if necessary)
        $query = "INSERT INTO feedback (name, email, message) VALUES ('$name', '$email', '$message')";
        $data = mysqli_query($conn, $query);

        // Check if data was inserted successfully
        if ($data) {
            echo json_encode(['message' => 'Data saved successfully']);
        } else {
            echo json_encode(['message' => 'Error saving data', 'error' => mysqli_error($conn)]);
        }
    } else {
        echo json_encode(['message' => 'Invalid data received']);
    }
} else {
    echo json_encode(['message' => 'Database connection failed', 'error' => mysqli_connect_error()]);
}

// Close the database connection
mysqli_close($conn);
?>
