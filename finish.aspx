<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="finish.aspx.cs" Inherits="finish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <i><b>Finished purchase</b></i></p>
    <p>
        Choose pay Method</p>
    <p>
        Total:
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-bottom: 0px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>CreditCar</asp:ListItem>
            <asp:ListItem>Post</asp:ListItem>
            <asp:ListItem>PayPal</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Finish Order" OnClick="Button1_Click" />
    </p>
</asp:Content>

