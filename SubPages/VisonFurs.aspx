<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisonFurs.aspx.cs" Inherits="SubPages_Vison_Furs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
                <asp:BoundField DataField="shoulder" HeaderText="shoulder" SortExpression="shoulder" />
                <asp:BoundField DataField="sleeves" HeaderText="sleeves" SortExpression="sleeves" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [length], [shoulder], [sleeves], [price], [date], [image] FROM [products] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Vison" Name="Name" QueryStringField="Vison" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
        <asp:ImageMap ID="ImageMap1" runat="server" OnClick="ImageMap1_Click">
        </asp:ImageMap>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
