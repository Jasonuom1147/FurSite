<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="AdminPages_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: 20px" Text="Welcome to the administrators page"></asp:Label>
        <style type="text/css">
            .auto-style37
            {
                width: 79px;
            }
            .auto-style38
            {
                width: 293px;
            }
            .auto-style39
            {
                width: 79px;
                height: 20px;
            }
            .auto-style40
            {
                width: 293px;
                height: 20px;
            }
            .auto-style41
            {
                height: 20px;
            }
            .auto-style42
            {
                width: 79px;
                height: 22px;
            }
            .auto-style43
            {
                width: 293px;
                height: 22px;
            }
            .auto-style44
            {
                height: 22px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="insProdHead" runat="server" style="text-align: justify" Text="Label"></asp:Label>
    <br />
    <table class="auto-style29">
        <tr>
            <td class="auto-style37">
                <asp:Label ID="IdProd" runat="server" Text="ProductId:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="ProductIdfl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">
                <asp:Label ID="prodName" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style43">
                <asp:TextBox ID="Namefl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style42">
                <asp:Label ID="LengthLb" runat="server" Text="Length:"></asp:Label>
            </td>
            <td class="auto-style43">
                <asp:TextBox ID="Lengthfl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style37">
                <asp:Label ID="Shoulderlb" runat="server" Text="Shoulder:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="Shoulderfl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">
                <asp:Label ID="sleeveslb" runat="server" Text="Sleeves:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="Sleevesfl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">
                <asp:Label ID="Pricelb" runat="server" Text="Price:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="Pricefl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Label ID="Datelb" runat="server" Text="Date:"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="Datefl" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td class="auto-style41"></td>
        </tr>
        <tr>
            <td class="auto-style37">
                <asp:Label ID="Quantitylb" runat="server" Text="Available Quantity:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="Quantityfl" runat="server" Width="63px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">
                <asp:Button ID="Submitimport" runat="server" Height="29px" OnClick="Submitimport_Click" Text="Button" Width="67px" />
            &nbsp;<asp:Label ID="Confirm_success" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#006600" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
            <asp:BoundField DataField="shoulder" HeaderText="shoulder" SortExpression="shoulder" />
            <asp:BoundField DataField="sleeves" HeaderText="sleeves" SortExpression="sleeves" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

