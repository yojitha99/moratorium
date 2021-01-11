<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grant moratorium</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
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
        font-size: 30px;
        color:white;
        font-weight:bold;
    }
    h3{
        font-size: 26px;
        color:white;
        font-weight:bold;
    }
    #mybutton{
    margin-bottom:10px;
    }
    #loans,#loanstatus,#grantreject{
        background-color:rgb(255, 255, 255);
        margin-bottom: 50px;
    }
    a:hover,a:active,a:link,a:visited{
        text-decoration: none;
    }
    #movetop {
            position: fixed;
            bottom: 0;
            right: 15px;
            z-index: 9;
        }
             .stylebtn{
          background-color:black;
          color:white;
          border-radius: 15px;
        }
        .navbar-toggler{
    background-color:lightgray;
    }
     .personaltext{
    display:hidden;
    }
    .edutext{
    display:hidden;
    }
     .housetext{
    display:hidden;
    }
       #mydiv1{
        display:none;
    }
       #mydiv2{
        display:none;
    }
       #mydiv3{
        display:none;
    }
 </style>

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
                    <a href="indexbanker.jsp" class="nav-link">
                       <span style="color: white;"> <i class="fa fa-home" aria-hidden="true"></i> Home
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
            </ul>
        </div>
    </div>
    </nav>
     
