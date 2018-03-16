
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%String pass = (String)session.getAttribute("login");
    if(pass !=null && pass.equals("Aptech"))
{        %>
    <body background="pic/Books_Lib.jpg">


<center>   <font face="Times new Roman" size="7" color="Orange">ONLINE BOOKSHALA</font></center>
 <br><br>
<center><font face="Times new Roman" size="+2" color="orange"> 
<a href="Pinsert.jsp">Insert Product</a>   <a href="Pdel.jsp">Delete Product</a>  <a href="index.jsp">Logout</a>
</font></center>
    <br><br>
 <center><font face="Times new Roman" size="8" color="Orange"><u>Update Product</u></font></center>
        <form action="Adminser" method="post"><pre><font face="Times new Roman" size="4">
            
            Product Code       : <input type="text" name="code" size="35" maxlength="7" />
            
            
                                          <input type="submit" Value ="Search" name ="sub"/>         <input type="reset" value="Cancel" />
                                          
                                          <%String i =request.getParameter("val");
                                          
                                          if(i!=null && i.equals("pro"))
                                              {
                                              %>
                                              Record Not Found!!!
                                              <%
                                          }
                                          else if (i!=null && i.equals("up"))
                                            {  %>
                                              Record UpDated Successfully!!!
                                              <%}
                                          %>
        </font></pre></form>
    </body>
    <%}
    else
        {
            response.sendRedirect("index.jsp"); 
        }
    %>
</html>
