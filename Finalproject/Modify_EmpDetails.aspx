<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify_EmpDetails.aspx.cs" Inherits="Finalproject.Modify_EmpDetails" %>

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
            font-size:22px;
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
}

    </style>
<body>
    <form id="form1" runat="server">
    <div class=" EMP" style="background-image: url('background.png')">
 
         <div style="text-align: center; background: black; box-shadow: 0px 0px 29px black; margin: auto; margin-top:5px; border: 1px solid #dedede; padding: 1rem; width: 25%; height:45em;">
        
    
             <center> <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADD EMPLOYEE DETAILS</h2></center><br />
            
             <asp:Label ID="Label1" runat="server" ForeColor="White" Text="EMPLOYEE ID"></asp:Label>
      <br />
        <asp:TextBox ID="TB_EmpID" runat="server" Height="26px" Width="302px"></asp:TextBox>
         <br />
        <asp:Label ID="LB_Empname" runat="server" Text="EMPLOYEE NAME" ForeColor="White"></asp:Label>
     <br />
        <asp:TextBox ID="TB_Empname" runat="server" Height="26px" Width="304px"></asp:TextBox>
        <br />
        
      

        <asp:Label ID="LB_Dob" runat="server" Text="DOB" ForeColor="White"></asp:Label>
       <br />
                <asp:TextBox ID="TB_DOB" runat="server" Height="23px" Width="305px"></asp:TextBox>
        
        <br />
        
        <asp:Label ID="LB_Des" runat="server" Text="DESIGNATION" ForeColor="White"></asp:Label>
     <br />
        <asp:TextBox ID="TB_designation" runat="server" Height="24px" Width="299px"></asp:TextBox>
        <br />
       
        
        <asp:Label ID="LB_Hours" runat="server" Text="WORKING HOURS" ForeColor="White"></asp:Label>
    <br />
        <asp:TextBox ID="TB_Whours" runat="server" Height="26px" Width="307px"></asp:TextBox>
        <br />
        
        
        <asp:Label ID="LB_Sal" runat="server" Text="SALARY" ForeColor="White"></asp:Label>
   <br />
        <asp:TextBox ID="TB_sal" runat="server" Height="27px" Width="301px"></asp:TextBox>
        <br />
        
        
        <asp:Label ID="LB_Address" runat="server" Text="ADDRESS" ForeColor="White"></asp:Label>
       <br />
        <asp:TextBox ID="TB_address" runat="server" Height="39px" Width="301px"></asp:TextBox>
        <br />
        
        
        <asp:Label ID="LB_Eid" runat="server" Text="E-MAIL ID" ForeColor="White"></asp:Label>
        <br />
        <asp:TextBox ID="TB_email" runat="server" Height="35px" Width="302px"></asp:TextBox>
        <br />
        
        
        <asp:Label ID="LB_Mobno" runat="server" Text="MOBILE NO" ForeColor="White"></asp:Label>
        <br />
        <asp:TextBox ID="TB_mobile" runat="server" Height="31px" Width="306px"></asp:TextBox>
        <br />
        
        <br />
        <asp:Label ID="rsmsg" runat="server" Visible="False"></asp:Label>
        <br />
       <br />
        
        <asp:Button ID="BT_update" runat="server" Height="43px" OnClick="BT_update_Click" Text="UPDATE" Width="142px" BackColor="#009900" BorderColor="#006600" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BT_Clear" runat="server" Height="42px" Text="CLEAR" Width="133px" BackColor="#009900" BorderColor="#006600" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" OnClick="BT_Clear_Click" />
      
       
    
    </div>
         <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" />
         <br />
         <br />
         <br />
        <br />
        <br />
    </form>
</body>
</html>
