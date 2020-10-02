<%@page import="base.Database" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body><%    String loginid=null; 
                String loginpassword=null;
            if(request.getMethod().equals("POST")){  
                loginid=request.getParameter("id"); 
                loginpassword=request.getParameter("password"); 
             
          if(loginid.equals(Database.getUserid()) && loginpassword.equals(Database.getPassword())){           
                Cookie cookie=new Cookie("id",loginid);
                  response.addCookie(cookie);      %>
          
           <form method="POST" action="homeform.jsp">
            <h3> WELCOME : <%= loginid %></h3>
        <input type="submit" value="logout">
                 </form>
        <%} else{
            if(loginid.equals(Database.getUserid())){%>
               <h3>Wrong ID Password</h3>
               <a href="loginform.jsp">TRY AGAIN</a>

                <%}else{%>
                   <h3>You Are Not Registered.</h3>
                   <a href="register.jsp">REGISTER</a><br>
                   <a href="loginform.jsp">TRY AGAIN</a>
                   

          <%}}}%>             
    </body>
</html>
