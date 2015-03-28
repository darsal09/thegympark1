<?php
require_once "business/Mail.php";

$from = "Darwin <dmsservices@gmail.com>";
$to = "Darwin Salgado <darsal09@yahoo.com>";
$subject = "Testing email system";
$body = "PEAR Mail successfully sent this email.";
 
$host = "smtp.mandrillapp.com";
$username = "darwindeveloping@gmail.com";
$password = "Yz_Sr6yq9AeYsiFq1upxHQ";
$port = "587";
 
$headers = array ('From' => $from,
  'To' => $to,
  'Subject' => $subject);
  
$smtp = Mail::factory('smtp',
  array ('host' => $host,
    'port' => $port,
    'auth' => true,
    'username' => $username,
    'password' => $password));
 
$mail = $smtp->send($to, $headers, $body);

if (PEAR::isError( $mail )) 
  echo "<p> Message not sent: " . $mail->getMessage() . "</p>";
else
  echo "<p>Message successfully sent!</p>";

?>