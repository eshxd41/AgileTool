<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $title ="Create Feature";
        $content ='<h2>Create Feature  </h2>'
                .'Id: <select name="id">
                <option >..</option>    
                <option >1</option>
                <option >2</option>
                <option >3</option>
                <option >4</option>
                </select><br><br>'
                
                
                . 'Title: <input type="text" name="ftitle" placeholder="enter title"><br><br>
                    
                   Discription: <input type="text" name="fdes" placeholder="enter des"><br><br>
                   
                   Benfits: <input type="text" name="fben" placeholder="enter Benefits"><br><br>
                   
                   <button type="featureadd">Add Feature</button>';
        
        
        include 'Template.php';
        ?>
    </body>
</html>
