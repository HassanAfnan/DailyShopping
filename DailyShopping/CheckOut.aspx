<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="DailyShopping.CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css/checkout.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wholepage">
            <div class="headerfinal">
            <p> Check Out</p>

            </div>  
            <div class="lastgames1">
            Name: <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
            Email: <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
            Phone: <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
            Address<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Pay Now" class="btn btn-outline-warning" OnClick="Button1_Click"/>
            </div>
        </div>
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
</body>
</html>
