<?php



$db = new database();
//$pc = new postcode();

$gemeentes_html = null;
$provincies_html = null;
$add_html = null;

if(isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $db->deleteGemeente($id);
}

if(isset($_GET['add'])) {
    $add_html = "<div>
            <form action='/' method='post'>
                <input type='text' name='gemeente' required placeholder='gemeentenaam'>
                <input type='text' name='pid' required placeholder='provincie id'>
                <input type='hidden' name='action' value='add'>
                <input type='submit' name='submit' value='submit'>
            </form>
        </div>";
}

if(isset($_POST['action'])) {
    switch ($_POST['action']) {
        case 'add':
            $gemeente = htmlspecialchars($_POST['gemeente']);
            $id = htmlspecialchars($_POST['pid']);
            $db->addGemeente($gemeente,$id);
            break;
    }
}

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
            <div onclick=\"deleteItem(%s);\"><i class=\"fa-solid fa-trash\"></i></div>
            <div onclick=\"editItem(%s);\"><i class=\"fa-solid fa-pen\"></i></div>
            <div>%s</div>
            <div>%s</div>
        </div>",$gemeente->id,$gemeente->id,$gemeente->id,$gemeente->naam);
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet"/>
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

        .gemeente > div > i:first-child:hover {
            color: red;
        }


    </style>
</head>
<body>

<button onclick="getGemeente(1);alert('zie console voor JSON informatie')">test json (zie console)</button>

<button onclick="addGemeente();">Add</button>

<?=$add_html?>

<form action="/" method="post">
    <select name="provincies" onchange="this.form.submit()">
           <?=$provincies_html?>
    </select>

    <div class="gemeente_container">
       <?=$gemeentes_html?>
    </div>

</form>



<script>

    function addGemeente() {
        window.open("/?add","_self");
    }


    // delete a gemeente
    function deleteItem(id) {
        if(confirm(`dit wist record ${id}, doorgaan?`)) {
            window.open("/?delete=" + id,"_self")

            // manier 2 -> async
           /*deleteGemeente(id);
           window.open('/');*/
        }
    }


    document.addEventListener("DOMContentLoaded",function() {
        fetch('http://classuitleg.local/api?provincie')
            .then(response => response.json())
            .then(data => console.log(data));
    });


    async function getGemeente(ident) {
            const object = {id:ident};
            const response = await fetch('http://classuitleg.local/api?gemeente', {
                method: 'POST',
                body: JSON.stringify(object)
            }).then(response => response.json())
            .then(data => console.log(data));
    }


    async function deleteGemeente(ident) {
        const object = {id:ident};
        const response = await fetch('http://classuitleg.local/api?deletegemeente', {
            method: 'POST',
            body: JSON.stringify(object)
        }).then(response => response.json())
            .then(data => console.log(data));
    }


</script>

</body>
</html>
