<?php
// Array with addressnames
$a[] = "Aricha Highway";
$a[] = "Dhamrai";
$a[] = "Demra";
$a[] = "Dokkinkhan";
$a[] = "Gabtoli";
$a[] = "Jatrabari";
$a[] = "Kallanpur";
$a[] = "Mogbazar";
$a[] = "Noyapolton";
$a[] = "Rajlokkhi";
$a[] = "Sayedabad";
$a[] = "Tejgaon";
$a[] = "Tejkunipara";
$a[] = "Kuril";
$a[] = "Rampura";
$a[] = "Banasri";
$a[] = "Banani";
$a[] = "Badda";
$a[] = "Australia";
$a[] = "Bangladesh";
$a[] = "Canada";
$a[] = "Denmark";
$a[] = "Ethiopiya";
$a[] = "Finland";
$a[] = "Germeny";
$a[] = "Hondurus";
$a[] = "India";
$a[] = "Jamaika";
$a[] = "Kuet";
$a[] = "Lebanon";
$a[] = "Nigeria";
$a[] = "Oman";
$a[] = "Papua newgini";


// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $address) {
    if (stristr($q, substr($address, 0, $len))) {
      if ($hint === "") {
        $hint = $address;
      } else {
        $hint .= ", $address";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>