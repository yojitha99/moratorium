
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
static int f=0;
static Connection conn=null;
static Statement stmt=null;
@Override
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
String constring="jdbc:mysql://localhost:3306/mdraft";
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
String sname=request.getParameter("sname");
String spass=request.getParameter("spass");
String semail=request.getParameter("semail");
String sphone=request.getParameter("sphone");
String sadd=request.getParameter("sadd");
String status=request.getParameter("status");
response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        try {
        PreparedStatement ps=conn.prepareStatement("insert into login values(?,?,?,?,?,?,?)");
        ps.setInt(1,f);
        f+=1;
        ps.setString(2,sname);
        ps.setString(3,spass);
        ps.setString(4,semail);
        ps.setString(5,sphone);
        ps.setString(6,sadd);
        ps.setString(7, status);
//String temp="insert into student values('"+srollno+"',"+"'"+sname+"',"+"'"+spass+"',"+semail+"',"+"'"+sphone+"',"+"'"+sbranch+"',"+"'"+simage+")";
        int y=ps.executeUpdate();
        if(y>0) {
System.out.println("Updated");
out.print("<script>alert('Registered successfully,Please login..')</script>");
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request,response);

        }
        else {
        System.out.println("Cannot update database");
        out.print("<script>alert('Register again')</script>");
        RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
    rd.include(request,response);
        }
}
catch(SQLException e)
{
System.out.println("Cannot insert values");
e.printStackTrace();
}
        //out.print(srollno+" "+sname+" "+spass+" "+semail+" "+sphone+" "+sbranch+" "+simage);
//System.out.println(srollno+" "+sname+" "+spass+" "+semail+" "+sphone+" "+sbranch+" "+simage);
}

}