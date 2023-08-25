<?php
// Array with names
$a[] = "Dhaka";
$a[] = "Gazipur";
$a[] = "Narayanganj";
$a[] = "Gaibandha";
$a[] = "Kurigram";
$a[] = "Lalmonirhat";
$a[] = "Nilphamari";
$a[] = "Panchagarh";
$a[] = "Thakurgaon";
$a[] = "Saidpur";
$a[] = "Khetlal";
$a[] = "Akkelpur";
$a[] = "Ghorashal";
$a[] = "Monohardi";
$a[] = "Shibpur";
$a[] = "Raipura";
$a[] = "Madhabdi";
$a[] = "Dhanbari";
$a[] = "Gopalpur";
$a[] = "Ghatail";
$a[] = "Elenga";
$a[] = "Aricha";
$a[] = "Basail";
$a[] = "Kishoreganj";
$a[] = "Gopalganj";
$a[] = "Shariatpur";
$a[] = "Rajbari";
$a[] = "Tongi";
$a[] = "Sreepur";
$a[] = "Munshiganj";

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $city) {
    if (stristr($q, substr($city, 0, $len))) {
      if ($hint === "") {
        $hint = $city;
      } else {
        $hint .= ", $city";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>