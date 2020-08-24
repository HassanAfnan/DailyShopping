<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCategoryWise.aspx.cs" Inherits="DailyShopping.ShowCategoryWise" %>--%>

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
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <link rel="stylesheet" type="text/css" href="css/card.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
