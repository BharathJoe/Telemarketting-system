<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetailsAdd.aspx.cs" Inherits="Telemarkating.CustomerDetailsAdd" %>

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
<body style="
    font-family: fantasy;
    text-align: -webkit-center;
    background: mediumseagreen;
    color: white;
">
    
    <form id="form1" runat="server">
       <div class="HeaderTable" style="
    position: fixed;
    left: 405px;
    font-size: 16px;
">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Customer Registration Form"></asp:Label>
        <br />
        <br />
        </div>
       <div class="label" style="
    position: fixed;
    left: 506px;
    top: 156px;
    font-size: 22px; width: 829px;">
           
        <asp:Label ID="Label2" runat="server" Text="Customer ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ID_TEXT" runat="server" Width="122px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ID_TEXT" ErrorMessage="*please enter a customer ID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
           <br />
           <div class="buttons" style="
    position: relative;
    left: -122px;
">
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Customer Name"></asp:Label>
               &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Name_TXT" runat="server" Width="122px" Position="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Occupation"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="JOB_TXT" runat="server" Width="123px"></asp:TextBox>
        <br />
        <br />
               </div>
           <div class="buttons1" style="
    position: relative;
    left: 8px;
">
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Email_TXT" runat="server" Width="123px"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email_TXT" ErrorMessage="*please enter a valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
               </div>
  <div class="buttons3" style="
    position: relative;
    left: 16px;
">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Phone NO"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
     
        <asp:TextBox ID="PHONE_TXT" runat="server" Width="120px" style="margin-left: 0px"></asp:TextBox>
           <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PHONE_TXT" ErrorMessage="*please enter a valid phone number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="6666666666"></asp:RangeValidator>
        <br />
        <br />
          
               </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
           <div class="newbutton" style="
    position: fixed;
    left: 646px;
">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ADD_BTN" runat="server" OnClick="ADD_BTN_Click" Text="Add" Width="103px" Font-Size="X-Large" Height="38px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="View_BTN" runat="server" OnClick="View_BTN_Click" Text="View " Width="103px" Font-Size="X-Large" Height="30px" />
        <br />
        <br />
               </div>
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <div class="result" style="
    position: fixed;
    left: 660px;
    top: 514px;
">
        <asp:Label ID="Result_LBL" runat="server"></asp:Label>
        <br />
        <br />
           </div>
<div style="
    position: fixed;
    left: 618px;
    top: 553px;
">
        <asp:GridView ID="DETAIL_GV" runat="server">
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
         <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
