<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="callcentermanagement.EmployeeDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 939px;
        }
        .auto-style2 {
            width: 100%;
            height: 601px;
        }
        .auto-style3 {
            height: 151px;
        }
        .auto-style4 {
            height: 294px;
        }
        .auto-style5 {
            height: 176px;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            height: 151px;
            width: 670px;
        }
        .auto-style9 {
            height: 294px;
            width: 670px;
        }
        .auto-style10 {
            height: 176px;
            width: 670px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pngtree-dark-gray-wooden-planks-panel-background-image_310040.jpg" Height="981px">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="EMPLOYEE DASHBOARD" Font-Size="XX-Large" ForeColor="Lime"></asp:Label>
                        </strong>&nbsp;<br /> </td>
                    <td class="auto-style3">
                        <asp:Button ID="BT_logout" runat="server" OnClick="BT_logout_Click" Text="LOGOUT" Width="159px" BackColor="Black" BorderColor="#333333" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="CUSTOMER COUNT " Font-Size="X-Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="CUSLABEL" runat="server" CssClass="auto-style7" Text="MESSAGE1" Font-Size="X-Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        </strong></td>
                    <td class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style7" Font-Size="Medium" NavigateUrl="~/CustomerDetailsAdd.aspx">ADD</asp:HyperLink>
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style7" Font-Size="Medium" NavigateUrl="~/CustomerDetailsModify.aspx">MODIFY</asp:HyperLink>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style7" Font-Size="X-Large" NavigateUrl="~/CallDetails.aspx">CALL DETAILS</asp:HyperLink>
                        &nbsp;</strong></td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="White" NavigateUrl="~/Reports.aspx" Font-Bold="True" Font-Size="X-Large">REPORTS</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
