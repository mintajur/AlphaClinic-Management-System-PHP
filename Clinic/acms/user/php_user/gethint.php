<?php
// Array with names
$a[] = "Aristotol Grahambell";
$a[] = "Ashik Abdullah";
$a[] = "Aysha Islam";
$a[] = "Anna Linkon";
$a[] = "Brittany Laula";
$a[] = "Cinderella Michele";
$a[] = "Diana Dewal";
$a[] = "Eva Marrie";
$a[] = "Fiona Paris";
$a[] = "Gunda Steve";
$a[] = "Hege Cook";
$a[] = "Inga Mario";
$a[] = "Johanna Levise";
$a[] = "Katty Parrie";
$a[] = "Linda Johns";
$a[] = "Nina Agarwal";
$a[] = "Ophelia Stuart";
$a[] = "Petunia Xavvy";
$a[] = "Amanda Unes";
$a[] = "Raquel Rashford";
$a[] = "Cindy Salsa";
$a[] = "Doris Johnson";
$a[] = "Eve Smith";
$a[] = "Evita Ortoga";
$a[] = "Sunniva Samsung";
$a[] = "Tove Toryy";
$a[] = "Unni Viesta";
$a[] = "Violet Johnson";
$a[] = "Liza Akhter";
$a[] = "Elizabeth Arnold";
$a[] = "Ellen Shaw";
$a[] = "Wenche Miller";
$a[] = "Vicky Stuart";


// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $fullname) {
    if (stristr($q, substr($fullname, 0, $len))) {
      if ($hint === "") {
        $hint = $fullname;
      } else {
        $hint .= ", $fullname";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>