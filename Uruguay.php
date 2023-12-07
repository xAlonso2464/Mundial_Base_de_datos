<?php
    include("database.php");
    $sql="SELECT * FROM jugador where idPais=32";
    $result= mysqli_query($connec, $sql);
 ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Jugadores - World cup 2022</title>
    <link rel="shortcut icon" href="img/LOGO-QATAR-2022-4.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="assets/pais.css"/>

</head>

<body>
    <section id="hero">
        <header class="header">
            <div class="container">
                <nav class="navigation">
                    <a href="index.php" class="logo">
                        <img src="img/logo_(1)_upscaled.png" alt="Logo" class="logo-img"/>
                    </a>
                    <div class="mobile-menu-icon">
                        <ion-icon name="menu-outline" class="menu_icon"></ion-icon>
                    </div>
                    <ul class="nav_menu">
                        <li class="nav_list">
                            <a href="index.php" class="nav_link ">Home</a>
                        </li>
                        <li class="nav_list">
                            <a href="pais.php" class="nav_link ">Paises</a>
                        </li>
                        <li class="nav_list">
                            <a href="jugadores.php" class="nav_link active" target="_matches">Jugadores</a
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
        <div class="container_m">
    <div class="row">
        <div class="col m-auto">
            <div class="card_m mt-5_m">
                <h1 class="text-center mb-4_m">Jugadores de Uruguay</h1>
                <table class="table_m table-bordered">
                <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Nacimiento</th>
                            <th>Número de camiseta</th>
                        </tr>
                    </thead>
                    <tbody>
                           
                            <?php 
                                    
                                    while($row=mysqli_fetch_assoc($result))
                                    {
                                        $nombre = $row['nombre'];
                                        $apellidop = $row['apellido'];
                                        $nacimiento = $row['nacimiento'];
                                        $num_camiseta = $row['numCamiseta'];

                                        
                            ?>
                                    <tr>
                                        <td><?php echo $nombre ?></td>
                                        <td><?php echo $apellidop ?></td>
                                        <td><?php echo $nacimiento ?></td>
                                        <td><?php echo $num_camiseta ?></td>
                                        
                                    </tr>        
                            <?php 
                                    } 
                            ?>                                                                  
                                   

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div> 

    </html>

        </body>