<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignCalls.aspx.cs" Inherits="Calls.AssignCalls" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Calls</title>
    <link href="style.css" rel="stylesheet" />
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
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .button1 {
            background-color: white;
            color: black;
            border: 2px solid orange;
        }

            .button1:hover {
                background-color: orange;
                color: white;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aa_htmlTable" style="background-color: orange;">
            <h2 class="aa_h2">ASSIGN CALLS</h2>

            <div style="text-align: center; background: white; box-shadow: 0px 0px 29px black; margin: auto; border: 1px solid #dedede; padding: 1rem; width: 30%; height: 33em;">

                &nbsp;<br />
                <br />
&nbsp;&nbsp;
                <asp:TextBox align="center" placeholder="Enter the First Name" ID="firstnameTxBx" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstnameTxBx" ErrorMessage="Please enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:TextBox placeholder="Enter the Last Name" ID="lastnameTxBx" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastnameTxBx" ErrorMessage="Please enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:TextBox placeholder="Enter the Company Name" ID="companyTxBx" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="companyTxBx" ErrorMessage="Please enter Company Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:TextBox placeholder="Enter the mobile No" ID="phoneTxBx" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phoneTxBx" ErrorMessage="Please enter mobile  Number" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:TextBox placeholder="Enter the email ID" ID="mailTxBx" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mailTxBx" ErrorMessage="Please enter email ID" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br>
                <asp:DropDownList ID="empDropdown" runat="server" Height="30px" Width="200px" >
                </asp:DropDownList>
&nbsp;<br />
                <br>
                &nbsp;<asp:Button ID="submitTxBx" CssClass="button button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />

            </div>
            <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" OnClick="Button1_Click1" />
        </div>
    </form>
</body>
</html>
