<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Finalproject.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
         .form1{
            margin:0;
            padding:0;
            padding-left:29em;
            font-family:sans-serif;
           
        }
        .login h2{
            float:left;
            font-size:40px;
            border-bottom:6px solid #4caf50;
            margin-bottom:50px;
            padding:13px 2px;
            color:lightgreen;
        }

        
        .textbox i {
            width:26px;
            float:left;
            text-align:center;

        }
        .backButton {
    background-color: #162916;
    border: none;
    color: white;
    padding: 15px 32px;
    border-radius: 5px;
    text-align: center;
    font-size: 16px;
    margin-top: 1em;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    text-align:center;
}

        
      

        
    </style>
<body>
    <form id="form1" runat="server" style="background-image: url('background.png')">
     <div class ="login" style="background-image: url('background.png')"><br /><br /><br /><br /><br /><br />
         
          <div style="text-align: center; background: black; box-shadow: 0px 0px 29px black; margin: auto; margin-top:5px; border: 1px solid #dedede; padding: 1rem; width: 20%; height: 29em;">
       <center><h2> ADMIN LOGIN</h2></center>
     
         
         <asp:Label ID="Label1" runat="server" ForeColor="White" Text="USERNAME"></asp:Label>
         <br /><br>
         
       <center>
         <asp:TextBox ID="TB_UName" CssClass="textbox" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#999999" Height="41px" Width="271px"></asp:TextBox><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ENTER THE USERNAME" ControlToValidate="TB_UName" ForeColor="Red"></asp:RequiredFieldValidator>
           </center><br />
              <asp:Label ID="Label2" runat="server" ForeColor="White" Text="PASSWORD"></asp:Label>
         <br />
         <br />  <center>
         <asp:TextBox ID="TB_Pwd" CssClass="textbox" runat="server" Height="41px" TextMode="Password" Width="269px"></asp:TextBox>
         <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ENTER THE PASSWORD" ControlToValidate="TB_Pwd" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         
       
        <asp:Label ID="rsmsg" runat="server" CssClass="box" Visible="False"></asp:Label><br />
                  <br />
                  
         <div class="box">
        
             <asp:Button ID="BT_Login" runat="server" Text="LOGIN" OnClick="BT_Login_Click1" Height="35px" Width="284px" BackColor="#009900" BorderColor="#003300" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" />
        
        </div>
        </center>   
    </div>
        </div>
        <br />
        <asp:Button ID="Back_Button" Cssclass ="backButton" runat="server" OnClick="Back_Button_Click" Text="Back" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
