import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.text.*;
/**
 * Servlet implementation class GrantServletEdu
 */
@WebServlet("/GrantServletHouse")
public class GrantServletHouse extends HttpServlet {
private static final long serialVersionUID = 1L;
static Connection conn=null;
static Statement stmt=null;
static Statement stmt1=null;
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
stmt1=conn.createStatement();
}
catch(SQLException e)
{
e.printStackTrace();
}
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
PrintWriter  out=response.getWriter();
HttpSession session=request.getSession(false);
int uid=(Integer)session.getAttribute("uid");
int sendid=Integer.parseInt(request.getParameter("sendid"));
String ans=request.getParameter("ans");
System.out.println(uid+"uid in grantservlet house");
Date date=new Date();
SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy 'at' hh:mm a");
if(session==null)
        {
        out.print("<script>alert('Please login first')</script>");
        }
try {
out.print("<script>alert('Granted housing moratorium')</script>");
int yes=stmt.executeUpdate("update loans set confirmhouse='"+ans+"' where id="+sendid);
System.out.println("In grantServletHouse with Date"+yes);
if(yes==1) {
String dt=ft.format(date);
System.out.println("Success to insert into grantservlethouse"+dt+"sendid="+sendid+"uid="+uid);
System.out.println("Success to insert into grantservlethouse");
         out.println("Inserted");
         
         int st=stmt1.executeUpdate("update mdata set confirmtime='"+dt+"',bankerid='"+uid+"',loan_status='granted' where id="+sendid+" and loan_type='Housing loan'");
         if(st==1) {
         System.out.println("Confirm Date updated for housing loan");
         }
         else {
         System.out.println("Confirm Date not updated for housing loan");
         }
}
       else {
        System.out.println("Failed to insert into grantservlethouse");
       
         out.println("Fail");
       }

}
catch(SQLException e)
{
System.out.println("Cannot find values");
e.printStackTrace();
}
 
}

}