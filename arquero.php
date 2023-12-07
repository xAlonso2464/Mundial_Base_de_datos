<?php
    include("database.php");
    $sql="SELECT * FROM jugador where idPais = 1";
    $result= mysqli_query($connec, $sql);
 ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>World cup 2022</title>
    <link rel="shortcut icon" href="img/LOGO-QATAR-2022-4.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="assets/pais.css" />
</head>

<body>
    <section id="hero">
        <header class="header">
            <div class="container">
                <nav class="navigation">
                    <a href="index.html" class="logo">
                        <img src="img/logo_(1)_upscaled.png" alt="Logo" class="logo-img"/>
                    </a>
                    <div class="mobile-menu-icon">
                        <ion-icon name="menu-outline" class="menu_icon"></ion-icon>
                    </div>
                    <ul class="nav_menu">
                        <li class="nav_list">
                            <a href="" class="nav_link active">Home</a>
                        </li>
                        <li class="nav_list">
                            <a href="stadium.html" class="nav_link">Stadium</a>
                        </li>
                        <li class="nav_list">
                            <a href="match.html" class="nav_link" target="_matches">Match Schedule</a
                >
              </li>
              <li class="nav_list">
                <a href="#!" class="nav_link">Explore</a>
                        </li>
                        <li class="nav_list btn-nav">
                            <a href="#!" class="btn-outline">
                                <span>Start your journey</span>
                                <ion-icon name="compass-outline"></ion-icon>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        </div>
        </section>
        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">
                        <table class="table table-bordered">
                        <tr>
                                <td> idPais </td>
                                <td> posicion </td>
            
                            </tr>
    
                            <?php 
                                    
                                    while($row=mysqli_fetch_assoc($result))
                                    {
                                        $IdJugador = $row['idJugador'];
                                        $IdPais = $row['idPais'];
                                        $IdPosicion = $row['idPosicion'];
                                        $nombre = $row['nombre'];
                                        $apellido = $row['apellido'];
                                        $nacimiento = $row['nacimiento'];
                                        $numCamiseta = $row['numCamiseta'];
                            ?>
                                    <tr>
                                        <td><?php echo $IdJugador ?></td>
                                        <td><?php echo $IdPais ?></td>
                                        <td><?php echo $IdPosicion ?></td>
                                        <td><?php echo $nombre ?></td>
                                        <td><?php echo $apellido ?></td>
                                        <td><?php echo $nacimiento ?></td>
                                        <td><?php echo $numCamiseta ?></td>
                                        
                                        
                                    </tr>        
                            <?php 
                                    }  
                            ?>                                                                  
                                   

                        </table>
                    </div>
                </div>
            </div>
        </div>

        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </html>

        </body>