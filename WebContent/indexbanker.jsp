<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BANKER</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
 <style>
    * {box-sizing: border-box;}
            #footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
}
        .sign {
            width: 50%;
            height: 50px;
 
        transform: translate(-50%, -50%);
        left: 50px;
        top: 70%;
        font-family: "Clip";
        text-transform: uppercase;
        font-size: 3em;
        color: #ffe6ff;
        text-shadow: 0 0 0.6rem #ffe6ff, 0 0 1.5rem #65adff,
                -0.2rem 0.1rem 1rem #ecf5f3, 0.2rem 0.1rem 1rem #86dbeb,
                0 -0.5rem 2rem #358cc5, 0 0.5rem 3rem #0a5350;
                animation: shine 2s forwards, flicker 3s infinite;
        }

@keyframes blink {
  0%,
  22%,
  36%,
  75% {
    color: #ffe6ff;
    text-shadow: 0 0 0.6rem #dcf0f1, 0 0 1.5rem #65faff,
      -0.2rem 0.1rem 1rem #76a6ce, 0.2rem 0.1rem 1rem #9793d8,
      0 -0.5rem 2rem #28346b, 0 0.5rem 3rem #0b0c5f;
  }
  28%,
  33% {
    color: #7c56c2;
    text-shadow: none;
  }
  82%,
  97% {
    color: #88c2c4;
    text-shadow: none;
  }
}

.flicker {
  animation: shine 2s forwards, blink 3s 2s infinite;
}

.fast-flicker {
  animation: shine 2s forwards, blink 10s 1s infinite;
}

@keyframes shine {
  0% {
    color:rgb(140, 113, 165);
    text-shadow: none;
  }
  100% {
    color: #ffe6ff;
    text-shadow: 0 0 0.2rem #b5dcee, 0 0 1.5rem #65e0ff,
      -0.2rem 0.1rem 1rem #035964, 0.2rem 0.1rem 1rem #7cabf1,
      0 -0.5rem 2rem #354397, 0 0.5rem 3rem #33816e;
  }
}

@keyframes flicker {
  from {
    opacity: 1;
  }

  4% {
    opacity: 0.9;
  }

  6% {
    opacity: 0.85;
  }

  8% {
    opacity: 0.95;
  }

  10% {
    opacity: 0.9;
  }

  11% {
    opacity: 0.922;
  }

  12% {
    opacity: 0.9;
  }

  14% {
    opacity: 0.95;
  }

  16% {
    opacity: 0.98;
  }

  17% {
    opacity: 0.9;
  }

  19% {
    opacity: 0.93;
  }

  20% {
    opacity: 0.99;
  }

  24% {
    opacity: 1;
  }

  26% {
    opacity: 0.94;
  }

  28% {
    opacity: 0.98;
  }

  37% {
    opacity: 0.93;
  }

  38% {
    opacity: 0.5;
  }

  39% {
    opacity: 0.96;
  }

  42% {
    opacity: 1;
  }

  44% {
    opacity: 0.97;
  }

  46% {
    opacity: 0.94;
  }

  56% {
    opacity: 0.9;
  }

  58% {
    opacity: 0.9;
  }

  60% {
    opacity: 0.99;
  }

  68% {
    opacity: 1;
  }

  70% {
    opacity: 0.9;
  }

  72% {
    opacity: 0.95;
  }

  93% {
    opacity: 0.93;
  }

  95% {
    opacity: 0.95;
  }

  97% {
    opacity: 0.93;
  }

  to {
    opacity: 1;
  }
}
    body{
        font-family:'Raleway',sans-serif;
        font-weight:400;
          background: url('images/loginpageback.png');
             background-repeat: no-repeat;
             background-size: cover;

    }
    h1{
        font-size: 36px;
        color:white;
        font-weight:bold;
    }
    h3{
        font-size: 26px;
        color:rgb(218, 65, 65);
        font-weight:bold;
    }
    #team i{
        font-size:26px;
        color:seagreen

    }
    #team p{
        font-weight: 500;
    }
    #team .card{
      color:white;
      background-color:black;
       margin-top: 50px;
        margin-bottom: 30px;
       height:550px;
        border-radius:0;
        box-shadow:5px 5px 15px rgb(218, 65, 65);
        transition:all 0.3s ease-in;
        -webkit-transition: all 0.3s ease-in;
        -moz-transition: all 0.3s ease-in;

    }
   
    #team .card-footer{
        margin-bottom: 30px;
        height:100px;
        border-radius:0;
       

    }
    #team .card:hover{
        background:white;
        color:black;
        border-radius: 5px;
        border:none;
        box-shadow: 5px 5px 10px grey;
    }
    #team .card:hover,#team .card:hover i{
        color:black;
    }
    #mybutton{
    margin-bottom:10px;
    }
    .navbar-toggler{
    background-color:lightgray;
    }

