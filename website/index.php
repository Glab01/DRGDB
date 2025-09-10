<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DRG DB</title>
    <link rel="stylesheet" href="./resources/style.css">
    <link rel="icon" type="image/x-icon" href="./resources/faviicon.ico">
</head>
<body>
    <main>
        <div id="PanelTop"></div>
        <div id="PanelBody">
            <div id="Options">
                <form>
                    <p>
                        Hazard multiplier<br>
                        <select name="Hazardplier">
                            <option>DEFAULT</option>
                            <option>HAZARD 1</option>
                            <option>HAZARD 2</option>
                            <option>HAZARD 3</option>
                            <option>HAZARD 4</option>
                            <option>HAZARD 5</option>
                        </select>    
                    </p>     
                </form>
            </div>
            <div id="Information"></div>
        </div>
    </main>
</body>
</html>
<?php
    //Fetches data from the server
    require './ServerLink.php';

?>