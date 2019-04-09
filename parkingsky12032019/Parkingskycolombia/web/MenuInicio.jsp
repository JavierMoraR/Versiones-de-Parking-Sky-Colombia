<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0">
    <meta name="description" content="Software Parqueadero">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">   
     <title>Registrar Usuario</title>
    <link rel="stylesheet" href="Vista/estilolabelazul.css">
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
	<link rel="stylesheet" href="Vista/css/estilos.css">
	<link rel="stylesheet" href="Vista/css/font-awesome.css">
     <link rel="stylesheet" type="text/css" href="Vista/CSS/estilo.css">
	<script src="Vista/js/jquery-3.1.0.min.js"></script>
	<script src="Vista/js/main.js"></script>
        </div>
  <div id="logo"></div>   
        <style>
            body{
                background-color: #eee;
                
            }
            form{
                margin: 10px auto;
                width: 350px;
                heigth: 250px;
                background-bottom: 4px solid dark;
            }
            form label{
                display: block;
                color: white;
                background: #2ecc71;
                padding: 12px 0;
                text-align: center;
                font-size: 20px;
                font-weight: bold;
                font-family: cursive;
            }
            form label1{
                display: block;
                color: orange;
                background: #1dabb8;
                padding: 12px 0;
                text-align: center;
                font-size: 30px;
                font-weight: bold;
                font-family: cursive;
            }
            form input[type="text"],input[type="password"]{
                width: 230px;
                padding: 12px 40px;
                font-weight:bold;
                font-family: cursive;
                margin-left: 18px;
                margin-bottom: 10px;
                border: 1px solid #1dabb8;
                text-transform: capitalize;
                -moz-transition: all 0.5s;
                
            }
            form input[type="text"]{
                background: url("icons/user.png") 5px no-repeat;
            }
            form input[type="password"]{
                background: url("icons/pass.png") 5px no-repeat;
            }
            form input[type="text"]:focus,input[type="password"]:focus{
                border: 1px solid #333;
                background: none;
                width: 290px;
                padding: 12px 10px;
            }
           

            
        </style>
    </head>
    <body>
 <form action="InicioSesion" method="post">
     
            <label1>INICIO DE SESION</label1><br>
<br>
        <label>Ususario</label>
        <input type="text" name="usuario"><br>
        
        <label>Contraseña</label>
        <input type="password" name="password"><br>
        
        <input type="submit" value="Iniciar sesion">
      
        </form>
        <br>
        sino tiene cuenta <a href="RegistrarUsuario.jsp">Registrarme</a>
          </body>
</html>
