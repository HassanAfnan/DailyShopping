<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInsertProduct.aspx.cs" Inherits="DailyShopping.AdminInsertProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>PRODUCT</title>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="css/product-sidebar.css"/>
        <link rel="stylesheet" type="text/css" href="css/product-main.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet"/>
        <link rel="icon" href="images/Admin/admin.png"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <!--SIDEBAR STARTS-->
<section class="sidebar">
    <div class="sidebar-container">

        <div class="sidebar-header">
            <img src="images/Admin/admin.png" id="admin"/>
            <h4>ADMIN</h4>
        </div>

        <nav class="menu">
            
            <ul class="sidebar-menu">
                    <li>
                        
                        <a href="AdminHome.aspx">Dashboard</a>
                    </li>
                    <li><a href="AdminSeeAllProducts.aspx">Items Manager</a></li>
                    
                    <li><a href="AdminInsertCategory.aspx">Category</a></li>
                    <li class="active"><a href="AdminInsertProduct.aspx">Product</a></li>
                    <li><a href="AdminLogin.aspx">Admin Register</a></li>
                </ul>
        

            <div class="sidebar-footer">
                <img src="images/Admin/mainicon.png" class="mainicon"/>
            </div>
        </nav>

    </div>
</section>
<!--SIDEBAR ENDS-->


<!--DASHBOARD HEADING STARTS-->
<section class="header">
    <section class="db" id="product-db">
        <h1>Product</h1>

        <div class="header-block-nav">
            <img id="line" src="images/Admin/line.png"/>
            <ul class="nav-profile">
                <li class="notifications-new">
                    <a href="#">
                        <img id="bell" src="images/Admin/Bell.png"/>
                        <sup>
                            <span class="counter">3</span>
                        </sup>
                    </a>
                </li>

                <li class="profile-drop">
                    <div class="newdiv">
                        <input type="button" class="dropbtn" onclick="myFunction()"/>
                        <%--<button onclick="myFunction()" class="dropbtn"></button>--%>
                        
                        <script type="text/javascript" src="js/dropdown.js"></script>
                                                           
                                   <div class="img">
                                    <img id="face" src="images/Admin/admin.png"/>
                                </div> 
                             <asp:Label ID="Label2" runat="server" class="name"></asp:Label>
                        
                                <div class="img1">
                                    <img id="dropdown" src="images/Admin/dropdown-arrow.png"/>
                                </div>
                       



                                <input type="button" class="dropbtn1" onclick="myFunction1()"/>
                                <%--<button onclick="myFunction1()" class="dropbtn1"></button>--%>
                                <script type="text/javascript" src="js/dropdown1.js"></script>
                                <div id="myDropdown1" class="dropdown-content1">
                                    <p>You have New Notifications</p>
                                    
                                    <a href="#">
                                        
                                        <span class="notif">The profile of X person is changed specifically password has been changed.</span></a>


                                    <a href="#">   
                                        <span class="notif">A new member has been added in admin panel control</span></a>


                                    <a href="#"> 
                                        <span class="notif">Settings of the various members of this website has been granted to admin</span></a>

                                        
                                    <a href="#" class="lastnotif">  
                                        <span class="notif">See All Notifications</span>
                                        <img src="images/Admin/right-arrow.png" id="right-arrow"/>
                                    </a>                             
                                </div>







                                <div id="myDropdown" class="dropdown-content">
                                    <a href="#">
                                        <img src="images/Admin/user.png" class="user"/>
                                        <span class="logout1">Profile</span></a>
                                    <a href="#">
                                        <img src="images/Admin/doorbell.png" class="doorbell"/>
                                        <span class="logout1">Notifications</span></a>
                                    <a href="#">
                                        <img src="images/Admin/settings.png" class="settings"/>
                                        <span class="logout1">Settings</span></a>
                                    <a href="#" class="logout" style="padding: 0px 0px;">
                                        <img src="images/Admin/poweroff.png" class="poweroff"/>
                                        <asp:Button ID="Button3" class="logout-button" runat="server" Text="Logout" OnClick="Button3_Click"/></a>                                       
                                </div>
                        </div>

                </li>
            </ul>
        </div>
    </section>


</section>
<!--DASHBOARD HEADING ENDS-->



<!--FORM STARTS HERE-->
<section class="form">
    <div class="formhead">
        <p>ENTER DETAILS OF PRODUCT</p>
    </div>
    <div id="productform">
        <div id="formdetails">
            <h2>Product Name</h2>
            <asp:TextBox ID="TextBox1" runat="server" class="productname" placeholder="Enter Product..." autocomplete="off"></asp:TextBox>            
<br/><br/>
            <h2>Product Description</h2>
            <asp:TextBox ID="TextBox2" class="productdescription" placeholder="Enter description..." runat="server" TextMode="MultiLine" autocomplete="off"></asp:TextBox>            

<br><br>
            <h2>Product Price</h2>
            <asp:TextBox ID="TextBox3" runat="server" class="productprice" autocomplete="off"></asp:TextBox>            
<br><br>
            <h2>Product Quantity</h2>
            <asp:TextBox ID="TextBox4" class="productquantity" runat="server" autocomplete="off"></asp:TextBox>            
<br><br>
            <h2>Product Category</h2>
            <asp:DropDownList ID="DropDownList1" class="productcategory" runat="server"></asp:DropDownList>           
<br><br>

            <div class="product-image">
                <h2>Product Image</h2>
                <asp:Image ID="Image1" runat="server" class="img-pho" style="width: 350px;height: 375px; border: 1px solid black;"/>                
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="Label1" runat="server"></asp:Label>        <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" class="productsubmit" OnClick="Button1_Click"/>                
            </div>                   
              
            <div class="container">
                <asp:Button ID="Button2" class="butn" runat="server" Text="INSERT PRODUCT" OnClick="Button2_Click"/> 
                
            </div>

            <div class="container1">
                <input type="reset" value="RESET" class="butnA" /> 
                
            </div>
    </div>
</section>
<!--FORM ENDS HERE-->




<!--FOOTER STARTS HERE-->
<footer>
    <p>Copyrights © DailyShopping, created in 2020</p>
    <div class="btnScrollToTop clickTop">
        <img src="images/Admin/uparrow.png" id="uparrow"/>
       
    </div>

    <script src="js/scrolltop.js"></script>
</footer>
<!--FOOTER ENDS HERE-->

    </form>
</body>
</html>
