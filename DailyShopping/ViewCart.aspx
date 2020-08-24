<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="DailyShopping.ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="View Cart" onClick="Button1_Click"/>
            <asp:DataList ID="d1" runat="server">
                <HeaderTemplate>
                    <table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <img src="<%#Eval("image") %>" width="100" height="100"/>

                        </td>
                        <td>
                            <%#Eval("name") %>
                        </td>
                        <td>
                            <%#Eval("description") %>
                        </td>
                        <td>
                            <%#Eval("price") %>
                        </td>
                        <td>
                            <%#Eval("quantity") %>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
