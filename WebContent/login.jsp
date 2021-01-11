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
    <title>LOGIN</title>
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
            background-color:blue;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 0.8;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 280px;
        }
        .form-container {
            margin-top:20vh;
               
                padding: 10px;
               color:white;
              font-weight: bolder;
              font-family: Georgia, 'Times New Roman', Times, serif;
                padding:50px 60px;
                -webkit-box-shadow: 10px 10px 76px 6px rgba(0,0,0,0.35);
-moz-box-shadow: 10px 10px 76px 6px rgba(0,0,0,0.35);
box-shadow: 10px 10px 76px 6px rgba(0,0,0,0.35);
            }
                .navbar-toggler{
    background-color:lightgray;
    }
</style>

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
                    <a href="home.jsp" class="nav-link">
                       <span style="color: white;"> <i class="fa fa-home" aria-hidden="true"></i> Home
                       </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">
                        <span style="color: white;">  <i class="fa fa-unlock-alt" aria-hidden="true"></i> Login
                    </span>
                        </a>
                </li>
           
             
            </ul>
        </div>
    </div>
    </nav>
        <div class="container-fluid">
        <div class="row">
            <div class="col md-4 col sm-4 col-xs-12"></div>
            <div class="col md-4 col sm-4 col-xs-12">
                <form class="form-container" method="post" action="loginhandler.jsp">
                    <h1>WELCOME</h1>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Account Number</label>
                      <input type="text" class="form-control" id="exampleInputEmail1"  placeholder="Account number" name="name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1" name="pass">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass">
                    </div>
                    <input type="submit" class="btn btn-primary btn-block" value="LOGIN"><br>
                     <a href="loginbanker.jsp"><button id="mybutton" type="button" class="btn btn-primary btn-block">
                 
                                 LOGIN AS BANKER
                                 </button>
                                 </a>
                  </form>
            </div>
            <div class="col md-4 col sm-4 col-xs-12"></div>
        </div>
    </div>
   <div id="footer" style="background-color: darkgrey;">
  &copy; Sky Bank.All rights reserved
</div>
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>
    
