
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
static Connection conn=null;
static Statement stmt=null;
    @Override
    public void init()throws ServletException
    {
    super.init();
    try {
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded in loginservlet");
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
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
response.setContentType("text/html");
PrintWriter  pw=response.getWriter();
String name=request.getParameter("name");
String password=request.getParameter("pass");
String status=request.getParameter("status");
try {
//int flag=0;
ResultSet rs=stmt.executeQuery("select * from login where name='"+name+"'"+"and password='"+password+"'");

/*while(rs.next())
{
if(uname.equals(rs.getString(1)) && upass.equals(rs.getString(2)))
{
flag=1;
break;
}
}*/
if(rs.next()!=false)
{
int uid=rs.getInt(1);
String known_status=rs.getString(7);
HttpSession session=request.getSession();  
       session.setAttribute("uname",name);
       session.setAttribute("uid",(Integer)uid);
       System.out.println("in if of login"+uid+"known status is"+known_status);
       uid+=1;
       System.out.println();
       if(known_status.equals("user")) {
       pw.print("<script>alert('Logged in successflully')</script>");
       request.getRequestDispatcher("index.jsp").include(request,response);
       }
       else {
        pw.print("<script>alert('Logged in successflully')</script>");
       request.getRequestDispatcher("indexbanker.jsp").include(request,response);
       }
}
else {
pw.print("<script>alert('Username or password incorrect')</script>");
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
 

}

}