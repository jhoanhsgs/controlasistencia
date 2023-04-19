<%-- 
    Document   : RegistrarVenta
    Created on : 8/03/2023, 6:14:17 p. m.
    Author     : jhoan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Asistencia"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/lista1.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <div class="container">
      <div class="descripcion" >
        <h1>POR FAVOR PROCEDA A REALIZAR SU ASISTENCIA DEL DIA DE  HOY 
        </h1>
        <hr>
      </div>      
    </div>
        
    <div class="container">
        <div class="row ">
            <div class="card-tablas">
              <div class="tablas">
                <table class="table table-bordered col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <thead class="table-">
                      <tr class="bg-success">
                        <th scope="col">#</th>
                        <th scope="col">Identificacion</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">apellido</th>
                        <th scope="col">Asistencia</th>
                        <th scope="col">total Inasistencia</th>
                        <th scope="col">Feha</th>
                      </tr>
                    </thead>
                    <tbody class="table-active">
                    <c:forEach var="Am" items="${asistencia}"> 
                        
                      <tr>
                        <td>${Am.getId()}</td>
                        <td>${Am.getCedula()}</td>
                        <td>${Am.getNombre()}</td>
                        <td>${Am.getApellido()}</td>   
                        <td>
                                <select name="select">
                                  <option value="value1" selected>Asistio</option>
                                  <option value="value2">No asistio</option>
                                  <option value="value3">Mando excusa</option>
                                </select>
                        </td>
                        <td>total</td>
                        <td>fecha</td>
                      </tr>
                    </c:forEach> 
                    </tbody>
                  </table>
                </div>
                
                //paginador 
                
            //fin del paginador
            
            <div class="car-footer"> //botones
                  <div>
                      <input type="submit" name="accion" value="Generar Asistencia" class="btn btn-success">
                      <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                  </div>
              </div> 
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>

