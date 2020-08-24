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
        <div class="sidebar-header">
            <img src="images/Admin/admin.png" class="admin"/>
            <h4>ADMIN</h4>
        </div>


        <div class="sidebar-menu">
            <a href="AdminHome.aspx" class="menu-items">Dashboard</a>
            <a href="AdminSeeAllProducts.aspx" class="menu-items active">Items Manager</a>
            <a href="AdminInsertCategory.aspx" class="menu-items">Category</a>
            <a href="AdminInsertProduct.aspx" class="menu-items">Product</a>
            <a href="AdminLogin.aspx">Admin Register</a>
        </div>


        


        <div class="sidebar-footer">
            <img src="images/Admin/mainicon.png" class="mainicon"/>
        </div>
    </section>
<!--SIDEBAR ENDS-->


    <section class="header">
        <div style="flex:0.178; background-color: burlywood;"></div>

        <div class="db">
            <h1>Items Manager</h1>
        </div>

        <div class="prof">
            
            <div class="header-block-nav">
                <div class="notifications-list">
                    <img id="bell" src="images/Admin/Bell.png"/>
                    <p class="counter">3</p>
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







                </div>

                <div class="profile-drop">
                    <input type="button" class="dropbtn" onclick="myFunction()"/>
                    <%--<button onclick="myFunction()" class="dropbtn"></button>--%>
                    <script type="text/javascript" src="js/dropdown.js"></script>
                    
                         <div class="facesec">
                             <div class="face">
                                    <img id="face" src="images/Admin/admin.png"/>
                                </div> 
                             </div>
                    

                    <div class="namesec">
                        <asp:Label ID="Label1" runat="server" class="name"></asp:Label>
                    </div>

                    <div class="btnsec">
                        <img id="dropdown" src="images/Admin/dropdown-arrow.png"/>
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
            </div>
        </div>
    </section>


    
    <section class="mainbody">
        <h2>Select Category</h2>

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryName" class="categories"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Cid" DataValueField="Cid" AutoPostBack="True" class="categories1"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DailyShopping %>" SelectCommand="SELECT [Cid] FROM [Category] WHERE ([CategoryName] = @CategoryName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CategoryName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>



        <div class="container">
            <asp:Button ID="Button1" runat="server" Text="SEARCH" class="butn"/>
           </div>



        <div class="tablediv">
            <div class="items-table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Pid" DataSourceID="SqlDataSource3" ForeColor="Black" class="table">
                    <Columns>
                        
                        <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" />
                        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Operation"/>
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


    <footer class="footer">
        <div style="flex:0.178;">

        </div>
        <div style="flex:0.822; text-align:center;">
            <p>Copyrights © DailyShopping, created in 2020</p>

            <div class="btnScrollToTop clickTop">
                <img src="images/Admin/uparrow.png" id="uparrow"/>
                
            </div>

            <script src="js/scrolltop.js"></script>
        </div>  
    </footer>


    </form>
</body>
</html>
