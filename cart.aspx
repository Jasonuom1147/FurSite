<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" OnRowDataBound="RowDataBound" OnRowDeleting="RowDeleting" ShowFooter="True">
            <Columns>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/delete.png" ShowDeleteButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
                <asp:BoundField HeaderText="price" />
                <asp:BoundField DataField="SUBTOTAL" HeaderText="Subtotal" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" Width="58px" />
        <asp:Button ID="Button2" runat="server" Text="Finish" Width="113px" OnClick="Button2_Click2" />
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

