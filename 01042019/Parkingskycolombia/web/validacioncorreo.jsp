<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
        <meta name="description" content="Software Parqueadero">
        <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">   
        <title>Registrar Usuario</title>
        <link rel="stylesheet" href="estilolabelazul.css">
        <link rel="icon" href="Vista/IMAGENES/LOGO.png">
        <link rel="stylesheet" href="Vista/css/estilos.css">
        <link rel="stylesheet" href="Vista/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="Vista/CSS/olvidosucontrasena.css">
        <script src="Vista/js/jquery-3.1.0.min.js"></script>
        <script src="Vista/js/main.js"></script>
    </head>

    <body>




        <header>
            <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
            <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
            <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>


            <div id="apDiv1">
                <marquee>
                    <h1>BIENVENIDO A TU PARKING SKY COLOMBIA</h1>
                </marquee>
            </div>
            <div id="logo"></div>   

            <div id="apDiv2">

                <a href=""><li class="botones"> Menu de Inicio</li></a>

            </div>
        </header> 

        <form action="olvidocontrasena" method="post">

            <h2>
                RESTABLECIMIENTO CONTRASEÑA
            </h2>
            <br>


            <table width="1000" border="0">

                <tr>
                    <th>
                    <th></th>
                    <th></th>
                    <td></td>


                    <th><tr ><h3> <center>El proceso de restablecimiento de contraseña ha sido exitoso </center> </h3></tr></th>
                <br>
                <br>

                <tr height="50px" ><h3><center>En los proximos minutos le enviaremos a  </center> </h3></tr>

                <td></td>
                <br>         <br>

                <tr height="50px" ><h3><center> </center> </h3></tr>
                <br>
                <h3><center>Las instrucciones para ingresar una contraseña nueva </center> </h3>

               <th> <input type="submit" name="registrarme"></th>






                </tr>
            </table>
        </form>


        <div class="slideshow">
            <ul class="slider">
                <li>
                    <img src="Vista/IMAGENES/1.jpg"   alt=""/>
                    <section class="caption">
                        <h1>Camara Zona Peatonal</h1>

                    </section>
                </li>
                <li>
                    <img src="Vista/IMAGENES/2.jpg"   alt=""/>
                    <section class="caption">
                        <h1> Camara Parqueadero Subterraneo</h1>

                    </section>
                </li>
                <li>
                    <img src="Vista/IMAGENES/3.jpg"  alt=""/>
                    <section class="caption">
                        <h1>Camra Parquedero Primer Piso</h1>
                    </section>
                </li>


            </ul>

            <ol class="pagination">

            </ol>

            <div class="left">
                <span class="fa fa-chevron-left"></span>
            </div>

            <div class="right">
                <span class="fa fa-chevron-right"></span>
            </div>

        </div>

    </body>
</html>
