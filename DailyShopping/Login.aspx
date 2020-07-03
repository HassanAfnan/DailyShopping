<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DailyShopping.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="icon" href="../images/favicon.ico"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
     crossorigin="anonymous"/> 
     <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body style=" background-image: url('images/logins/logincov.jpg');  background-repeat: no-repeat;   background-size: cover;">
    <form id="form1" runat="server">
       <div class="likeheaderlogin">
        <div class="maincontroller">
          <div class="titled">
            <img src="images/vv.png" alt="cov"/>
            <p>DailyShopping</p>
          </div>
          <div class="navcont">
            <ul>
              
              <li><div class="btn-group">
                <button type="button" class="btn btn-outline-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Categories
                </button>
                  </div>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="Clothing.html" >Clothing</a>
                  <a class="dropdown-item" href="Sports.html">Sports</a>
                  <a class="dropdown-item" href="Electronics.html">Electronic</a>
                  
              </div></li>
              <li><a href="About.html">About</a></li>
              <li><a>Contact</a></li>
            </ul>
          </div>
          <div class="logs">
            <button type="button" class="logined btn btn-outline-warning">Login</button>
          </div>
          </div>
          <!--collapsed div for mobile-->
          <div class="maincontrollerspec fadeout">
            <div class="btn-group">
              <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="sr-only">Toggle Dropdown</span>
              </button>
              <button type="button" class="u btn btn-warning">MENU</button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Home</a>
                <a class="dropdown-item" href="#">Products</a>
                <a class="dropdown-item" href="#">Mycart</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Contact</a>
              </div>
            </div>
          <div class="titled">
            <img src="images/vv.png" alt="cov"/>
            <p class="sp">DailyShopping</p>
          </div>  
          <div class="logs">
            <button type="button" class="logined loginedmob btn btn-outline-warning">Login</button>
          </div>
          <!--collapse ends-->
        </div>
        <div class="formmain">
            <div class="replacements">
                <div class="mainup">
                <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control"/>
                  </div>
                </div>
            </div>
              <div class="lowup">
                  <button class="btn btn-outline-success">Log in</button>
                  <p><a href="signup.aspx">New Member? Sign in</a></p>
              </div>
            </div>        
    </div>
    </div>  
    </form>
    <script type="text/JavaScript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
