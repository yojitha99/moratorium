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
  #footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
}
    </style>
  <%
  String uname="";
  if(session.getAttribute("uname")==null){%>
  alert("Please login first");
  <%  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
  rd.forward(request,response);
  }else{
uname=(String)session.getAttribute("uname");
//uname="\""+uname+"\"";
  }
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
    <marquee style="font-weight:lighter; font-family: cursive; font-size: 30px;color:yellow">You can now chat with our moratorium buddy to assist you.</marquee>
    <div class="contaier-fluid">
      <div class="carousel slide" id="car" data-ride="carousel" style="padding:55px;" data-interval="2000">
          <div class="carousel-inner">
              <ol class="carousel-indicators">
                  <li class="active" data-target="#car" data-slide-to="0"></li>
                  <li data-target="#car" data-slide-to="1"></li>
                  <li data-target="#car" data-slide-to="2"></li>
              </ol>
              <div class="carousel-item active">
                  <img src="images/bankad3.png" class="img-fluid" style="height:400px;
                  width:100%;">
               
              </div>
              <div class="carousel-item">
                  <img src="images/bankad1.png" class="img-fluid" style="height:400px;
                  width:100%;">
               
              </div>
              <div class="carousel-item">
                  <img src="images/bankad2.png" class="img-fluid" style="height:400px;
                  width:100%;">
                 
              </div>
              <div class="carousel-item">
                <img src="images/bankad4.jpg" class="img-fluid" style="height:400px;
                width:100%;">
             
            </div>
          </div>
          <a href="#car" class="carousel-control-prev" data-slide="prev">
              <span class="carousel-control-prev-icon">
              </span>
          </a>
          <a href="#car" class="carousel-control-next" data-slide="next">
              <span class="carousel-control-next-icon"></span>
          </a>
      </div>
  </div>
   <button class="open-button" onclick="openForm()"><i  id="applyanimate" class="fa fa-comment fa-5x"  aria-hidden="true"></i></button>
<div class="chat-popup" id="myForm">
<div class="form-container">
    <div id="chathead">
        <i class="fa fa-close" aria-hidden="true" onclick="closeForm()" style="color:white;left:200px;"></i>
                <button type="button" onclick="changeColor()">
        <i class="fa fa-star-half-o" aria-hidden="true"></i></button>
        <span id="chatbutton">MBUDDY</span></div>
    <div id="chatarea"></div>
    <div id="controls">
        <textarea id="textbox" placeholder="Type Something.."></textarea>
       
        <button id="send"><i class="fa fa-telegram fa-lg" aria-hidden="true"></i></button>
        <br>
   
       
    </div>
</div>
</div>
<div id="footer" style="background-color: darkgrey;">
  &copy; Sky Bank.All rights reserved
