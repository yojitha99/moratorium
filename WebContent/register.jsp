<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page session = "false" %>
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
        #chathead{
            margin:60px 200px 0px 200px;
            width:300px;
            height:30px;
            background-color: rgb(29, 2, 29);
            color: chartreuse;
            text-align: center;
        }
        #chatarea{
            width:300px;
            margin:0px 200px 0px 200px;
            height:400px;
            border:1px solid black;
            overflow:scroll;
            overflow-x: hidden;
            overflow-y: scroll;
           
        }
        #controls{
            width:300px;
            margin:0px 200px 200px 200px;
        }
        #textbox{
            resize:none;
            width:230px;
        }
        #send{
           font-size:25px;
           position:absolute;
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
    </style>

</head>
<body>
  <script>
        function moratorium()
        {
           
            <%
            HttpSession session=request.getSession(false);  
            if(session==null)
            {
            out.print("alert('Please login first')");
           
    System.out.println("please login first");
    //RequestDispatcher rd=request.getRequestDispatcher("login.html");
    //rd.include(request,response);
            }
            else{ out.print("in else of session"); %>
           
            botreply("Do u want to avail?");
            <%}
            %>
           
        }
        function elligible_borrowers()
        {
            botreply("There is no elligibilty criteria to avail moratorium<br>"+
            "<button onclick='faq()'>Main menu</button>"
            );
        }
        function moratorium_loans()
        {
            botreply("Moratorium can be availed on all term loans<br>"+
            "<button onclick='faq()'>Main menu</button>"
            );
        }
        function faq()
        {
            botreply("Select one of the following to know about it<br>"+
            "<button onclick='elligible_borrowers()'>Elligible borrowers</button><br>"+
            "<button onclick='moratorium_loans()'>Loans on which moratorium can be availed</button>"
            );
        }
        function botfirstmsg()
        {
            botreply("Hello,How can I help you?"+
            "<button onclick='moratorium()'>Moratorium</button><button onclick='faq()'>FAQ</button>");

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
        $(document).ready(function(){
            botfirstmsg();
            $("#textbox").keypress(function(event){
                if(event.which==13){
                    if( $("#enter").prop("checked") ){
                        $("#send").click();
                        event.preventDefault();
                    }
                }
            });
            $("#send").click(function(){
                var prev=$("#chatarea").html();
                var userMessage=$("#textbox").val();
                console.log(prev.length);
                if(prev.length==0){
                    prev="<span class='userstyle'><span class='userback'>"+userMessage+"</span></span>";
                }
                else{
                prev=prev+"<br><span class='userstyle'><span class='userback'>"+userMessage+"</span></span>";
                }
                $("#chatarea").html(prev);
                $("#textbox").val("");
                botmsg(userMessage);
                $("#chatarea").scrollTop($("#chatarea").prop("scrollHeight"));
            });
        });
        $(document).ready();
    </script>
    <nav class="navbar navbar-expand-sm navbar-light bg-danger fixed-top " style="background-color:rgb(138, 138, 233);color:darkgrey">
        <div class="container-fluid">
        <a href="#" class="navbar-brand">BANK</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <span class="mr-auto"></span>
            <ul class="navbar-nav">
             <li class="nav-item">
                    <a href="index.jsp" class="nav-link">
                        <i class="fa fa-unlock-alt" aria-hidden="true"></i> Home
                    </a>
                </li>
                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">
                        <i class="fa fa-unlock-alt" aria-hidden="true"></i> Login
                    </a>
                </li>
                <li class="nav-item">
                    <a href="register.jsp" class="nav-link">
                        <i class="fa fa-user-plus" aria-hidden="true"></i>
                        Register
                    </a>
                </li>
                <li class="nav-item">
                    <a href="profile" class="nav-link">
                        <i class="fa fa-address-card" aria-hidden="true"></i>
                        Profile
                    </a>
                </li>
                <li class="nav-item">
                    <a href="logout" class="nav-link">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
    </nav>
    <br>
    <br>
    <br><br>
    <br>
    <br>
    <div class="contaier">
    <form class="form-horizontal" action="./RegisterServlet" method="post">
    <div class="form-group">
        <label class="control-label col-sm-2">Name:</label>
        <div class="col-sm-10">
        <input type="text" name="sname"></div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Password:</label>
        <div class="col-sm-10">
        <input type="password" name="spass"></div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">   Confirm Password:</label>
        <div class="col-sm-10">
        <input type="password"></div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Email:</label>
        <div class="col-sm-10">
        <input type="email" name="semail"></div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Phone number:</label>
        <div class="col-sm-10">
        <input type="number" name="sphone"></div>
    </div>
       <div class="form-group">
        <label class="control-label col-sm-2">Address:</label>
        <div class="col-sm-10">
        <input type="textarea" name="sadd"></div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Status:</label>
        <div class="col-sm-10">
    <select name="status">
        <option value="user">customer</option>
        <option value="banker">banker</option>
    </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Select image:</label>
        <div class="col-sm-10">
        <input type="file" name="simage"></div>
    </div>
    <div class="form-group">        
        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" name="register" value="register">
        </div>
    </div>
</form>
    <div id="chathead">CHATBOT</div>
    <div id="chatarea"></div>
    <div id="controls">
        <textarea id="textbox" placeholder="Type Something.."></textarea>
        <button id="send">Send</button>
        <br>
        <input checked type="checkbox" id="enter"/>
        <label>Send on enter</label>
    </div>
    </div>
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>
    