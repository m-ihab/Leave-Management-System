<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        // Authenticating the user

        // 1- Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";




        // 2- Create Sql Select statement string
        string strSelect = "SELECT * FROM Employee "
            + " WHERE Username = '" + txtUsername.Text + "' AND "
            + " Password = '" + txtPassword.Text + "'";

        // 3- Create Sql command
        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        // 4- Create Sql Data Reader
        SqlDataReader reader;

        // 5- Open the databse
        conn.Open();

        // 6- Execute Sql command
        reader = cmdSelect.ExecuteReader();

        // 7- Check reader
        if (reader.Read())
        {


            

            if (txtUsername.Text == "lolo2021")
                Response.Redirect("~/adminHome.aspx");
            else
                Response.Redirect("~/userHome.aspx");
        }

        else
            lblMsg.Text = "Invalid Username and/or Password, you may try again!!";

        // 8- Close the database
        conn.Close();


    }


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            height: 34px;
        }
        .style4
        {
            height: 34px;
        }
        .style5
        {
            width: 96px;
        }
        .style6
        {
            height: 34px;
            width: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Calibri" 
            Font-Size="X-Large" ForeColor="Black" 
            Text="Enter your Username and Password to login in:"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="Black" Text="Username:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="Black" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                </td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="btnLogin" runat="server" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="Black"  Text="Log In" onclick="btnLogin_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="lblMsg" runat="server" Font-Names="Calibri" 
                    Font-Size="X-Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
