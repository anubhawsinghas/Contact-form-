<!DOCTYPE html>  
<html>  
<head>  
<style>  
.error {color: #FF0001;}  
</style>  
</head>  
<body>    
  
<?php  
// define variables to empty values  
$nameErr = $emailErr = $mobilenoErr = $subjectErr = $messageErr = $agreeErr = "";  
$name = $email = $mobileno = $subject = $message = $agree = "";  
  
//Input fields validation  
if ($_SERVER["REQUEST_METHOD"] == "POST") {  
      
//String Validation  
    if (empty($_POST["name"])) {  
         $nameErr = "Name is required";  
    } else {  
        $name = input_data($_POST["name"]);  
            // check if name only contains letters and whitespace  
            if (!preg_match("/^[a-zA-Z ]*$/",$name)) {  
                $nameErr = "Only alphabets and white space are allowed";  
            }  
    }  
      
    //Email Validation   
    if (empty($_POST["email"])) {  
            $emailErr = "Email is required";  
    } else {  
            $email = input_data($_POST["email"]);  
            // check that the e-mail address is well-formed  
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {  
                $emailErr = "Invalid email format";  
            }  
     }  
    
    //Number Validation  
    if (empty($_POST["mobileno"])) {  
            $mobilenoErr = "Mobile no is required";  
    } else {  
            $mobileno = input_data($_POST["mobileno"]);  
            // check if mobile no is well-formed  
            if (!preg_match ("/^[0-9]*$/", $mobileno) ) {  
            $mobilenoErr = "Only numeric value is allowed.";  
            }  
        //check mobile no length should not be less and greator than 10  
        if (strlen ($mobileno) != 10) {  
            $mobilenoErr = "Mobile no must contain 10 digits.";  
            }  
    }  

    //Subject Validation  
    if (empty($_POST["subject"])) {  
        $subjectErr = "Subject is required";  
   } else {  
       $subject = input_data($_POST["subject"]);  
          
   }  

   //Message Validation  
   if (empty($_POST["message"])) {  
    $messageErr = "Message is required";  
} else {  
   $message = input_data($_POST["message"]);  
      
}  
        
}  
function input_data($data) {  
  $data = trim($data);  
  $data = stripslashes($data);  
  $data = htmlspecialchars($data);  
  return $data;  
}  
?>  
  
<h2>Simple HTML Form</h2>  
<span class = "error">* required field </span>  
<br><br>  
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" >    
    Name:   
    <input type="text" name="name" placeholder="<?php echo $name; ?>"> 
    <span class="error">* <?php echo $nameErr; ?> </span>  
    <br><br>  
   
    Mobile No:   
    <input type="text" name="mobileno" placeholder="<?php echo $mobileno; ?>" >  
    <span class="error">* <?php echo $mobilenoErr; ?> </span>  
    <br><br>  

    E-mail:   
    <input type="text" name="email" placeholder="<?php echo $email; ?>">  
    <span class="error">* <?php echo $emailErr; ?> </span>  
    <br><br>  

    Subject:   
    <input type="text" name="subject" placeholder="<?php echo $subject; ?>" >  
    <span class="error">* <?php echo $subjectErr; ?> </span>  
    <br><br>

    Message:   
    <textarea id="message" name="message" placeholder="<?php echo $message; ?>" style="height:200px" size="100"></textarea>

    <span class="error">* <?php echo $messageErr; ?> </span>  
    <br><br>
                              
    <input type="submit" name="submit" value="Submit">   
    <br><br>                             
</form>  
  
<?php  

$localIP = gethostbyname(gethostname());

$con=new mysqli('localhost', 'root', '', 'contactDB');

if (!$con) {

    die(mysqli_error($con));
}

    if(isset($_POST['submit'])) {  
    if($nameErr == "" && $emailErr == "" && $mobilenoErr == "" && $subjectErr == "" && $messageErr == ""  && $agreeErr == "") {  
       
    $name = ($_POST['name']);  
    $mobileno = ($_POST['mobileno']);
    $email = ($_POST['email']);
    $subject = ($_POST['subject']);
    $message = ($_POST['message']);
    

    $sql = "INSERT INTO `contact_form` (`name`, `mobileno`, `email`, `subject`, `message`, `localIP`) VALUES ('$name', '$mobileno', '$email', '$subject', '$message', '$localIP')";

    $result = mysqli_query($con, $sql);

    if($result){
        echo  "
        <script>
        alert('Insert Successfull');
        window.location.href='contact.php';
        
        </script>
        ";  
    }else {
      echo  "
      <script>
      alert('Not Insert');
      window.location.href='contact.php';
      
      </script>
      ";  
    }
         
    } else {  
        echo "<h3> <b>You didn't filled up the form correctly.</b> </h3>";  
    }  
    }  
?>  
  
</body>  
</html>  

<!-- logic for send mail -->

<?php
if(!empty($_POST["submit"])) {
	$name = $_POST["name"];
  $mobileno = $_POST["mobileno"];
	$email = $_POST["email"];
	$subject = $_POST["subject"];
    $message = $_POST["message"];
	$toEmail = "anubhawsinghas@gmail.com";
  
	$mailHeaders = "Name: " . $name .
	"\r\n Phone: ". $mobileno  . 
    "\r\n email: ". $email  .
    "\r\n subject: ". $subject  .
	"\r\n Message: " . $userMessage . "\r\n";

	if(mail($toEmail, $name, $mailHeaders)) {
	    $my_message = "Your contact information is received successfully.";
	}
}
?>

<?php if (! empty($my_message)) {?>

    <strong><?php echo $my_message; ?>	</strong>

    <?php } ?>