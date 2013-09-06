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
        <h1>
        <asp:Button ID="Search" runat="server" Text="Search" Width="79px" OnClick="Button1_Click" />
                    </h1>
        <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="128px"></asp:TextBox>
                        </p>
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
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="271px" Width="443px" AllowPaging="True" AllowSorting="True" Font-Size="Medium">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" DataFormatString="{0:c}" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" DataFormatString="{0:c}" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="infoproduct.aspx?ID={0}" DataTextField="Name" HeaderText="Name" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Id], [length], [shoulder], [sleeves], [price], [date] FROM [products] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="Name" QueryStringField="Search" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
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
