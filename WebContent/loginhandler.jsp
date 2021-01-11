<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Requester</title>
</head>
<body>
<%
Connection conn=null;
Statement stmt=null;
try {
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded in loginhandler");
}
catch(ClassNotFoundException e)
{
System.out.println("Driver is not loaded"+e);
}
String constring="jdbc:mysql://localhost:3306/moratorium";
try {
conn=DriverManager.getConnection(constring,"root","yojitha");
System.out.println("Connection established");
}
catch(SQLException e)
{
System.out.println("Driver connection failed");
e.printStackTrace();
}
try {
stmt=conn.createStatement();
}
catch(SQLException e)
{
e.printStackTrace();
}
try{
response.setContentType("text/html");
//PrintWriter  pw=response.getWriter();
String name=request.getParameter("name");
String password=request.getParameter("pass");
System.out.println(name+" "+password+"in loginhandler");
ResultSet rs=stmt.executeQuery("select * from login where accountno='"+name+"'"+"and password='"+password+"'");

if(rs.next()!=false)
{
int uid=rs.getInt(1);
String nname=rs.getString(2);
String nacc=rs.getString(8);
        session.setAttribute("uname",nname);
        session.setAttribute("nacc",nacc);
        session.setAttribute("uid",uid);
        System.out.println("in if of loginhandler"+uid);
        uid+=1;
        String known_status=rs.getString(7);
        if(known_status.equals("user")){
        out.print("<script>alert('Logged in successflully')</script>");
        request.getRequestDispatcher("index.jsp").include(request,response);
        }
        else{
         out.print("<script>alert('Logged in successflully')</script>");
              request.getRequestDispatcher("indexbanker.jsp").include(request,response);
        }
}
else {
out.print("<script>alert('Username or password incorrect')</script>");
System.out.println("in else of login");
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request,response);
}
}
catch(SQLException e)
{
System.out.println("Cannot find values");
e.printStackTrace();
}
%>
</body>
</html>