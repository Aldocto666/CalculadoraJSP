<%-- 
    Document   : calcular
    Created on : 11/10/2016, 11:16:11 PM
    Author     : ALDO ERNESTO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
            int numero1,numero2;
            float resultado=0;
            //Le asigno a resultado un valor default=0 por que si no, NetBeans me marca que no se ha inicializado :(
            String operacion;
            if(request.getParameter("ok") !=null){
            numero1=Integer.parseInt(request.getParameter("n1"));
            numero2=Integer.parseInt(request.getParameter("n2"));
            operacion=request.getParameter("tipo");
            if(operacion.equals("+")){
            resultado=numero1+numero2;
            }
            else
                if(operacion.equals("-")){
                resultado=numero1-numero2;
                }
                else 
                    if(operacion.equals("*")){
                    resultado=numero1*numero2;
                }
                else
                        if(operacion.equals("/")){
                        resultado=numero1/numero2;
                        }
            }
            out.println("<h1>el resultado es: " + resultado+"</h1>");
            
            %>
        </div>
    </body>
</html>
