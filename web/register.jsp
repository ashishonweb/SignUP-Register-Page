<%@page import="base.Database" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
        <%   
            String id=null;
              String password=null;                

            if(request.getMethod().equals("POST")){  
                    
                id=request.getParameter("id"); 
                password=request.getParameter("password");  
                        new Database(id,password);
            }                
     if(id==null && password==null){  %>
        <h1>Sign Up</h1>
        <form method="POST">
         USERNAME: <input type="text" name="id"><br>
         PASSWORD: <input type="password" name="password"><br><br>
           <input type="submit" value="Register"><br>
               <%}else{%>
           <h3>Register Successfully</h3>
           <a href="loginform.jsp">LogIN</a>
           <%}%>
        </form>
    </body>
</html>
