<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content=cer-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="author" content="Jorge Ivan Murillo Duque">    
    <meta name="description" content="tienda on line">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
    <title>Registro </title>
    <link rel="icon" href="IMAGENES/LOGO.png">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/font-awesome.css">
     <link rel="stylesheet" type="text/css" href="CSS/soli_registro.css">
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/main.js"></script>
</head>
<body>

 
<header>
       <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
  <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
 <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>
 
  
  <div id="apDiv1">
  <marquee>
  <h1>BIENVENIDO A TU PARKING SKY COLOMBIA </h1>
  </marquee>
  </div>
  <div id="logo"></div>   
 
  
</header> 
  <nav>
   <ul>
    
      
      <a href="Reg_us.html"><li class="botones">Registrar Usuario</li></a>
        <a href="Reg_vhi.html"> <li class="botones">Registro Vhiculo</li></a>
        <a href="Ingre_vhi.html"><li class="botones">Ingreso Vehiculo</li></a>
        <a href="Sali_vhi.html"><li class="botones">Salida Vheiculo</li></a>
        <a href="tarifas.html"><li class="botones"> Tarifas</li></a>
  
    </ul>
    </nav>
    

<form  id="Reg_us" name="reg_us"> 
  <br>
  <h2>REGISTRO DE USUARIO</h2> <br>
<table width="1000" border="0">
    
 
  <tr>
    <th scope="row"></th>
    <td>
<label for="">Id</label>
      <input name="id" id type="text"  placeholder="Id Registro De Usuario" pattern="[a-z] "></td>
     
    <td> <label for="">Nombre</label>
    <input name="id" id type="text"  placeholder="Nombre Usuario" pattern="[0-]" ></td>
    
    <td><label for="">Apellido</label>
    <input name="id2" id type="text"  placeholder="Apellido Usuario"  ></td>
  </tr>
  
  <tr>
    <th scope="row"></th>
   <td>
    <label for="">Correo</label>
    <input  type="text"  placeholder="Correo Usuario" pattern="[0-9]" ></td>
  
    <td> <label for="">Telefono</label>
    <input  type="text"  placeholder="Teléfono Usuario" pattern="[0-9]" ></td>
   
    <td> <label for="">Contrseña</label>
      <input  type="pastword"  placeholder="Contraseña Usuario" pattern="[0-9]" ></td>
  </tr>
 <tr>
    <th scope="row"></th>
   <td><select >
  <option value="volvo">tipo de documento Usuario</option>
  <option value="saab">Cedula</option>
  <option value="fiat">Cedula Exrageria</option>
  <option value="audi">Otro</option>
</select></td>

  <td><select  >
  <option value="volvo">Roll Usurio</option>
  <option value="Super Administrador">Super Administrador</option>
  <option value="Administrador">Administrador</option>
  <option value="Operario">Operario</option>
</select></td>
   <td><select >
  <option value="volvo">Tipo vehiculo</option>
  <option value="Super Administrador">Carro</option>
  <option value="Administrador">Moto</option>
  <option value="Operario">Bici</option>
</select></td>

</tr>
    <tr>
    <th scope="row"></th>
<td><label for="">Número De Documento</label>
<input type="text" name="" id="" placeholder="Ingresa  Número De Identeficaión De El Usuario  "></td>
<td>
  <label for="">Color</label>
    <input type="text" name="" id="" placeholder="Ingresa El Color De El Vehiculo ">
</td>
<td><label for="">Modelo</label>
<input type="text" name="" id="" placeholder="Ingresa El Modelo De El Vehiculo"></td>d
  </tr>
  <tr>
    <th scope="row"></th>
    <td><label for="">Placa</label>
<input type="text" name="" id="" placeholder="Ingresa La Placa De El Vehiculo"></td>
    <td><label for="">Matricula</label>
<input type="text" name="" id="" placeholder="Ingresa La Matricula De El Vehiculo"></td>
    <td><label for=""><MoDe elo>Estado</MoDe elo></label>
<textarea name="" id="" placeholder="Ingresa El Estado De El Vehiculo"></textarea></td>
    </tr>
   
    <tr>
    <th   scope="row"> <td></td>
    <td><input type="submit" name="button" id="button" value="Enviar" accesskey="123"></td>
    <td></td></th>
   
  
</tr>
    





 
</table>


</form>

</body>
</html>