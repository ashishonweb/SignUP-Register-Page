<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            Cookie[] cookies=request.getCookies();
                      for(Cookie i:cookies){
                  if(i.getName().equals("id")){
                    i.setMaxAge(0);
                    response.addCookie(i);
                       }}                               %>
        <h1>Home Page</h1><br><br>
        <a href="loginform.jsp">LOGIN</a><br>
        <a href="register.jsp">REGISTER</a><br>

    </body>
</html>
