<?php



$db = new database();
//$pc = new postcode();

$gemeentes_html = null;
$provincies_html = null;


//$thomas = $pc->getStreet("3772WL");
//$daan = $pc->getStreet("3832LD");
//$memet = $pc->getStreet("3752JK");
//printf("<br>Thomas woont in de straat %s",$thomas);
//printf("<br>Daan woont in de straat %s",$daan);
//printf("<br>Memet woont in de straat %s",$memet);
//$k = new klant($thomas,10);


// LIJST MET PROVINCIES
$provincies = $db->getProvincies();
$options = [];
foreach ($provincies as $p) {
    $selected_provincie_id = null;
    if(isset($_POST['provincies'])) {
        $selected_provincie_id = $_POST['provincies'];
    }


    // $p = provincie object
    $output = sprintf("<option %s value=\"%s\">%s</option>",
        ($selected_provincie_id == $p->id) ? "selected" : "" ,
        $p->id,
        $p->naam);
    array_push($options,$output);
}
//var_dump($options);
$provincies_html = join("",$options);


// bouw de gemeente lijst op:
if(isset($_POST['provincies'])) {
    $selected_provincie_id = $_POST['provincies'];
    $gemeentes = $db->getGemeentes($selected_provincie_id);
    //var_dump($gemeentes);
    $table_rows = [];
    foreach ( $gemeentes as $gemeente) {
        $output = sprintf("<div class=\"gemeente\">
            <div>%s</div>
            <div>%s</div>
        </div>",$gemeente->id,$gemeente->naam);
        array_push($table_rows,$output);
    }
    $gemeentes_html = join("",$table_rows);
}


?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <style>
        .gemeente_container {
            display: flex;
            flex-direction: column;

        }

        .gemeente {
            display: flex;
            border:  1px solid black;
        }

        .gemeente > div {
            flex: 1;
        }

        .gemeente:nth-child(odd) {
            background-color: aliceblue;
        }

        .gemeente:nth-child(even) {
            background-color: darkgrey;
        }


    </style>
</head>
<body>

<form action="/" method="post">
    <select name="provincies" onchange="this.form.submit()">
           <?=$provincies_html?>
    </select>

    <div class="gemeente_container">
       <?=$gemeentes_html?>
    </div>

</form>

</body>
</html>
