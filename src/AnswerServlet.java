import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AnswerServlet
 */
@WebServlet("/AnswerServlet")
public class AnswerServlet extends HttpServlet {
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
// TODO Auto-generated method stub
response.setContentType("text/html");
PrintWriter  out=response.getWriter();
String first_ans=request.getParameter("firstans");
String second_ans=request.getParameter("secondans");
String third_ans=request.getParameter("thirdans");
String fourth_ans=request.getParameter("fourthans");
String fifth_ans=request.getParameter("fifthans");
String sixth_ans=request.getParameter("sixthans");
String seventh_ans=request.getParameter("seventhans");
String eight_ans=request.getParameter("eightans");
System.out.println(first_ans+second_ans+third_ans+fourth_ans+fifth_ans+sixth_ans+seventh_ans+eight_ans);
out.print("alert(first_ans+second_ans+third_ans+fourth_ans)");
HttpSession session=request.getSession(false);
int uid=(Integer)session.getAttribute("uid");
try {
ResultSet rs=stmt.executeQuery("select * from answers where id="+uid);
if(rs.next()!=false)
{
int yes=stmt.executeUpdate("update answers set primarysrc='"+first_ans+"',"+
"preincome='"+second_ans+"',"+
"postincome='"+third_ans+"',"+
"reason='"+fourth_ans+"',"+
"anyinc='"+fifth_ans+"',"+
"anyloans='"+sixth_ans+"',"+
"normalsi='"+seventh_ans+"',"+
"bankex='"+eight_ans+"'"+
"where id="+uid);
if(yes==1)
         out.println("Inserted");
     else
         out.println("Fail");
}
else {
PreparedStatement ps=conn.prepareStatement("insert into answers values(?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,uid);
     
        ps.setString(2,first_ans);
        ps.setString(3,second_ans);
        ps.setString(4,third_ans);
        ps.setString(5,fourth_ans);
        ps.setString(6,fifth_ans);
        ps.setString(7,sixth_ans);
        ps.setString(8,seventh_ans);
        ps.setString(9,eight_ans);
        int y=ps.executeUpdate();
        if(y>0) {
System.out.println("Updated");

        }
        else {
        System.out.println("Could not update values");
        }

}
}
catch(SQLException e)
{
System.out.println("Cannot find values");
e.printStackTrace();
}

}

}