</div>
    <script>
    var chng=0;
    function changeColor() {
        if(chng==0){
           document.getElementById("chatarea").style.background='black';
           chng=1;
        }
       else{
           document.getElementById("chatarea").style.background='white';
           chng=0;
        }
       
    }
    function navbuttonshow(){
    var click=document.getElementById("drop-content");
    if(click.style.display=="none"){
    click.style.display="block";
    }
    else{
    click.style.display="none";
    }
    }
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }
   
    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
    </script>
  <script>
  <%
  String loan1="";
  String loan2="";
  String loan3="";
  String loan1ans="";
  String loan2ans="";
  String loan3ans="";
  %>
  var first_ans="";
  var second_ans="";
  var third_ans="";
  var fourth_ans="";
  var fifth_ans="";
  var sixth_ans="";
  var seventh_ans="";
  var eight_ans="";
  var inc_var=0;
  var count_check=0;
  var count_ans=0;
  var chi=0;
  function avail_moratorium(){
 <%
    if(session.getAttribute("uid")==null)
    {%>
    alert("Please login first");
    <%System.out.println("Session is null in index page");
    }
    else{
    int uid=(Integer)session.getAttribute("uid");
    System.out.println("Before result set in index page"+uid);
      ResultSet rs=stmt.executeQuery("select * from loans where id="+uid);
      loan1="";
      String reply="Select from following loans<br>";
       loan2="";
       loan3="";
      if(rs.next()!=false){
       loan1=rs.getString(2);
       loan2=rs.getString(3);
       loan3=rs.getString(4);
       loan1ans=rs.getString(5);
       loan2ans=rs.getString(6);
       loan3ans=rs.getString(7);
      System.out.println(loan1+loan2+loan3+" temp");
      if(loan1.equals("no")&&loan2.equals("no")&&loan3.equals("no")){
     reply="You have no loans";reply="\""+reply+"\"";%>
     var temp=<%=reply%>;
          botreply(temp);
      <%}
      else{
      if(loan1.equals("yes")){
      //botreply('<b>personal loan<b>');
      reply+="<input type='checkbox' id='loan1check'>Personal Loan<br>";
      }
      if(loan2.equals("yes")){
      //botreply('<b>personal loan<b>');
      reply+="<input type='checkbox' id='loan2check'>Education Loan<br>";
      }
      if(loan3.equals("yes")){
      //botreply('<b>personal loan<b>');
      reply+="<input type='checkbox' id='loan3check'>Housing Loan<br>";
      }
      reply="\""+reply+"\"";
      %>
      var temp=<%=reply%>;
      botreply(temp);
     
      <%System.out.println("Calling checked");%>
      setTimeout(function(){checkedLoans();},10000);
     
      <%}
      }
    }
      %>
  }
  function checkedLoans()
{
<%System.out.println("Entered checked loans");%>
var count=0;
//alert($("#loan1check").prop("checked")+" "+$("#loan2check").prop("checked")+" gap" +$("#loan3check").prop("checked")+"see the loans checked");
var soj=0;
var yoj=0;
if($("#loan1check").prop("checked"))
{
count_check+=1;
chi=1;

}
if($("#loan2check").prop("checked"))
{
count_check+=1;
yoj=1;
}
if($("#loan3check").prop("checked"))
{
count_check+=1;
soj=1;
}
<%if(loan1.equals("yes")&&loan1ans.equals("no")){%><%System.out.println("It is yes");%>
if($("#loan1check").prop("checked")){

botreply("Select the period of time you want to avail moratorium for Personal loan<br>"+
"<select  id='period1check'>"+
 "<option>upto October</option>"+
 "<option>upto November</option>"+
 "<option>upto December</option>"+
"</select><button class='stylebtn' id='periodselected'>Ok</button>"
);

count_ans+=1;
var x=document.getElementById("period1check").value;
$("#periodselected").click(function(){
     $.ajax({
           type : "POST",
           data : {
               Personalper :document.getElementById("period1check").value
           },
           url : "./DemoServletPersonal",
           success : function(resp){
               
           },
           error : function(resp){
               alert("FAIL");
           }
       });
botreply("You have requested for personal moratorium");
});
}
<%}else{System.out.println("in else of checked loans");%>
<%if(loan1ans.equals("yes")){%>
if(chi==1){
botreply("You have already requested for personal loan moratorium.Please check your profile to know the status.Email us at manager@skybank.ac.in for any further queries."+
		"<br><button class='stylebtn' onclick='mainmenu()'>Main menu</button>");
}
<%}%>
<%}%>
setTimeout(function(){loan2house(soj,yoj);},10000);

}
function loan2house(soj,yoj)
{
<%System.out.println("Entered checked loans");%>
var count=0;
//alert($("#loan2check").prop("checked")+" gap" +$("#loan3check").prop("checked")+"see the loans checked");
<%if(loan2.equals("yes")&&loan2ans.equals("no")){%><%System.out.println("It is yes");%>
if(yoj==1){

botreply("Select the period of time you want to avail moratorium for education loan<br>"+
"<select  id='period2check'>"+
"<option>upto October</option>"+
 "<option>upto November</option>"+
 "<option>upto December</option>"+
"</select><button class='stylebtn' id='period2selected'>Ok</button>"
);

var x=document.getElementById("period2check").value;
count_ans+=1;
$("#period2selected").click(function(){
     $.ajax({
           type : "POST",
           data : {
               Educationper :document.getElementById("period2check").value
           },
           url : "./DemoServlet",
           success : function(resp){
               
           },
           error : function(resp){
               alert("FAIL");
           }
       });
botreply("You have requested for education loan moratorium");
});
}
<%}else{System.out.println("in else of checked loans");%>
<%if(loan2ans.equals("yes")){%>
if(yoj==1){

botreply("You have already requested for education loan moratorium.Please check your profile to know the status.Email us at manager@skybank.ac.in for any further queries."+
		"<br><button class='stylebtn' onclick='mainmenu()'>Main menu</button>");
}
<%}%>
<%}%>
setTimeout(function(){loan3house(soj);},10000);

}
function loan3house(soj)
{
//loan3

<%if(loan3.equals("yes")&&loan3ans.equals("no")){%><%System.out.println("It is yes");%>
//alert("before soj");
if(soj==1){

botreply("Select the period of time you want to avail moratorium for housing loan<br>"+
"<select  id='period3check'>"+
"<option>upto October</option>"+
 "<option>upto November</option>"+
 "<option>upto December</option>"+
"</select><button class='stylebtn' id='period1selected'>Ok</button>"
);
count_ans+=1;

var xx=document.getElementById("period3check").value;
$("#period1selected").click(function(){
     $.ajax({
           type : "POST",
           data : {
               Houseper :document.getElementById("period3check").value
           },
           url : "./DemoServletHouse",
           success : function(resp){
             
           },
           error : function(resp){
               alert("FAIL");
           }
       });
botreply("You have requested for housing moratorium");
});
}
<%}else{%>
<%if(loan3ans.equals("yes")){%>
if(soj==1){

botreply("You have already requested for housing loan moratorium.Please check your profile to know the status.Email us at manager@skybank.ac.in for any further queries."+
		"<br><button class='stylebtn' onclick='mainmenu()'>Main menu</button>");
}
<%}%>
<%}%>
setTimeout(function(){firstquestion();},10000);
}
function firstquestion()
{
if(count_check==0){
botreply("You have not selected any loan.<br><button class='stylebtn' onclick='mainmenu()'>Main menu</button>")
}
else if(count_ans==0){
botreply("Thank you.Stay safe");
}
else{
botreply("Select your primary source of income:<br>"+
"<select  id='firstqn'>"+
 "<option>Private job</option>"+
 "<option>Government job</option>"+
 "<option>Business</option>"+
 "<option>Other</option>"+
"</select><button class='stylebtn' id='firstqnselected'>Ok</button>"
);
}

$("#firstqnselected").click(function(){
var inc=document.getElementById("firstqn").value

if(inc=="Other")
{

$("#textbox").focus();
$("#textbox").css({'background-color': 'lightgray'});
$("#send").click(function(){
 var ur=document.getElementById("textbox").value

 
 inc_var+=1;
 userreply(ur);

});

}
else{
inc_var+=1;
first_ans=document.getElementById("firstqn").value
secondquestion();
}

});
}
function secondquestion()
{
botreply("Select the amount of income you received pre lockdown:<br>"+
"<select  id='secondqn'>"+
 "<option>less than 10000</option>"+
 "<option>between 10000 and 20000</option>"+
 "<option>between 20000 and 30000</option>"+
 "<option>between 30000 and 40000</option>"+
 "<option>between 40000 and 50000</option>"+
 "<option>between 40000 and 60000</option>"+
 "<option>greater than 60000</option>"+
"</select><button class='stylebtn' id='secondqnselected'>Ok</button>"
);
$("#secondqnselected").click(function(){
var inc=document.getElementById("secondqn").value
second_ans=document.getElementById("secondqn").value

thirdquestion();
});
}
function thirdquestion()
{
botreply("Select the amount of income you receive post lockdown:<br>"+
"<select  id='thirdqn'>"+
 "<option>less than 10000</option>"+
 "<option>between 10000 and 20000</option>"+
 "<option>between 20000 and 30000</option>"+
 "<option>between 30000 and 40000</option>"+
 "<option>between 40000 and 50000</option>"+
 "<option>between 40000 and 60000</option>"+
 "<option>greater than 60000</option>"+
"</select><button class='stylebtn' id='thirdqnselected'>Ok</button>"
);
$("#thirdqnselected").click(function(){
var inc=document.getElementById("thirdqn").value
third_ans=document.getElementById("thirdqn").value

fourthquestion();
});
}
function fourthquestion()
{
botreply("What is the reason to avail moratorium:<br>"+
"<select  id='fourthqn'>"+
 "<option>Loss in business</option>"+
 "<option>Fired from job</option>"+
 "<option>Hospital treatment charges</option>"+
 "<option>Salary was deferred</option>"+
 "<option>Other</option>"+
"</select><button class='stylebtn' id='fourthqnselected'>Ok</button>"
);

$("#fourthqnselected").click(function(){
var inc=document.getElementById("fourthqn").value
//alert("selected"+inc);
if(inc=="Other")
{

$("#textbox").focus();
$("#textbox").css({'background-color': 'lightgray'});
$("#send").click(function(){
if(inc_var==1){
 var ur=document.getElementById("textbox").value
//  alert(ur+"is the message in fifth send");
 
 inc_var+=1;
 userreply(ur);
}

});

}
else{
inc_var+=1;
fourth_ans=document.getElementById("fourthqn").value
fifthquestion();
}
});
}
function fifthquestion(){
botreply("Do you have any other source of income:<br>"+
"<select  id='fifthqn'>"+
 "<option>Yes</option>"+
 "<option>No</option>"+
"</select><button class='stylebtn' id='fifthqnselected'>Ok</button>"
);
$("#fifthqnselected").click(function(){
var inc=document.getElementById("fifthqn").value
fifth_ans=document.getElementById("fifthqn").value

sixthquestion();
});
}
function sixthquestion(){
botreply("Do you have any other loans:<br>"+
"<select  id='sixthqn'>"+
 "<option>Yes</option>"+
 "<option>No</option>"+
"</select><button class='stylebtn' id='sixthqnselected'>Ok</button>"
);
$("#sixthqnselected").click(function(){
var inc=document.getElementById("sixthqn").value
sixth_ans=document.getElementById("sixthqn").value

seventhquestion();
});
}
function seventhquestion()
{
botreply("After how many months do you think you would get back to normal situation:<br>"+
"<select  id='seventhqn'>"+
 "<option>1</option>"+
 "<option>2</option>"+
 "<option>3</option>"+
 "<option>4</option>"+
 "<option>5</option>"+
 "<option>more than 5 months</option>"+
"</select><button class='stylebtn' id='seventhqnselected'>Ok</button>"
);
$("#seventhqnselected").click(function(){
var inc=document.getElementById("seventhqn").value
seventh_ans=document.getElementById("seventhqn").value
eightquestion();
});
}
function eightquestion()
{
botreply("How would you like to repay the moratorium amount:<br>"+
"<select  id='eightqn'>"+
 "<option>Extend the EMI tenure</option>"+
 "<option>One time repayment after normalcy</option>"+
 "<option>Repayment in small amounts</option>"+
"</select><button class='stylebtn' id='eightqnselected'>Ok</button>"
);
$("#eightqnselected").click(function(){
var inc=document.getElementById("eightqn").value
eight_ans=document.getElementById("eightqn").value
ninthquestion();
});
}
function ninthquestion()
{
botreply("Thank you!Your response has been recorded.Stay safe.<br><button class='stylebtn' onclick='mainmenu()'>Main menu</button>");
//alert("calling answerservlet");
$.ajax({
           type : "POST",
           data : {
               firstans:first_ans,
               secondans:second_ans,
               thirdans:third_ans,
               fourthans:fourth_ans,
               fifthans:fifth_ans,
               sixthans:sixth_ans,
               seventhans:seventh_ans,
               eightans:eight_ans
           },
           url : "./AnswerServlet",
           success : function(resp){
               
           },
           error : function(resp){
               alert("FAIL");
           }
       });
}

  function moratorium()
  {
 <%
    if(session.getAttribute("uid")==null)
    {
    System.out.println("moratorium login first");
    //out.print("<script>alert('login first')</script>");%>
    alert("login first");
    <%}
    else{%>
  botreply("Select one of the following:<br>"+
     "<button class='stylebtn' onclick='avail_moratorium()'>Avail moratorium</button>"+
     "<br><button class='stylebtn' onclick='extend_moratorium()'>Extend moratorium</button>"
     );
 
  <%}
 %>
     
  }
  function profileqn(){
 botreply("Customer can check his/her profile regarding moratorium status<br>"+
     "<button class='stylebtn' onclick='mainmenu()'>Main menu</button>"
     );
  }
  function elligible_borrowers()
  {
      botreply("There is no eligibility criteria to opt-in for moratorium.Once your request is received,banker will do the analysis and accept or reject your request.<br>"+
      "<button class='stylebtn' onclick='mainmenu()'>Main menu</button>"
      );
  }
  function moratorium_loans()
  {
      botreply("Moratorium can be availed on personal,education and house loans<br>"+
      "<button class='stylebtn' onclick='mainmenu()'>Main menu</button>"
      );
  }
  function faq()
  {
      botreply("Select one of the following to know about it<br>"+
      "<button class='stylebtn' onclick='elligible_borrowers()'>Eligible borrowers</button><br>"+
      "<button class='stylebtn' onclick='moratorium_loans()'>Loans on which moratorium can be availed</button>"+
      "<button class='stylebtn' onclick='profileqn()'>How can I check the moratorium status of my loans?</button>"+
      "<button class='stylebtn' onclick='mainmenu()'>Main menu</button>"
      );
  }
  function mainmenu()
  {
      botreply("How can I help you?"+
      "<button class='stylebtn' onclick='avail_moratorium()'>Avail Moratorium</button><button class='stylebtn' onclick='faq()'>FAQ</button>");

  }
  function botfirstmsg()
  {
      botreply("Hello,How can I help you?"+
      "<button class='stylebtn' onclick='avail_moratorium()'>Avail Moratorium</button><button class='stylebtn' onclick='faq()'>FAQ</button>");

  }
  function botmsg(message)
  {
      if(message=="hi")
      {
          botreply("Hello!!!");
      }
      else if(message=="yoji")
      {
          botreply("Ur name is yojitha");
      }
      else{
          botreply("U typed "+message);
      }
  }
  function userreply(message)
  {
// alert("in user reply"+message);
      var prev=$("#chatarea").html();
      if(inc_var==2)
     {
     fourth_ans=document.getElementById("textbox").value
     }
      if(inc_var==1)
     {
     first_ans=document.getElementById("textbox").value
     }
$("#textbox").val("");

$("#textbox").css({'background-color': 'white'});
      if(prev.length!=0)
      {
          prev=prev+"<br>";
      }
      $("#chatarea").html(prev+"<span class='currentmo'><span class='userstyle'><span class='userback'>"+message+"</span></span></span>");
      $("#chatarea").scrollTop($("#chatarea").prop("scrollHeight"));
      $(".currentmo").hide();
      $(".currentmo").delay(300).fadeIn();
     $(".currentmo").removeClass("currentmo");
     $("#chatarea").scrollTop($("#chatarea").prop("scrollHeight"));
     
     //alert("in end of user reply"+message);
     if(inc_var==1){
    // alert("cALLing second ques from userrreply");
     
    setTimeout(function(){secondquestion()},5000);
     }
     if(inc_var==2){
    // alert("cALLing second ques from userrreply");
      //alert(inc_var+"calling fifth");
    setTimeout(function(){fifthquestion()},5000);
     }
  }
  function botreply(message)
  {
      var prev=$("#chatarea").html();
      if(prev.length!=0)
      {
          prev=prev+"<br>";
      }
      $("#chatarea").html(prev+"<span class='currentm'><span class='botstyle'><span class='botback'>"+message+"</span></span></span>");
      $("#chatarea").scrollTop($("#chatarea").prop("scrollHeight"));
      $(".currentm").hide();
      $(".currentm").delay(300).fadeIn();
     $(".currentm").removeClass("currentm");
     $("#chatarea").scrollTop($("#chatarea").prop("scrollHeight"));
  }
  //alert("State is"+document.readyState);
  $(document).ready(function(){
 setTimeout(openForm(),10000);
  // alert("Documnet ready");
      botfirstmsg();
      $("#textbox").keypress(function(event){
      });

  });
 // alert("State is"+document.readyState);
  $(document).ready();
 
    </script>
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>