<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSeeAllProducts.aspx.cs" Inherits="DailyShopping.AdminSeeAllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>ITEMS MANAGER</title>        
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="css/itemsmanager-sidebar.css"/>
        <link rel="stylesheet" type="text/css" href="css/itemsmanager-main.css"/>
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
        <section class="mainbody">
        <h2>Select Category</h2>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryName"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Cid" DataValueField="Cid" AutoPostBack="True"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" SelectCommand="SELECT [Cid] FROM [Category] WHERE ([CategoryName] = @CategoryName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="search" />

        <div class="tablediv">
            <div class="items-table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Pid" DataSourceID="SqlDataSource3" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @original_Pid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL))" InsertCommand="INSERT INTO [Product] ([name], [description], [price], [quantity], [image], [category]) VALUES (@name, @description, @price, @quantity, @image, @category)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product] WHERE ([category] = @category)" UpdateCommand="UPDATE [Product] SET [name] = @name, [description] = @description, [price] = @price, [quantity] = @quantity, [image] = @image, [category] = @category WHERE [Pid] = @original_Pid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Pid" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_price" Type="Int32" />
                        <asp:Parameter Name="original_quantity" Type="Int32" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_category" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="category" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="category" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="category" Type="Int32" />
                        <asp:Parameter Name="original_Pid" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_price" Type="Int32" />
                        <asp:Parameter Name="original_quantity" Type="Int32" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_category" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>
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
