<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="DailyShopping.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>About us</title>
    <link rel="icon" href="../images/favicon.ico"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
     crossorigin="anonymous"/> 
     <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
         <header class="Aboutus" style=" background-image: url('images/tdark.jpg');  background-repeat: no-repeat;   background-size: cover;">
        <div class="maincontroller fadeout">
        <div class="titled">
            <img src="images/vv.png" alt="cov"/>
            <p>DailyShopping</p>
        </div>
        <div class="navcont">
            <div class="btn-group">
                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Categories
                </button>
                <div class="dropdown-menu">
                  <asp:Repeater ID="Repeater2" runat="server">
                   <ItemTemplate>                                             
                    <a href="ShowCategoryWise.aspx?cid=<%#Eval("Cid") %>" class="dropdown-item"><%#Eval("CategoryName") %></a>   
                 </ItemTemplate>
              </asp:Repeater>
                </div>
            </div>
            <a href="Aboutus.aspx">About</a>
            <a href="Contact.aspx">Contact</a>
        </div>
        <div class="logs">
            <button class="logined btn btn-outline-warning" >Login</button>        
            <div class="log2">
            <button type="button" class="btn btn-outline-warning">
                MyCart <span class="badge badge-light">0</span>
                <span class="sr-only">unread messages</span>
              </button>
            </div>
        </div>
    </div>
      <!--collapsed div for mobile-->
   <!--start--> 
           <div class="maincontrollerspec fadeout">
        <div class="btn-group">
            <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <button type="button" class="u btn btn-warning sss">MENU</button>
            <div class="dropdown-menu">
              <a class="dropdown-item btn btn_warning" href="Aboutus.aspx">About</a>
              <a class="dropdown-item btn btn_warning" href="Contact.aspx">Contact</a>
              <button type="button" class="btn btn-outline-warning">
                MyCart <span class="badge badge-light">0</span>
                <span class="sr-only">unread messages</span>
              </button>
            </div>
        </div>
        <div class="titledmob">
            <p>DailyShopping</p>
        </div>
        <div class="btn-group">
            <button type="button" class="btn btn-warning dropdown-toggle sss1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ≡
            </button>
            <div class="dropdown-menu">
              <asp:Repeater ID="Repeater3" runat="server">
                   <ItemTemplate>                                             
                    <a href="ShowCategoryWise.aspx?cid=<%#Eval("Cid") %>" class="dropdown-item"><%#Eval("CategoryName") %></a>   
                 </ItemTemplate>
              </asp:Repeater>
            </div>
        </div>

    </div>
        <div class="aboutpor">
            <p class="onceag">About Us</p>   
            <p class="tea">Meet Our Development Team</p>
        </div>
        </header>
      <!--collapse ends-->
    <div class="sectionbody">
        <div class="backenddev">
            <div class="titledev">
                <p>BackEnd Developers</p>
            </div>
            <div class="embedcont">
            <div class="devcard">
                
                <img src="https://avatars1.githubusercontent.com/u/49414010?s=400&u=65d7f6350e149048ce1686e991289ba10acb5093&v=4" alt="card"/>
                
                <div class="textflex">
                <p class="devname">Muhammad Faraz Ansar</p>
                <p class="devdesc">Software Engineering Student From NED University Junior .NET Developer Junior PHP Developer MERN stack Developer  </p>
                 </div>
            </div>
            <div class="devcard">
                
                <img src="https://avatars1.githubusercontent.com/u/50952934?s=400&u=047a42fec1b89ad6c404680421cd9266ed4c1cbf&v=4" alt=""/>
                
                <div class="textflex">
                <p class="devname">Afnan Hassan</p>
                <p class="devdesc">What I am? Java, PHP ,Dot Net and Android developer.Currently working on Frontend projects.Also learning Flutter.</p>
                </div>
            </div>
        </div>
        </div>
        <div class="backenddev">
            <div class="titledev">
                <p>FrontEnd Developers</p>
            </div>
            <div class="embedcont">
            <div class="devcard">
                
                <img src="https://avatars1.githubusercontent.com/u/49414010?s=400&u=65d7f6350e149048ce1686e991289ba10acb5093&v=4" alt=""/>
                
                <div class="textflex">
                <p class="devname">Syed Rameez Ahmed</p>
                <p class="devdesc">Software Engineering Student From NED University C++/C# Developer, front-end web and react developer  </p>
                 </div>
            </div>
            <div class="devcard">
                
                <img src="https://avatars1.githubusercontent.com/u/50952934?s=400&u=047a42fec1b89ad6c404680421cd9266ed4c1cbf&v=4" alt=""/>
                
                <div class="textflex">
                <p class="devname">Muhammad Zaeem Khaliq</p>
                <p class="devdesc">Software Engineering Student From NED University C++/C# Developer, front-end web and python developer </p>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div class="techbody">
        <div class="titledev">
            <p>Technologies</p>
            <div class="logoband">
                <img src="../images/htmla.png" alt=""/>
                <img src="../images/cssa1.png" alt=""/>
                <img src="../images/jsa.png" alt=""/>
                <img src="../images/bsa1.png" alt=""/>
                <img src="../images/sqla1.png" alt=""/>
                <img src="../images/aspa.png" alt="noimg"/>
            </div>
        </div>
    </div>
    </form>
    <script>

        
        let sbc = document.querySelector(".maincontrollerspec");
        let mnc = document.querySelector(".maincontroller");
        window.addEventListener("resize", function () {
            console.log(this.screen.width);
            if (this.screen.width <= 800) {
                sbc.classList.remove("fadeout");
                mnc.classList.add("fadeout");
            }
            else {
                sbc.classList.add("fadeout");
                mnc.classList.remove("fadeout");
            }

        })
        window.addEventListener("load", function () {
            if (this.screen.width <= 800) {
                sbc.classList.remove("fadeout");
                mnc.classList.add("fadeout");
            }
            else {
                sbc.classList.add("fadeout");
                mnc.classList.remove("fadeout");
            }
        }) 

        redirect = () => {
            this.location.href = "index.aspx";
        }
        let home = document.querySelector(".titled p");
        let homemob = document.querySelector(".titledmob p");
        home.addEventListener("click", redirect);
        homemob.addEventListener("click", redirect);
/* login button redirect*/
var loginbutton=document.querySelector("button.logined");
        var loginbuttonmob = document.querySelector("button.loginedmob");

redirect=()=>{
    console.log("ok");
    this.location.href="login.html";
}
loginbutton.addEventListener("click",redirect);
loginbuttonmob.addEventListener("click",redirect);

// redirect text to homepage
homeredirect.addEventListener("click",()=>{
    this.location.href="index.html";
})   
    </script>
      <script type="text/JavaScript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>


