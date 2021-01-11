

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.text.*;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
static Connection conn=null;
static Statement stmt=null;
    public void init()throws ServletException
    {
    super.init();
    try {
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
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
response.setContentType("text/html");
PrintWriter  out=response.getWriter();
String edu=request.getParameter("Educationper");
HttpSession session=request.getSession(false);
int uid=(Integer)session.getAttribute("uid");
System.out.println(uid+"uid"+edu);
if(session==null)
        {
        out.print("<script>alert('Please login first')</script>");
        }
try {
int yes=stmt.executeUpdate("update loans set timeedu= '"+edu+"',"+"availedu='yes'"+" where id="+uid);
String sql2="insert into mdata values(?,?,?,?,?,?)";
PreparedStatement pstmt=conn.prepareStatement(sql2);
Date date=new Date();
SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy 'at' hh:mm a");
String dt=ft.format(date);
pstmt.setInt(1,uid);
pstmt.setString(2, "Education loan");
pstmt.setString(3,dt);
pstmt.setString(4,"");
pstmt.setString(5,"");
pstmt.setString(6,"");
int dtup=pstmt.executeUpdate();
if(dtup==1) {
System.out.println("Availing time updated for edu");
}
else {
System.out.println("Availing time not updated for edu");
}
if(yes==1)
         out.println("Inserted");
       else
         out.println("Fail");

}
catch(SQLException e)
{
System.out.println("Cannot find values");
e.printStackTrace();
}
 
}

}