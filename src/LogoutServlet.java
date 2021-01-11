import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        HttpSession session=request.getSession();
        try {
        int uid=(Integer)session.getAttribute("uid");
        System.out.println("In logout"+session+"uid"+uid);
        if(session==null)
        {
        out.print("<script>alert('Please login first')</script>");
           
System.out.println("please login first");
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request,response);
        }else {
        //int n=(Integer)session.getAttribute("uname");
        session.invalidate();  
         
        out.print("<script>alert('You logged out successfully.')</script>");  
        request.getRequestDispatcher("home.jsp").include(request,response);  
        }
        out.close();
        }
        catch(Exception e) {
        out.print("<script>alert('Please login first')</script>");
           
System.out.println("please login first");
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request,response);
        }
}

}