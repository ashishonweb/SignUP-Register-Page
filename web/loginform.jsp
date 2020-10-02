<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body> 
                 <h1>Login</h1><br><br>
        <form method="POST" action="logoutform.jsp">
        USERNAME: <input type="text" name="id"><br>
        PASSWORD: <input type="password" name="password"><br><br>
        <input type="submit" value="Signin" >
        </form>
               <br>
         <form method="POST" action="register.jsp">
        <input type="submit" value="Register" >
        </form>         
      
                      

            
        
    </body>
</html>
