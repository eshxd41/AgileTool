
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
         <?php
        $title = "Create Project";
        $content='<label><b>Project Name: </b></label>
    <input type="text" placeholder="Enter Name" name="pname" required>
    
    <label><b>Discription </b></label>
    <input type="comment" placeholder="Enter discription" name="dis" required>
    
    <button type="submit">Submit</button>';
        include 'Template.php';
        
        ?>
        
    </body>
</html>