</style>
<body>
  <%
  response.setContentType("text/html");
  Connection conn=null;
Statement stmt=null;
try {
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded index");
}
catch(ClassNotFoundException e)
{
System.out.println("Driver is not loaded"+e);
}
String constring="jdbc:mysql://localhost:3306/moratorium";
try {
conn=DriverManager.getConnection(constring,"root","yojitha");
System.out.println("Connection established index");
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
String uname="";
String person_name="";
int selected_id=0;
  if(session.getAttribute("uid")==null)
  {
   RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
   rd.forward(request,response);
  System.out.println("Session is null in index page");
  }
  else{
  int uid=(Integer)session.getAttribute("uid");
  uname=(String)session.getAttribute("uname");
  %>
  
     <nav class="navbar navbar-expand-sm navbar-light bg-dark fixed-top">
       
        <div class="container-fluid">
        <a href="#" class="navbar-brand">
            <div class="sign">
                ....  S<span class="fast-flicker">K</span>Y B<span class="flicker">a</span>n<span class="fast-flicker">k</span>
              </div></a>
        <button  class="navbar-toggler" data-toggle="collapse" data-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <span class="mr-auto"></span>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="indexbanker.jsp" class="nav-link">
                       <span style="color: white;"> <i class="fa fa-home" aria-hidden="true"></i> Home
                       </span>
                    </a>
                </li>
                  <li class="nav-item">
                    <a href="bankerprofile.jsp" class="nav-link">
                        <span style="color: white;">  <i class="fa fa-address-card" aria-hidden="true"></i> Profile
                    </span>
                        </a>
                </li>
                  <li class="nav-item">
                    <a href="bankerhistory.jsp" class="nav-link">
                        <span style="color: white;">  <i class="fa fa-info" aria-hidden="true"></i> My History
                    </span>
                        </a>
                </li>
                 <li class="nav-item">
                    <a href="logout" class="nav-link">
                    <span style="color: white;"><i class="fa fa-sign-out" aria-hidden="true"></i>
                        Logout
                        </span>
                    </a>
                </li>
                   <li class="nav-item">
                    <a href="#" class="nav-link">
                    <span style="color: white;"><i class="fa fa-user" aria-hidden="true"></i>
                        <%=uname %>
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    </nav>
<section id="team">
        <div class="container my-3 py-5 text-center">
            <div class="row nb-5">
                <div class="col">
                <br>
                    <h1>Customers</h1>
                </div>
             </div>
<div class="row">
  <%

      ResultSet rs=stmt.executeQuery("select * from loans");
      uname="\""+uname+"\"";
     
      System.out.println("select * from loans");
      while(rs.next())
      {
      int pid=rs.getInt(1);
      System.out.println(pid+"this is the pid");
      Statement stmt1=conn.createStatement();
      ResultSet rs1=stmt1.executeQuery("select * from login where pid="+pid);%>
      <div class='col-lg-3 col-md-6'><div class='card'><div class='card-body'>
     
     
      <%if(rs1.next()!=false){
   
      person_name=rs1.getString(2);
      selected_id=rs1.getInt(1);
      %><i class="fa fa-user-circle-o" aria-hidden="true"></i>
      <h3><%=person_name%></h3><p><ul>
      <%System.out.println("The person name is"+person_name);
      }
      if(rs.getString(5).equals("yes")&&rs.getString(8).equals("no"))
{	 Statement stmt29=conn.createStatement();
ResultSet rs29=stmt29.executeQuery("select * from mdata where id="+pid+" and loan_type='Personal loan'");
String pertime="";
if(rs29.next()!=false){
pertime=rs29.getString(3);
}
    	  System.out.println("personal loan"+person_name);%>
<li>Requested personal loan moratorium on <%=pertime %></li><br>
<%}
      if(rs.getString(6).equals("yes")&&rs.getString(9).equals("no"))
      {
      Statement stmt28=conn.createStatement();
      ResultSet rs28=stmt28.executeQuery("select * from mdata where id="+pid+" and loan_type='Education loan'");
      String edutime="";
      if(rs28.next()!=false){
      edutime=rs28.getString(3);
      }
      System.out.println("educational loan"+person_name);%>
      <li>Requested education loan moratorium on <%=edutime %></li><br>
      <%}
      if(rs.getString(7).equals("yes")&&rs.getString(10).equals("no"))
      {
    	  Statement stmt30=conn.createStatement();
          ResultSet rs30=stmt30.executeQuery("select * from mdata where id="+pid+" and loan_type='Housing loan'");
          String htime="";
          if(rs30.next()!=false){
          htime=rs30.getString(3);
          }
    	  	System.out.println("housing loan"+person_name);
      %>
      <li>Requested housing loan moratorium on <%=htime %></li><br>
      <%}
      Statement stmt2=conn.createStatement();
      ResultSet rs2=stmt2.executeQuery("select * from answers where id="+selected_id);
      String one="";
      String two="";
      String three="";
      String four="";
      String five="";
      String six="";
      String seven="";
      String eight="";
      if(rs2.next()!=false){
      one="\'"+rs2.getString(2)+"\'";
      two="\'"+rs2.getString(3)+"\'";
      three="\'"+rs2.getString(4)+"\'";
      four="\'"+rs2.getString(5)+"\'";
      five="\'"+rs2.getString(6)+"\'";
      six="\'"+rs2.getString(7)+"\'";
      seven="\'"+rs2.getString(8)+"\'";
      eight="\'"+rs2.getString(9)+"\'";
      }
      %>
      </ul></p></div>
      <div class="card-footer">
       <div class="d-flex flex-row justify-content">
                                <div class="p-4">
                                <a href="grantmoratorium.jsp?id=<%=selected_id%>"><button id="mybutton" type="button" class="btn btn-success btn-block" data-toggle="modal">
                 
                                 GRANT MORATORIUM
                                 </button>
                                 </a>
                                 
                                    <button type="button" id="mybutton" class="btn btn-success btn-block" data-toggle="modal" onclick="sendname(<%=selected_id%>,<%=one%>,<%=two%>,<%=three%>,<%=four %>,<%=five %>,<%=six %>,<%=seven %>,<%=eight%>)" data-target="#exampleModalLong">
                                        VIEW RESPONSES
                                      </button>
                                </div>
                            </div>
                        </div>  
                </div>
                </div>
      <%}
    }
    %>
  </div>
  </div>
  </section>
   <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Responses</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
           
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Question</th>
                        <th scope="col">Response</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td id="firstqnid">Primary source of income:</td>
                        <td id="firstansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                         <td id="secondqnid">Income received pre-lockdown:</td>
                        <td id="secondansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                          <td id="thirdqnid">Income received post-lockdown:</td>
                        <td id="thirdansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                          <td id="fourthqnid">Reason to opt-in for moratorium:</td>
                        <td id="fourthansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                         <td id="fifthqnid">Any other source of income(y/n):</td>
                        <td id="fifthansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">6</th>
                         <td id="sixthqnid">Any other loans(y/n):</td>
                        <td id="sixthansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">7</th>
                         <td id="seventhqnid">The customer come back to normal situation within(number of months):</td>
                        <td id="seventhansid"></td>
                      </tr>
                      <tr>
                        <th scope="row">8</th>
                          <td id="eightqnid">Expectations from bank:</td>
                        <td id="eightansid"></td>
                      </tr>
                    </tbody>
                  </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="changeper1()">Close</button>
            </div>
          </div>
        </div>
      </div>
  <script>
 
function sendname(temp_id,o,t,th,f,fi,s,se,ei)
{
   
   

    document.getElementById("firstansid").innerHTML=o;
    document.getElementById("secondansid").innerHTML=t;
    document.getElementById("thirdansid").innerHTML=th;
    document.getElementById("fourthansid").innerHTML=f;
    document.getElementById("fifthansid").innerHTML=fi;
    document.getElementById("sixthansid").innerHTML=s;
    document.getElementById("seventhansid").innerHTML=se;
    document.getElementById("eightansid").innerHTML=ei;
  //  document.getElementById("thirdansid").innerHTML=th;
   
   
}
</script>
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>