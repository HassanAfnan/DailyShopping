<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DailyShopping.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>PRODUCT</title>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="css/AdminLogin.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet"/>
        <link rel="icon" href="images/Admin/admin.png"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="h1">ADMIN PANEL</h1>

    
    <div class="login">
        <div class="tab">
            <div class="sign-up">
                <div class="toggle a"><p style="position:absolute; text-align:center; width: 100%; margin-top: 20px; margin-bottom: 20px;">REGISTER</p></div>
            </div>
            
        </div>



        <!--SIGNUP FORM-->
        <div class="regform">
            <div class="textb1">
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" required></asp:TextBox>            
            <div class="placeholder1">E-mail</div>
        </div>


            <div class="textb1">
                <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" required></asp:TextBox>            
            <div class="placeholder1">Username</div>
        </div>


        <div class="textb1">
            <asp:TextBox ID="TextBox3" runat="server" autocomplete="off" required TextMode="Password"></asp:TextBox>            
            <div class="placeholder1">Password</div>
        </div>

        
            <asp:Button ID="Button1" class="regbtn fas fa-arrow-right" runat="server" Text="ENTER" OnClick="Button1_Click"/>
       <br />
            <br />
            <a href="index.aspx" class="link">Go To DailyShopping</a>
           
        </div>


    </div>



<!--SIGNUP FORM SCRIPT-->
<script>
    var fields1 = document.querySelectorAll(".textb1 input");

    var btn1 = document.querySelector(".regbtn");
    function check(){
      if(fields1[0].value != "" && fields1[1].value != "" && fields1[2].value!="")
        btn1.disabled = false;
      else
        btn1.disabled = true;  
    }

    fields1[0].addEventListener("keyup",check);
    fields1[1].addEventListener("keyup",check);
    fields1[2].addEventListener("keyup",check);

    document.querySelector(".show-password1").addEventListener("click", function(){
        if(this.classList[2] == "fa-eye-slash"){
            this.classList.remove("fa-eye-slash");
            this.classList.add("fa-eye");
            fields1[1].type="text";
        }
        else{
            this.classList.remove("fa-eye");
            this.classList.add("fa-eye-slash");
            fields1[1].type="password";
        }
    });
</script>





    </form>
</body>
</html>
