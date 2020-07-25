<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInsertCategory.aspx.cs" Inherits="DailyShopping.AdminInsertCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>CATEGORY</title>        
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="css/category-sidebar.css"/>
        <link rel="stylesheet" type="text/css" href="css/category-main.css"/>
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
                    <li><a href="AdminHome.aspx">Dashboard</a></li>
                    <li><a href="Items Manager.html">Items Manager</a></li>
                    <li class="active"><a href="AdminInsertCategory.aspx">Category</a></li>
                    <li><a href="AdminInsertProduct.aspx">Product</a></li>
                </ul>
            

                <div class="sidebar-footer">
                    <img src="images/Admin/mainicon.png" id="mainicon"/>
                </div>
            </nav>

        </div>
    </section>
<!--SIDEBAR ENDS-->



<!--DASHBOARD HEADING STARTS-->
<section class="header">
    <section class="db" id="product-db">
        <h1>Category</h1>

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
                        <button onclick="myFunction()" class="dropbtn"></button>
                        
                        <script type="text/javascript" src="js/dropdown.js"></script>
                                                           
                                <div class="img">
                                    <img id="face" src="images/Admin/face.jpg"/>
                                </div>
                                <span class="name">John Doe</span>
                        
                                <div class="img1">
                                    <img id="dropdown" src="images/Admin/dropdown-arrow.png"/>
                                </div>
                       



                                <button onclick="myFunction1()" class="dropbtn1"></button>
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
                                    <a href="AdminLogin.html" class="logout">
                                        <img src="images/Admin/poweroff.png" class="poweroff"/>
                                        <span class="logout1">Logout</span></a>
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
        <p>ENTER A CATEGORY</p>
    </div>

    <div id="productform">
        <div id="formdetails">
            
            <asp:TextBox ID="TextBox1" runat="server" class="category" placeholder="Enter New Category"></asp:TextBox>            

            <div class="present-categories">
                <h2>Present categories</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Cid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" ReadOnly="True" SortExpression="Cid" />
                        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" DeleteCommand="DELETE FROM [Category] WHERE [Cid] = @original_Cid AND (([CategoryName] = @original_CategoryName) OR ([CategoryName] IS NULL AND @original_CategoryName IS NULL))" InsertCommand="INSERT INTO [Category] ([CategoryName]) VALUES (@CategoryName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [Cid] = @original_Cid AND (([CategoryName] = @original_CategoryName) OR ([CategoryName] IS NULL AND @original_CategoryName IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Cid" Type="Int32" />
                        <asp:Parameter Name="original_CategoryName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CategoryName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="original_Cid" Type="Int32" />
                        <asp:Parameter Name="original_CategoryName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

            <div class="container">
                <asp:Button ID="Button1" class="butn butn1" runat="server" Text="Insert Category" OnClick="Button1_Click" />                
            </div>                  
        </div>
    </div>
</section>
<!--FORM ENDS HERE-->




<!--FOOTER STARTS HERE-->
<footer>
    <p>Copyrights © DailyShopping, created in 2020</p>
    <button class="btnScrollToTop">
        <img src="images/Admin/uparrow.png" id="uparrow"/>
    </button>

    <script src="js/scrolltop.js"></script>
</footer>
<!--FOOTER ENDS HERE-->

    </form>
</body>
</html>
