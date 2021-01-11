<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    *{
        margin:0;
        padding: 0;
        box-sizing: border-box;
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
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
           margin: 0;
            font-family: Arial, Helvetica, sans-serif;
                background: url('images/loginpageback.png');
        background-repeat:none ;
        background-size: cover;

    }
    .about-section{
        background: url("images/download.jpg") no-repeat left;
        background-size: 55%;
        
       padding: 100px;
        overflow: hidden;
        
    }
    .inner-container{
        width: 55%;
        float:right;
        background-color: whitesmoke;
        padding: 50px;
    }
    .inner-container h1{
        margin-bottom:30px ;
        font-size: 30px;
        font-weight: 900;
    }
    .text{
        font-size: 13px;
        line-height: 30px;
        text-align: justify;
        margin-bottom: 40px;

    }
    @media screen and (max-width:1200px ){
        .inner-container{
            padding: 80px;

        }
    }
    @media screen and (max-width:1000px ){
        .about-section{
            background-size: 100%;
            padding:100px 40px;
        }
        .inner-container{
            width:100%;
        
        }
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
</head>
  <%
  String uname="";
  if(session.getAttribute("uname")==null){%>
  alert("Please login first");
  <%}else{
	 uname=(String)session.getAttribute("uname");
	 //uname="\""+uname+"\"";
  }%>
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
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            Sky Bank is a leading private sector bank in India. 
            The consolidated total assets stood at Rs. 13.77 trillion at March 31, 2020.
            Sky Bank currently has a network of 5,324 branches and 15,688 ATMs across India.
            In the 1990s, Sky transformed its business from a development financial institution
             offering only project finance to
            a diversified financial services group offering a wide variety of products and services
            Sky Bank was originally promoted in 1994 by Sky Limited, an Indian financial institution,
            and was its wholly-owned subsidiary.
            Sky Bank offers a wide range of banking products and financial services to corporate and 
            retail customers through a variety of delivery channels and through its group companies.
            Sky Bank is deeply engaged in human and economic development at the national level. The Bank works
            closely with Sky Foundation across diverse sectors and programs.

        </div>
    </div>
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
   }</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>