<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shoulder.aspx.cs" Inherits="shoulder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Shoulder size"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find It!" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([shoulder] = @shoulder)">
            <SelectParameters>
                <asp:QueryStringParameter Name="shoulder" QueryStringField="shoulderSearch" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
