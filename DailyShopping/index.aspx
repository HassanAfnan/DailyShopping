<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DailyShopping.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>DailyShopping.pk</title>
    <link rel="icon" href="../images/favicon.ico"/>
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"crossorigin="anonymous"/> <!--Bootstrap-->
     <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <link rel="stylesheet" type="text/css" href="css/card.css" />
  
</head>
<body>
    <form id="form1" runat="server">
       <header class="mained" style= "background-image: url('../images/1527.jpg');  background-repeat: no-repeat;   background-size: cover;">
    
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
            <asp:Button ID="Button2" runat="server" Text="Login" class="logined btn btn-outline-warning" OnClick="Button2_Click"/>        
            <div class="log2">
            <a href="ViewCart.aspx" class="btn btn-outline-warning">
                MyCart
               <span class="badge badge-light">0</span>
                <span class="sr-only">unread messages</span>
              </a>
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

    </div>  <!--collapse ends--> <!-- checkmate --->
  </header>
  <!--main part-->
  <section>
    <div class="trendtitle">
      <div>
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" Text="Logout" class="logined loginedmob btn btn-outline-warning" OnClick="Button1_Click"/>
      </div>
      
      <h2>New Arrivals</h2>
      <p>Multiple categories to check from</p>
    </div>
    <div class="thecarousel">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../images/clothcov.jpg" class="d-block w-100" alt="..." height="600px">
          <div class="carousel-caption d-none d-md-block">
            <h1><a href="Clothing.html">Clothing Section</a></h1>
            <p>Check the latest trends available in the market</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/karate.jpg" class="d-block w-100" alt="..." height="600px">
          <div class="carousel-caption d-none d-md-block">
            <h1><a href="Sports.html" >Sports Library</a></h1>
            <p>Become a Champion, when you browser through these latest arrivals</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/carouselcover.jpg" class="d-block w-100" alt="..." height="600px">
          <div class="carousel-caption d-none d-md-block">
            <h1><a href="Electronics.html">Electronic Media</a></h1>
            <p>Keep up with the latest technology in our electronic library</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <!--end of carousel-->
      <section class="seperations1">
        <div class="container">
            <div class="row">
           <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
              <div class="col-sm-4">
                <div class="card">
                    <img src='<%#Eval("image")%>' alt="img">
                    <div class="descs">
                        <p class="name"><%#Eval("name")%></p>
                        <p class="category"><%#Eval("description")%></p>
                        <div class="prices">
                            <p class="pprice"><%#Eval("price")%></p>
                        </div>
                        <div>                            
                             <a href="Details.aspx?pid=<%#Eval("Pid") %>" class="btn btn-success">Details</a>
                             <a href="#" class="btn btn-danger">cart</a>
                        </div>
                    </div>
                </div>
              </div>
              </ItemTemplate>
           </asp:Repeater>
            </div>
          </div>
    </section>
  <!--insert cards here  (afnan)--> 
  </section>
     <footer>
        <div class="layeralpha">
            <div class="alphacontact">
                
                    <div class="superlayer">
                    CONTACT US
                    </div>
                    <div class="childlayer">
                        <p>GitHub</p>
                        <p>WhatsApp</p>
                        <p>Location</p>
                    </div>
                </div>
                <div class="betalinks">
                    <div class="superlayer">
                     LINKS
                    </div>
                    <div class="childlayer">
                        <p>About Us</p>
                        <p>Our Products</p>
                        <p>Terms & Services</p>
                    </div>
                </div>
            </div>
            <div class="layerbeta">
                <div class="followtrends">
                    <img src="images/fb.svg" alt="" width="40px" height="40px"/>
                    <img src="images/ii.png" alt="" width="40px" height="40px"/>
                    <img src="images/git.svg" alt="" width="40px" height="40px"/>
                </div>
                <div class="copyrighted1">
                    <p>DailyShopping &copy; 2020</p>
                </div>
            </div>
        
    </footer>
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
var loginbuttonmob=document.querySelector("button.loginedmob");
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
