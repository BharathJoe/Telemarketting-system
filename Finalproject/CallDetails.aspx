<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallDetails.aspx.cs" Inherits="Calls.CallDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Call Details</title>
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
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}
.button2:hover {
  background-color: white; 
  color: black; 
}

.button2 {
  background-color: #008CBA;
  color: white;
  border: 2px solid #008CBA;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aa_htmlTable" style="background-color: #008cba;">
            <h2 class="aa_h2">CALL DETAILS</h2>
            <table style="border: none; width: fit-content; box-shadow: 0px 0px 29px black;">
                <thead style="border: none;">
                    <tr style="border: none;">
                        <td style="border: none;">
                            
                                <asp:Button class="button button2" runat="server" Text="Completed Calls" ID="completedCallTbn" OnClick="Unnamed1_Click" />
                                <asp:Button class="button button2" runat="server" Text="Pending Calls" ID="pendingCallBtn" OnClick="pendingCallBtn_Click" />
                                <asp:Button class="button button2" runat="server" Text="View Calls" ID="viewCallsBtn" OnClick="viewCallsBtn_Click" />
                            </td>
                    </tr>
                    <tr>
                        <td style="border: none;">
                            <asp:Button class="button button2" runat="server" Text="Transfer Calls" ID="transferCallBtn" OnClick="transferCallBtn_Click" />
                            <asp:Button class="button button2" runat="server" Text="CallBack Request" ID="callBackRequestBtn" OnClick="callBackRequestBtn_Click" />
                        </td>
                    </tr>
                </thead>
            </table>
            <asp:Button CssClass="backButton" ID="Button1" runat="server" Text=" <--   Back to Dashboard" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

