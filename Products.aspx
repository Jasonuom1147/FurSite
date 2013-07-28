<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                length:
                <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                <br />
                shoulder:
                <asp:TextBox ID="shoulderTextBox" runat="server" Text='<%# Bind("shoulder") %>' />
                <br />
                sleeves:
                <asp:TextBox ID="sleevesTextBox" runat="server" Text='<%# Bind("sleeves") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                length:
                <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                <br />
                shoulder:
                <asp:TextBox ID="shoulderTextBox" runat="server" Text='<%# Bind("shoulder") %>' />
                <br />
                sleeves:
                <asp:TextBox ID="sleevesTextBox" runat="server" Text='<%# Bind("sleeves") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                length:
                <asp:Label ID="lengthLabel" runat="server" Text='<%# Bind("length") %>' />
                <br />
                shoulder:
                <asp:Label ID="shoulderLabel" runat="server" Text='<%# Bind("shoulder") %>' />
                <br />
                sleeves:
                <asp:Label ID="sleevesLabel" runat="server" Text='<%# Bind("sleeves") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([length] = @original_length) OR ([length] IS NULL AND @original_length IS NULL)) AND (([shoulder] = @original_shoulder) OR ([shoulder] IS NULL AND @original_shoulder IS NULL)) AND (([sleeves] = @original_sleeves) OR ([sleeves] IS NULL AND @original_sleeves IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" InsertCommand="INSERT INTO [products] ([Id], [Name], [length], [shoulder], [sleeves], [price], [date]) VALUES (@Id, @Name, @length, @shoulder, @sleeves, @price, @date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [length], [shoulder], [sleeves], [price], [date] FROM [products]" UpdateCommand="UPDATE [products] SET [Name] = @Name, [length] = @length, [shoulder] = @shoulder, [sleeves] = @sleeves, [price] = @price, [date] = @date WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([length] = @original_length) OR ([length] IS NULL AND @original_length IS NULL)) AND (([shoulder] = @original_shoulder) OR ([shoulder] IS NULL AND @original_shoulder IS NULL)) AND (([sleeves] = @original_sleeves) OR ([sleeves] IS NULL AND @original_sleeves IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_length" Type="Int32" />
                <asp:Parameter Name="original_shoulder" Type="Int32" />
                <asp:Parameter Name="original_sleeves" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_date" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="length" Type="Int32" />
                <asp:Parameter Name="shoulder" Type="Int32" />
                <asp:Parameter Name="sleeves" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="length" Type="Int32" />
                <asp:Parameter Name="shoulder" Type="Int32" />
                <asp:Parameter Name="sleeves" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_length" Type="Int32" />
                <asp:Parameter Name="original_shoulder" Type="Int32" />
                <asp:Parameter Name="original_sleeves" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_date" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
