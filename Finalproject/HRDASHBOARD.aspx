<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRDASHBOARD.aspx.cs" Inherits="callcentermanagement.HRDASHBOARD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 823px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 153px;
            width: 585px;
        }
        .auto-style4 {
            height: 301px;
            width: 585px;
        }
        .auto-style5 {
            height: 292px;
            width: 585px;
        }
        .auto-style6 {
            height: 126px;
            width: 585px;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/pngtree-dark-gray-wooden-planks-panel-background-image_310040.jpg" Height="928px">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="HR DASHBOARD" Font-Size="XX-Large" ForeColor="Lime"></asp:Label>
                        <br />
                        </strong></td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BT_logout" runat="server" OnClick="BT_logout_Click" Text="LOGOUT" BackColor="Black" BorderColor="#333333" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Font-Size="X-Large" Text="EMPLOYEE  COUNT"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="EMPLABEL" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="XX-Large" Text="MESSAGE"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                    <td class="auto-style3"><strong>
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/View_Employee.aspx">View</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink9" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/Modify_EmpDetails.aspx">Modify Employee Details</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink10" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/Add_EmpDetails.aspx">Add Employee Details</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style7" Font-Size="X-Large" NavigateUrl="~/CallDetails.aspx">CALL DETAILS</asp:HyperLink>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style7" Text="COMPLETED CALLS" Font-Size="Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="CALL1" runat="server" CssClass="auto-style7" Text="MESSAGE 1" Font-Size="X-Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style7" Text="TRANSFER CALLS"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="CALL3" runat="server" CssClass="auto-style7" Text="MESSAGE 3" Font-Size="X-Large"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                    <td class="auto-style4"><strong>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style7" Text="PENDING  CALLS"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="CALL2" runat="server" CssClass="auto-style7" Font-Size="X-Large" Text="MESSAGE 2"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" CssClass="auto-style7" Text="CALL BACK REQUEST"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="CALL4" runat="server" CssClass="auto-style7" Font-Size="X-Large" Text="MESSAGE 4"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                    <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style7" Font-Size="X-Large" NavigateUrl="~/Reports.aspx">REPORT</asp:HyperLink>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="White" NavigateUrl="~/AssignCalls.aspx" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large">ASSIGN CALLS</asp:HyperLink>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink12" runat="server" ForeColor="White" NavigateUrl="~/feedback.aspx" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large">VIEW CUSTOMER FEEDBACK</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
