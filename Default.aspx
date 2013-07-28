<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to our Web store</h1>
        <asp:Menu ID="Menu1" runat="server" BackColor="#999966" DynamicHorizontalOffset="2" Font-Names="Pristina" Font-Size="XX-Large" ForeColor="#663300" Height="33px" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="10px" Width="1144px" BorderColor="#99FF33" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Orientation="Horizontal" RenderingMode="Table">
            <DynamicHoverStyle BackColor="#6600CC" ForeColor="#00CC00" Font-Names="AR BERKLEY" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#CC3300" BorderColor="#0000CC" BorderWidth="2px" />
            <DynamicSelectedStyle BackColor="#003300" />
            <Items>
                <asp:MenuItem NavigateUrl="~/About.aspx" Text="About" Value="About"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Products.aspx" Text="Προϊόντα" Value="products"></asp:MenuItem>
                <asp:MenuItem Text="Επιδείξεις μόδας" Value="fashion"></asp:MenuItem>
                <asp:MenuItem Text="Επικοινωνία" Value="Contact"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#CC3300" ForeColor="#CC0099" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#CC6600" />
        </asp:Menu>
        <h1>&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/fatisi-furs-slide-header-1.jpg" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <h1>&nbsp;</h1>
        <p>
            &nbsp;</p>
        <p>
            <asp:Login ID="Login1" runat="server" CreateUserUrl="~/Account/Login.aspx">
            </asp:Login>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Account/Login.aspx">Register</asp:HyperLink>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </p>
        <p>&nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="Submit" Width="69px" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </p>
    </form>
    h php ksekinaei edw
        <?php
         echo("hello");
         $searchtype = $_POST['searchtype'];
        $searchterm = $_POST['searchterm']; 
        @ $db = new mysqli('localhost' , ' ', ' ', 'FurProducts');
        
        ?>
  <?php
function writeName()
{
echo "Kai Jim Refsnes";
}
      ?>
</body>
</html>
