<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="DailyShopping.ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
        
<table class="table">
  <thead class="thead-light">
    <tr>      
      <th scope="col">Product Name</th>
      <th scope="col">Product Price</th>
      <th scope="col">Product Quantity</th>        
      <th scope="col">Product Image</th>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
    <tr>      
      <td><%#Eval("ProductName")%></td>
       <td><%#Eval("price")%></td>
       <td>
                <%#Eval("qty")%>
       </td>        
        <td><img src='<%#Eval("image")%>' width="50" height="50"/></td>
        <td><%#Eval("Total")%></td>
    </tr>    
                              </ItemTemplate>
           </asp:Repeater>

    
  </tbody>

</table>
        
        <div class="finalcss">
            <div class="upfinal">
        <asp:Button ID="Button1" runat="server" class="btn btn-outline-warning" Text="Empty Cart" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" class="btn btn-outline-warning" Text="Grand Total" OnClick="Button2_Click"/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            
            </div>
        <div class="ugo">
        <asp:Button ID="Button3" runat="server" class="btn btn-outline-success " Text="Check Out" OnClick="Button3_Click"/>
            </div>
        </form>
    


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
</body>
</html>
