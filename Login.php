<?php
$title ="All Projects";
$content ='<h1> login above <h1>'; 

$messages = array();
switch ($_SERVER["REQUEST_METHOD"]) {
  case "GET":
    display_form();
    break;
  case "POST":
    do_post();
    break;
  default:
    die("Not implemented");
}

function display_form() {
  // Use global variable $messages
  global $messages;
  // Get input value if any
  $username = ($_SERVER["REQUEST_METHOD"] == "GET") ? "" : $_POST["username"];
  if (!array_key_exists("username", $messages)) {
    $messages["username"] = "";
  }
  else {
    $messages["username"] = "<span style='color: red;'>$messages[username]</span>";
  }
  $password = ($_SERVER["REQUEST_METHOD"] == "GET") ? "" : $_POST["password"];
  if (!array_key_exists("password", $messages)) {
    $messages["password"] = "";
  }
  else {
    $messages["password"] = "<span style='color: red;'>$messages[password]</span>";
  }
  // Print the form
  print <<<END_FORM
  <form method="POST">
    Username
    <input type="text" name="username" value="$username"/>$messages[username]
    <br/>
    password
    <input type="password" name="password" value="$username"/>$messages[username]
    </br>
    <button type="submit">Login</button>
  </form>
END_FORM;
}

function do_post() {
  global $messages;
  $username = (empty($_POST["username"])) ? "" : (trim($_POST["username"]));
  if ($username == "") {
    $messages["username"] = "This field should be filled";
    display_form();
  }
  else if (strlen($username) < 3) {
    $messages["username"] = "Username must have at least 3 characters";
    display_form();
  }
  else {
    // Some processing (register in DB for example)
    print "loin successfull";
  }
}
include 'Template.php';
?>