<%
Connection conn=null;
Statement stmt=null;
Statement stmt1=null;
try {
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded in grant");
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
try{
response.setContentType("text/html");
//PrintWriter  pw=response.getWriter();
int tempid=Integer.parseInt(request.getParameter("id"));
ResultSet rs=stmt.executeQuery("select * from loans where id="+tempid);

ResultSet rs1=stmt1.executeQuery("select * from login where pid="+tempid);
if(rs1.next()!=false){
String nname=rs1.getString(2);
int iid=rs1.getInt(1);
%>
 <div id="topage" >COME TOP</div>
    <br>
    <br>
    <br><br>
<h3>Customer name:<%=nname %></h3>
<h3>Customer id:<%=iid%></h3>
<% }
if(rs.next()!=false)
{
String amper=rs.getString(14);
String amedu=rs.getString(15);
String amhouse=rs.getString(16);
%>
    <button class="stylebtn"><a href="#loanstatus" id="linkadjust">Moratorium Status</a></button><br>
    <button class="stylebtn"><a href="#grantreject" id="linkadjust">Grant/Reject Moratorium</a></button><br>
    <h1>Loans</h1>
    <table class="table table-striped" id="loans" >
        <thead class="thead-dark">
          <tr>
         
            <th>Loan</th>
            <th>Amount</th>
          </tr>
        </thead>
        <tbody>
         
          <tr>
            <%
if(rs.getString(2).equals("yes")){%>
            <td>Personal loan</td>
           <td><%=amper %></td>
          </tr>
          <%}%>
          <tr>
            <%
if(rs.getString(3).equals("yes")){%>
            <td>Education loan</td>
           <td><%=amedu %></td>
          </tr>
          <%}%>
          <tr>
           <%
if(rs.getString(4).equals("yes")){%>
            <td>Housing loan</td>
            <td><%=amhouse %></td>
          </tr>
          <%}%>
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
if(rs.getString(2).equals("yes") && rs.getString(5).equals("yes")){%>
            <td>Personal loan</td>
            <%if(rs.getString(8).equals("no")){ %>
            <td>Pending</td>
            <%}else if(rs.getString(8).equals("No")){ %>
            <td>Rejected</td>
            <%}else{ %>
            <td>Granted</td>
            <%} } %>
          </tr>
               <tr>
          <%
if(rs.getString(3).equals("yes") && rs.getString(6).equals("yes")){%>
            <td>Education loan</td>
            <%if(rs.getString(9).equals("no")){ %>
            <td>Pending</td>
            <%}else if(rs.getString(9).equals("No")){ %>
            <td>Rejected</td>
            <%}else{ %>
            <td>Granted</td>
            <%} } %>
          </tr>
                     <tr>
          <%
if(rs.getString(4).equals("yes") && rs.getString(7).equals("yes")){%>
            <td>Housing loan</td>
            <%if(rs.getString(10).equals("no")){ %>
            <td>Pending</td>
            <%}else if(rs.getString(10).equals("No")){ %>
            <td>Rejected</td>
            <%}else{ %>
            <td>Granted</td>
            <%} } %>
          </tr>
        </tbody>
      </table>
     
      <h1>Grant/Reject Moratorium</h1>
       <table class="table table-striped" id="grantreject">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Loan</th>
            <th scope="col" colspan="2">Action</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
        <%
System.out.println(rs.getString(1)+" see result "+rs.getString(2));
if(rs.getString(5).equals("yes") && rs.getString(8).equals("no")){%>
<tr>
<td>Personal loan</td>
<td><button class="stylebtn" id="grantpersonalg" onclick="personal('yes')">GRANT</button></td>
<td><button class="stylebtn" id="grantpersonalr" onclick="personal('No')">REJECT</button>
<div id="mydiv1"><input type="text" id="personaltext" value="Enter reason" >
<button class="stylebtn" onclick="personaldis()">Send</button></div>
</td>
</tr>
<%}
System.out.println(rs.getString(1)+" see result "+rs.getString(2));
if(rs.getString(6).equals("yes") && rs.getString(9).equals("no")){%>
<tr>
<td>Education loan</td>
<td><button class="stylebtn" id="grantedug" onclick="education('yes')">GRANT</button></td>
<td><button class="stylebtn" id="grantedur" onclick="education('No')">REJECT</button>
<div id="mydiv2"><input type="text" id="edutext" value="Enter reason">
<button class="stylebtn" onclick="edudis()">Send</button></div></td>
</tr>
<%}
System.out.println(rs.getString(1)+" see result "+rs.getString(2));
if(rs.getString(7).equals("yes") && rs.getString(10).equals("no")){%>
<tr>
<td>Housing loan</td>
<td><button class="stylebtn" id="granthouseg" onclick="house('yes')">GRANT</button></td>
<td><button class="stylebtn" id="granthouser" onclick="house('No')">REJECT</button>
<div id="mydiv3"><input type="text" id="housetext" value="Enter reason">
<button class="stylebtn" onclick="housedis()">Send</button></div></td>
</tr>
<%}%>
        </tbody>
      </table>

<%}
else {

System.out.println("in else of grant moratorium");
}
}//try
catch(SQLException e)
{
System.out.println("Cannot find values");
e.printStackTrace();
}
%>
<button class="stylebtn"><a href="indexbanker.jsp">BACK</a></button>
<br>
<br>
<br>
<br>
    <a href="#topage"><i id="movetop" class="fa fa-arrow-up fa-3x" style="color:red" aria-hidden="true"></i>        
      </a>
        <div id="footer" style="background-color: darkgrey;">
        &copy; Sky Bank.All rights reserved
      </div>
<script>
var sendid=<%=request.getParameter("id") %>
function personaldis(){
var temppp=document.getElementById("personaltext").value;
  $.ajax({
       type : "POST",
       data : {
           sendid :sendid,
           ans:"No",
           comment:temppp
       },
       url : "./GrantServletPersonalC",
       success : function(resp){
         
       },
       error : function(resp){
           alert("FAIL");
       }
   });

}
function edudis(){
var temppp1=document.getElementById("edutext").value;
  $.ajax({
       type : "POST",
       data : {
           sendid :sendid,
           ans:"No",
           comment:temppp1
       },
       url : "./GrantServletEduC",
       success : function(resp){
         
       },
       error : function(resp){
           alert("FAIL");
       }
   });

}
function housedis(){
var temppp3=document.getElementById("housetext").value;
  $.ajax({
       type : "POST",
       data : {
           sendid :sendid,
           ans:"No",
           comment:temppp3
       },
       url : "./GrantServletHouseC",
       success : function(resp){
         
       },
       error : function(resp){
           alert("FAIL");
       }
   });

}
function personal(ans){
document.getElementById("grantpersonalg").disabled = true;
document.getElementById("grantpersonalr").disabled = true;
document.getElementById("grantpersonalg").style.backgroundColor = "lightgray";
document.getElementById("grantpersonalr").style.backgroundColor = "lightgray";
document.getElementById("grantpersonalg").style.cursor = "not-allowed";
document.getElementById("grantpersonalr").style.cursor = "not-allowed";
if(ans=="No"){
document.getElementById("mydiv1").style.display = "block";
}else{

  $.ajax({
           type : "POST",
           data : {
               sendid :sendid,
               ans:ans
           },
           url : "./GrantServletPersonal",
           success : function(resp){
               
           },
           error : function(resp){
               alert("FAIL");
           }
       });
}
}
function education(ans){
document.getElementById("grantedug").disabled = true;
document.getElementById("grantedur").disabled = true;
document.getElementById("grantedug").style.backgroundColor = "lightgray";
document.getElementById("grantedur").style.backgroundColor = "lightgray";
document.getElementById("grantedug").style.cursor = "not-allowed";
document.getElementById("grantedur").style.cursor = "not-allowed";
if(ans=="No"){
document.getElementById("mydiv2").style.display = "block";
}else{
  $.ajax({
        type : "POST",
        data : {
            sendid :sendid,
            ans:ans
        },
        url : "./GrantServletEdu",
        success : function(resp){
         
        },
        error : function(resp){
            alert("FAIL");
        }
    });
}
}
function house(ans){
document.getElementById("granthouseg").disabled = true;
document.getElementById("granthouser").disabled = true;
document.getElementById("granthouseg").style.backgroundColor = "lightgray";
document.getElementById("granthouser").style.backgroundColor = "lightgray";
document.getElementById("granthouseg").style.cursor = "not-allowed";
document.getElementById("granthouser").style.cursor = "not-allowed";
if(ans=="No"){

document.getElementById("mydiv3").style.display = "block";
}else{
  $.ajax({
        type : "POST",
        data : {
            sendid :sendid,
            ans:ans
        },
        url : "./GrantServletHouse",
        success : function(resp){
         
        },
        error : function(resp){
            alert("FAIL");
        }
    });
}
}
</script>
</script>
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>