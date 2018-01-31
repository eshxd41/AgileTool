<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title><?php echo $title; ?></title>
        <link rel="stylesheet" type="text/css" href="Styles/StyleSheets.css"/>
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
                
            </div>
            <nav id="navigation">
                <ul id="nav">
                    <li><a href="Login.php">Login</a></li>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="CreateProject.php">Create Project</a></li>
                     <li><a href="AllProjects.php">All Projects</a></li>
                    <li><a href="AddMember.php">Add Member</a></li>
                    <li><a href="CreateFeature.php">Create Feature</a></li>
                    <li><a href="Status.php">Project Status</a></li>
                    <li><a href="LoginForm.php">Register Form</a></li>
                    
                   
                
                </ul>
                
                
            </nav>
            <div id="content_area">
                <?php echo $content;?>
            </div>
            
            <div id="sidebar">
                
            </div>
            
            <footer>
                <p><h4>All Rights Reserved to EPITA,Paris Students Ganesh, Suresh, Viquar</h4></p>
            </footer>
            
        </div>
        
    </body>
</html>
