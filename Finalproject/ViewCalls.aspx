<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCalls.aspx.cs" Inherits="Calls.ViewCalls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Calls</title>
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
        .simpleCss{
                padding: 10px;
    margin: 1em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aa_htmlTable" style="background-color: #dad302;">
            <h2 class="aa_h2">VIEW CALLS</h2>

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:DropDownList BackColor="Teal" ForeColor="White" CssClass="simpleCss" ID="idDropdown" runat="server"></asp:DropDownList>
            <asp:DropDownList BackColor="Teal" ForeColor="White" CssClass="simpleCss" ID="statusDropDown" runat="server">
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Completed</asp:ListItem>
                <asp:ListItem>Transfer</asp:ListItem>
                <asp:ListItem>CallBack</asp:ListItem>
            </asp:DropDownList>
            <asp:Button BackColor="Teal" ForeColor="White" CssClass="simpleCss" ID="submitBtn" runat="server" Text="SUBMIT" OnClick="Button1_Click" />

            <br />
            <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" &lt;--   Back " OnClick="Button1_Click1" />
        </div>
    </form>
</body>
</html>
