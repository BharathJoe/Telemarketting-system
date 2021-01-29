<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetailsModify.aspx.cs" Inherits="Telemarkating.CustomerDetailsModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>

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
}
    </style>
<body style="background-color: lightseagreen;">
    <form id="form1" runat="server">
    
    <div class="header" style="font-size:X-Large;position: relative;left: 151px;top: 16px;color: white;font-size: 30px;font-family: fantasy;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Customer Details Modification Form"></asp:Label>
        <br />
        <br />
        </div>
     
     <div class="content" style="
    position: relative;
    left: 551px;
    top: 33px;
    font-size: 22px;
    color: white;
    font-family: fantasy;
    height: 330px;
    width: 739px;
    
    ">
        <asp:Label ID="CUS_ID" runat="server" Text="Customer ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ID_TEXT" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ID_TEXT" ErrorMessage="*please enter a customer id" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Customer Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="Name_TXT" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Occupation"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="JOB_TXT" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Email_TXT" runat="server" ></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email_TXT" ErrorMessage="*please enter a valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
&nbsp;<br />
        <asp:Label ID="Label6" runat="server" Text="Phone NO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="PHONE_TXT" runat="server"></asp:TextBox>
         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PHONE_TXT" ErrorMessage="*please enter a valid Phone number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="6666666666"></asp:RangeValidator>
        <br />
        <br />
         
         <div class="button" style="
    position: fixed;
    left: 528px;
">
             <asp:Button ID="Button3" runat="server" Font-Size="X-Large" Height="45px" OnClick="Button3_Click" Text="Delete" Width="132px" />
&nbsp;&nbsp;
        <asp:Button ID="MDFY_BTN" runat="server" OnClick="MDFY_BTN_Click" Text="Modify" Width="132px" Font-Size="X-Large" Height="45px" style="margin-right: 0px" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View" Width="132px" Font-Size="X-Large" Height="45px" />
        <br />
        <br />
             </div>
            </div>
       
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<div class="return" style="
    color: white;
    font-family: fantasy;
    position: fixed;
    left: 574px;
    top: 449px;
">
               <asp:Label ID="Result_LBL" runat="server"></asp:Label>
      
          <br />
     </div>
               <div class="report" style="
    position: fixed;
    top: 511px;
    color: white;
    left: 544px;
    font-size: 19px;
    
">
        <asp:GridView ID="DETAIL_GV" runat="server" Visible="False" >
        </asp:GridView>
    
    </div>
         <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" />
    </form>
</body>
</html>
