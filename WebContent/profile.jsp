<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CHATBOT</title>
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

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
                background: url('images/loginpageback.png');
             background-repeat: no-repeat;
             background-size: cover;
        }

        .header {
                overflow: hidden;
                background-color: #f1f1f1;
                padding: 20px 10px;
            }
        .open-button {
            color:red;
            background-color: rgb(247, 240, 240,0);
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 0.8;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 280px;
   
        }
        #applyanimate{
          animation-name: example;
  animation-duration: 4s;
  animation-iteration-count: infinite;
        }
        @keyframes example {
  0%   {opacity: 1;border:rgb(140, 113, 165)}
  25%  {opacity: 0.6; }
  50%  {opacity: 0; }
  75%  {opacity: 0.6; }
  100% {opacity: 1;}
}
        .form-container {
                border-radius: 15px;
                background-color:white;
           
            }
        .chat-popup {
             display: none;
            position: fixed;
            bottom: 0;
            right: 15px;
            z-index: 9;
        }
        #chathead{
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            width:300px;
            height:30px;
            background-color: rgb(0, 0, 0);
            color: chartreuse;
           
        }
        #chatbutton{
            position: absolute;
            left:105px;
            color:white;
            font-family: cursive;
            font-weight: bolder;
        }
        #closeicon{
          left:290px;
        }
        #chatarea{
            width:300px;
           
            height:400px;
           
         
           border:3px solid black;
            overflow:scroll;
            overflow-x: hidden;
            overflow-y: scroll;
           
        }
        #controls{
            width:300px;
        }
        #textbox{
            resize:none;
            width:230px;
        }
        #send{
           font-size:33px;
           position:absolute;
        }
        #send:hover{
          color:white;
          background-color: green;
        }
        .userstyle{
            padding: 0px;
            margin: 0px;
            font-style: italic;
            display:flex;
            justify-content:flex-end;
         
        }
        .botback{
            background-color: lightgrey;
            color:black;
            border-radius: 10px 10px 10px 0px;
        }
        .botstyle{
            padding: 0px;
            margin: 0px;
            display: flex;          
            justify-content: flex-start;
        }
        .userback{
            background-color: blue;
            color:white;
            border-radius: 10px 10px 0px 10px;
        }
        .stylebtn{
          background-color:black;
          color:white;
          border-radius: 15px;
        }
        .navbar-toggler{
    background-color:lightgray;
    }
    .dropdown{
    position:relative;
   
   
    }

   #drop-content{
   position:absolute;
   }
   #drop-content a{
   display:block;
   background-color:black;
   }
   .table{
   color:white;
   background-color:black;
   }
   h1{
   color:lightgreen;
   }
    </style>
  <%
  String uname="";
 
  if(session.getAttribute("uid")==null){
 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
 rd.forward(request,response);
  %>
 <script>alert('Please login first')</script>
  <%}else{
uname=(String)session.getAttribute("uname");
//uname="\""+uname+"\"";
  }
  response.setContentType("text/html");
  Connection conn=null;
Statement stmt=null;
Statement stmt1=null;
Statement stmt2=null;
Statement stmt3=null;
Statement stmt4=null;
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
stmt1=conn.createStatement();
stmt2=conn.createStatement();
stmt3=conn.createStatement();
stmt4=conn.createStatement();
}
catch(SQLException e)
{
e.printStackTrace();
}
  %>
