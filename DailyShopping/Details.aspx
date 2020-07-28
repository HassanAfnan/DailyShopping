<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="DailyShopping.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
     integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
     <link rel="stylesheet" type="text/css" href="css/productdetail.css" />
    <title>Details</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="reshader" style="background: url(images/wall.jpg);"> <!--ye alag se style lagaya he only for wallpaper-->
    <div class="detailoproduct">                                    <!--kyunke asp detect nhi karta css mein url-->
        <div class="leftportionpro">
            <div class="imgcontainers">
                <asp:Image ID="Image1" runat="server" />                
            </div>
            <div class="lowerleft">                
                <asp:Label ID="Label2" runat="server" class="namedet"></asp:Label>
                <asp:Label ID="Label1" runat="server" class="pricedet"></asp:Label>
            </div>
        </div>
        <div class="rightportionpro">
            <div class="wordcont">            
                <asp:Label ID="Label3" runat="server" class="descdet" Text="Description"></asp:Label>
            </div>
            <div class="middleright">                
                <asp:Label ID="Label4" runat="server" class="complete"></asp:Label>
            </div>
            <div class="lowerright">
                <div class="lowerleftside">
                    <p class="quan">Quantity</p>
                    <div class="conjusted">
                        <button class="btn-primary dec" onclick="decrement()">-</button>
                        <p class="textwhat">1</p>
                        <button class="btn-primary inc" onclick="increment()">+</button>
                    </div> 
                </div>
                <div class="lowerrightside">
                    <button class="btn-success">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>
</div>
    <script type="text/javascript">
        let buttoninc = document.querySelector(".inc");
        let buttondec = document.querySelector(".dec");
        let txtval = document.querySelector(".textwhat");
        txtval.textContent=0;
        buttondec.disabled=true;
        
        increment = () => {
            event.preventDefault();
            buttondec.disabled=false;
            txtval.textContent=parseInt(txtval.textContent)+1;
        }

        decrement = () => {
            event.preventDefault();
            txtval.textContent=txtval.textContent-1;
            if(txtval.textContent === "0")
            {
                buttondec.disabled = true;
            }
            else
            {
                buttondec.disabled = false;
            }
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </form>
</body>
</html>
