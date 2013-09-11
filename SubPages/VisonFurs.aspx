<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisonFurs.aspx.cs" Inherits="SubPages_Vison_Furs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />length:
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                    <br />shoulder:
                    <asp:Label ID="shoulderLabel" runat="server" Text='<%# Eval("shoulder") %>' />
                    <br />sleeves:
                    <asp:Label ID="sleevesLabel" runat="server" Text='<%# Eval("sleeves") %>' />
                    <br />price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                    <br />image:
                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    <br />quantity:
                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />length:
                    <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                    <br />shoulder:
                    <asp:TextBox ID="shoulderTextBox" runat="server" Text='<%# Bind("shoulder") %>' />
                    <br />sleeves:
                    <asp:TextBox ID="sleevesTextBox" runat="server" Text='<%# Bind("sleeves") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />image:
                    <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                    <br />quantity:
                    <asp:TextBox ID="quantityTextBox" runat="server" Text='<%# Bind("quantity") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />length:
                    <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                    <br />shoulder:
                    <asp:TextBox ID="shoulderTextBox" runat="server" Text='<%# Bind("shoulder") %>' />
                    <br />sleeves:
                    <asp:TextBox ID="sleevesTextBox" runat="server" Text='<%# Bind("sleeves") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />image:
                    <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                    <br />quantity:
                    <asp:TextBox ID="quantityTextBox" runat="server" Text='<%# Bind("quantity") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />length:
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                    <br />shoulder:
                    <asp:Label ID="shoulderLabel" runat="server" Text='<%# Eval("shoulder") %>' />
                    <br />sleeves:
                    <asp:Label ID="sleevesLabel" runat="server" Text='<%# Eval("sleeves") %>' />
                    <br />price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                    <br />image:
                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    <br />quantity:
                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />length:
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                    <br />shoulder:
                    <asp:Label ID="shoulderLabel" runat="server" Text='<%# Eval("shoulder") %>' />
                    <br />sleeves:
                    <asp:Label ID="sleevesLabel" runat="server" Text='<%# Eval("sleeves") %>' />
                    <br />price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                    <br />image:
                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    <br />quantity:
                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Vison" Name="Name" QueryStringField="Vison" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
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