</head>
<body>
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
                    <a href="index.jsp" class="nav-link">
                       <span style="color: white;"> <i class="fa fa-home" aria-hidden="true"></i> Home
                       </span>
                    </a>
                </li>
             
       <li class="nav-item">
                    <a href="aboutus.jsp" class="nav-link">
                        <span style="color: white;"> <i class="fa fa-info" aria-hidden="true"></i>
                        About Us
                        </span>
                    </a>
                </li>
                      <li class="nav-item">
                    <a href="contactus.jsp" class="nav-link">
                        <span style="color: white;"> <i class="fa fa-phone " aria-hidden="true"></i>
                        Contact Us
                        </span>
                    </a>
                </li>
              <li class="nav-item">
             
              <span style="color: yellow;"> <i class="fa fa-user" aria-hidden="true"></i>
                 <a style="color:yellow;" onclick="navbuttonshow()"><%=uname %>
                 </span>
                 </a>
                 
                 <div class="dropdown">
                 <div style="display:none;width:100px;" id="drop-content">
                  <a href="profile.jsp" class="nav-link">
                        <span style="color: white;"> <i class="fa fa-address-card" aria-hidden="true"></i>
                        Profile
                        </span>
                    </a>
                  <a href="logout" class="nav-link">
                        <span style="color: white;"> <i class="fa fa-sign-out" aria-hidden="true"></i>
                        Logout
                        </span>
                    </a>
                   
                 </div>
                    </div>
                    </li>
               
             
             
            </ul>
        </div>
    </div>
    </nav>
     <br>
    <br>
    <br>
  <%try{
int tempid=(Integer)(session.getAttribute("uid"));
ResultSet rs=stmt.executeQuery("select * from login where pid="+tempid);
ResultSet rs1=stmt1.executeQuery("select * from loans where id="+tempid);

if(rs.next()!=false){
String nname=rs.getString(2);
String nemail=rs.getString(4);
String nphone=rs.getString(5);
String nadd=rs.getString(6);
String accno=rs.getString(8);
if(rs1.next()!=false){
String per=rs1.getString(2);
String edu=rs1.getString(3);
String house=rs1.getString(4);
String amper=rs1.getString(14);
String amedu=rs1.getString(15);
String amhouse=rs1.getString(16);
String comper=rs1.getString(17);
String compedu=rs1.getString(18);
String comhouse=rs1.getString(19);
%>
<h1>Details</h1>
  <table class="table table-striped">
  <tbody>
    <tr>
      <th scope="row">Name</th>
      <td><%=nname %></td>
    </tr>
    <tr>
    <tr>
      <th scope="row">Account number</th>
      <td><%=accno %></td>
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td><%=nemail%></td>
    </tr>
    <tr>
      <th scope="row">Phone number</th>
      <td><%=nphone %></td>
    </tr>
      <tr>
      <th scope="row">Address</th>
      <td><%=nadd%></td>
    </tr>
     </tr>
      <tr>
      <th scope="row">Loans</th>
      <td><ul><%
      if(per.equals("yes")){%>
      <li>Personal<br>
      Amount:<%=amper %>
      </li>
      <%}
      if(edu.equals("yes")){%>
      <li>Education<br>
      Amount:<%=amedu %>
      </li>
      <%}
      if(house.equals("yes")){%>
      <li>House<br>
      Amount:<%=amhouse %>
      </li>
      <%}
      %></td>
      </ul>
    </tr>
  </tbody>
</table>
 <h1>Moratorium Status</h1>
<table class="table table-striped" id="loanstatus">
<thead class="thead-dark">
  <tr>
    <th scope="col">Loan</th>
    <th scope="col">Status</th>
  </tr>
</thead>
<tbody>
  <tr>
  <%
  ResultSet rs2=stmt2.executeQuery("select * from mdata where id="+tempid+" and loan_type='Personal loan'");
  
  String availtime="";
  String confirmtime="";
  if(rs2.next()!=false){
	  availtime=rs2.getString(3);
	  confirmtime=rs2.getString(4);
  }
 if(rs1.getString(2).equals("yes") && rs1.getString(5).equals("yes")){%>
    <td>Personal loan</td>
    <%if(rs1.getString(8).equals("no")){ %>
    <td>Pending<br>
    Requested time:<%=availtime %>
    </td>
    <%}else if(rs1.getString(8).equals("No")){ 
    %>
    <td>Rejected<br>
    Requested on:<%=availtime %><br>
    Rejected on:<%=confirmtime %><br>
    <%if(!comper.equals("")){ %>
    Reason:<%=comper %>
    <%} %>
    </td>
    <%}else{ %>
    <td>Granted<br>
     Requested on:<%=availtime %><br>
    Granted on:<%=confirmtime %><br>
    </td>
    <%} } %>
  </tr>
       <tr>
  <%
  ResultSet rs3=stmt3.executeQuery("select * from mdata where id="+tempid+" and loan_type='Education loan'");
  
  String availtime3="";
  String confirmtime3="";
  if(rs3.next()!=false){
	  availtime3=rs3.getString(3);
	  confirmtime3=rs3.getString(4);
  }
 if(rs1.getString(3).equals("yes") && rs1.getString(6).equals("yes")){%>
    <td>Education loan</td>
    <%if(rs1.getString(9).equals("no")){ %>
        <td>Pending<br>
    Requested time:<%=availtime3 %></td>
    <%}else if(rs1.getString(9).equals("No")){ %>
      <td>Rejected<br>
    Requested on:<%=availtime3 %><br>
    Rejected on:<%=confirmtime3 %><br>
     <%if(!compedu.equals("")){ %>
    Reason:<%=compedu %>
    <%} %>
    </td>
    <%}else{ %>
    <td>Granted<br>
     Requested on:<%=availtime3 %><br>
    Granted on:<%=confirmtime3 %><br></td>
    <%} } %>
  </tr>
             <tr>
  <%
 ResultSet rs4=stmt4.executeQuery("select * from mdata where id="+tempid+" and loan_type='Housing loan'");
  
  String availtime4="";
  String confirmtime4="";
  if(rs4.next()!=false){
	  availtime4=rs4.getString(3);
	  confirmtime4=rs4.getString(4);
  }
 if(rs1.getString(4).equals("yes") && rs1.getString(7).equals("yes")){%>
    <td>Housing loan</td>
    <%if(rs1.getString(10).equals("no")){ %>
     <td>Pending<br>
    Requested time:<%=availtime4 %></td>
    <%}else if(rs1.getString(10).equals("No")){ %>
      <td>Rejected<br>
    Requested on:<%=availtime4 %><br>
    Rejected on:<%=confirmtime4 %><br>
     <%if(!comhouse.equals("")){ %>
    Reason:<%=comhouse %>
    <%} %>
    </td>
    <%}else{ %>
    <td>Granted<br>
     Requested on:<%=availtime4 %><br>
    Granted on:<%=confirmtime4 %><br></td>
    <%} } %>
  </tr>
</tbody>
</table>

<% }}//if
}//try
catch(Exception e){
System.out.println(e+"uid fetched");
}
%>
<div id="footer" style="background-color: darkgrey;">
  &copy; Sky Bank.All rights reserved
</div>
    <script>
    function navbuttonshow(){
    var click=document.getElementById("drop-content");
    if(click.style.display=="none"){
    click.style.display="block";
    }
    else{
    click.style.display="none";
    }
    }
    </script>
 
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>