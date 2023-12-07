<?php
    include("database.php");
    $sql="SELECT * FROM pais order by grupo ";
    $result= mysqli_query($connec, $sql);
 ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Países - World cup 2022</title>
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
                            <a href="equipo.php" class="nav_link ">Equipos</a>
                        </li>
                        <li class="nav_list">
                            <a href="jugadores.php" class="nav_link " target="_matches">Jugadores</a
                >
              </li>
              
              <li class="nav_list">
                <a href="pais.php" class="nav_link active">Países</a>
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
                <h1 class="text-center mb-4_m">Países</h1>
                <table class="table_m table-bordered">
                <tr>
                            <th>ID País</th>
                            <th>Nombre</th>
                            <th>Entrenador</th>
                            <th>Grupo</th>
                        </tr>
                    </thead>
                    <tbody>
                           
                            <?php 
                                    
                                    while($row=mysqli_fetch_assoc($result))
                                    {
                                        $IdPais = $row['idPais'];
                                        $nombre = $row['nombre'];
                                        $nombre_entrenador = $row['nombreEntrenador'];
                                        $grupo = $row['grupo'];

                                        
                            ?>
                                    <tr>
                                        <td><?php echo $IdPais ?></td>
                                        <td><?php echo $nombre ?></td>
                                        <td><?php echo $nombre_entrenador ?></td>
                                        <td><?php echo $grupo ?></td>
                                        
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