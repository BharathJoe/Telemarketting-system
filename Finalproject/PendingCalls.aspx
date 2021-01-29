<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingCalls.aspx.cs" Inherits="Calls.PendingCalls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending Calls</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aa_htmlTable" style="background-color: #dad302;">
            <h2 class="aa_h2">PENDING CALLS</h2>
            <table style="box-shadow: 0px 0px 29px black;">
                <thead>
                    <tr>
                        <th>S.NO</th>
                        <th>FIRST_NAME</th>
                        <th>LAST_NAME</th>
                        <th>COMPANY</th>
                        <th>PHONE</th>
                        <th>EMAIL</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server">

                    </asp:PlaceHolder>
                </tbody>
            </table>
            <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" &lt;--   Back " OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
