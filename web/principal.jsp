<%-- 
    Document   : index
    Created on : 8/03/2023, 2:09:01 p. m.
    Author     : jhoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <title>JSP Page</title>
        <link href="css/navb.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light /*btn-info*/">
           
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
            
              <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=Home&accion=listarFicha" target="myFrame">Home </a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=Ficha&accion=listarFicha" target="myFrame">Ficha</a>
                    </li>
                    <li class="nav-item">
                      <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=Aprendiz&accion=Listar" target="myFrame">Personas</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=AsignarAprendiz&accion=AsignarAprendiz" target="myFrame">Asignar Aprendiz</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=R_Asistencia&accion=Asistencia" target="myFrame">Asistencia</a>
                    </li>
                    
              </ul>   
            
                <div class="dropdown">
                    <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                     ${usuario.getUser()}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right text-center">
                        <a class="dropdown-item" href="#">
                            <img src="img/profile.png" alt=""/>
                        </a>
                      <a class="dropdown-item" href="#">${usuario.getUser()}</a>
                      <a class="dropdown-item" href="#">${contraseña.getpass()}</a>
                      <div class="dropdown-divider"></div>
                      <form action="validar" method="POST">
                          <button name="accion" value="salir" class="dropdown-item" href="# ">Salir</button>
                      </form>
                    </div>
                </div>
            </div>
        </nav>
                      
                      <div class="m-4" style="height: 37em">
                          <iframe name="myFrame" style="height: 109%; width: 100%; border: none"></iframe>
                     </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>
