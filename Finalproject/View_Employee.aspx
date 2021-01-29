<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Employee.aspx.cs" Inherits="Finalproject.View_Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
         .form1{
            margin:0;
            padding:0;
            padding-left:45em;
            font-family:sans-serif;
           
        }
        .EMP h2{
            float:left;
            font-size:23px;
            border-bottom:6px solid #4caf50;
            margin-bottom:50px;
            padding:13px 2px;
            color:lightgreen;
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
    </style>
<body>
    <form id="form1" runat="server">
    <div class ="EMP" style="background-image: url('background.png')"><br /><br /><br />
        <div style="text-align: center; background: black; box-shadow: 0px 0px 29px black; margin: auto; margin-top:5px; border: 1px solid #dedede; padding: 1rem; width: 25%; height: 25em;">
       <center><h2> &nbsp;VIEW EMPLOYEE DETAILS&nbsp;&nbsp;</h2></center>
     
        <asp:Label ID="LB_Empid" runat="server" Text="EMPLOYEE ID" ForeColor="White"></asp:Label><br /><br />

        <asp:TextBox ID="TB_EmpID" runat="server" Height="31px" style="margin-right: 18px; margin-top: 0px" Width="352px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_EmpID" ErrorMessage="ENTER THE EMPLOYEE ID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

      &nbsp; <asp:Button ID="BT_View" runat="server" Text="VIEW" OnClick="BT_View_Click" BackColor="#009900" BorderColor="#006600" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Width="307px" Height="46px" />
           &nbsp; <br /><br />
&nbsp;<asp:Button ID="BT_Viewall" runat="server" Text="VIEW ALL" OnClick="BT_Viewall_Click" BackColor="#009900" BorderColor="#006600" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Width="303px" Height="42px" />
            &nbsp;<br /><br />
&nbsp;<asp:Button ID="BT_Clear" runat="server" Text="CLEAR" OnClick="BT_Clear_Click" BackColor="#009900" BorderColor="#006600" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Width="303px" Height="41px" />
        <br />
        <br />
        
        <br /><br /> <asp:GridView ID="Emp_GView" runat="server">
        </asp:GridView>
        <br /><br />
        <br /><br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
         <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
