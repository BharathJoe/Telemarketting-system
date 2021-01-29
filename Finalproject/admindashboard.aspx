<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="callcentermanagement.admindashboard" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 973px;
        }
        .auto-style2 {
            width: 100%;
            height: 964px;
        }
        .auto-style3 {
            height: 77px;
        }
        .auto-style6 {
            height: 203px;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            height: 77px;
            width: 475px;
        }
        .auto-style9 {
            height: 10px;
            width: 475px;
        }
        .auto-style11 {
            height: 203px;
            width: 475px;
        }
        .auto-style13 {
            height: 244px;
            width: 475px;
        }
        .auto-style14 {
            height: 244px;
        }
        .auto-style15 {
            height: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Panel ID="bgpanel" runat="server" BackImageUrl="~/pngtree-dark-gray-wooden-planks-panel-background-image_310040.jpg" Height="972px">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="ADMIN DASHBOARD" Font-Size="XX-Large" ForeColor="Lime"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BT_LOGOUT" runat="server" OnClick="BT_LOGOUT_Click" Text="LOGOUT" BackColor="Black" BorderColor="#333333" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="HR  COUNT" Font-Size="X-Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Label ID="HRLABEL" runat="server" CssClass="auto-style7" Text="MESSAGE" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                        <strong>
                        &nbsp;&nbsp;<br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        <br />
                        </strong></td>
                    <td class="auto-style15"><strong>&nbsp;<br />
                        <br />
                        &nbsp;<asp:HyperLink ID="addhr" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/AddHRdetails.aspx">Add HR Details</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="modhr" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/ModifyHRDetail.aspx">Modify HR Details</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                    <td class="auto-style15">
                        <strong>&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style7" Font-Size="X-Large" Text="EMPLOYEE COUNT"></asp:Label>
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                        <asp:Label ID="EMPLABEL" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="XX-Large" Text="MESSAGE 1"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style7" Font-Size="Large" NavigateUrl="~/View_Employee.aspx">View</asp:HyperLink>
                        <br />
                        <br />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style7" Font-Size="X-Large" NavigateUrl="~/CallDetails.aspx">Call Details</asp:HyperLink>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style7" Text="COMPLETED CALLS" Font-Size="Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="CALL1" runat="server" CssClass="auto-style7" Text="MESSAGE 1" Font-Size="X-Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style7" Text="TRANSFER CALLS" Font-Size="Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="CALL3" runat="server" CssClass="auto-style7" Text="MESSAGE 3" Font-Size="X-Large"></asp:Label>
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
                        </strong>
                        </td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style7" Text="PENDING  CALLS" Font-Size="Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="CALL2" runat="server" CssClass="auto-style7" Text="MESSAGE 2" Font-Size="X-Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" CssClass="auto-style7" Text="CALL BACK REQUEST" Font-Size="Large"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="CALL4" runat="server" CssClass="auto-style7" Text="MESSAGE 4" Font-Size="X-Large"></asp:Label>
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
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
