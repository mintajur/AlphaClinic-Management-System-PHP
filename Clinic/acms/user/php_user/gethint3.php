<?php
// Array with names
$a[] = "anna@gmail.com";
$a[] = "brittany@gmail.com";
$a[] = "cinderella@gmail.com";
$a[] = "diana@gmail.com";
$a[] = "eva@gmail.com";
$a[] = "fiona@gmail.com";
$a[] = "gunda@gmail.com";
$a[] = "hege@gmail.com";
$a[] = "inga@gmail.com";
$a[] = "johanna@gmail.com";
$a[] = "kitty@gmail.com";
$a[] = "linda@gmail.com";
$a[] = "nina@gmail.com";
$a[] = "ophelia@gmail.com";
$a[] = "petunia@gmail.com";
$a[] = "amanda@gmail.com";
$a[] = "raquel@gmail.com";
$a[] = "cindy@gmail.com";
$a[] = "doris@gmail.com";
$a[] = "eve@gmail.com";
$a[] = "evita@gmail.com";
$a[] = "sunniva@gmail.com";
$a[] = "iove@gmail.com";
$a[] = "unni@gmail.com";
$a[] = "violet@gmail.com";
$a[] = "liza@gmail.com";
$a[] = "elizabeth@gmail.com";
$a[] = "ellen@gmail.com";
$a[] = "wenche@gmail.com";
$a[] = "vicky@gmail.com";

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $email) {
    if (stristr($q, substr($email, 0, $len))) {
      if ($hint === "") {
        $hint = $email;
      } else {
        $hint .= ", $email";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>