<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 19%;
        }
        .auto-style5 {
            width: 144px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/signup.aspx" Target="F5">Sign Up</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/signin.aspx" Target="_top">Sign In</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
