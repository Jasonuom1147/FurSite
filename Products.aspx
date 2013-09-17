<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="SubPages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3>Products</h3>
 <style type="text/css">
        .productItem
        {
            width: 140px;
            float: left;
            padding: 5px;
            margin: 5px;
            text-align: center;
        }
        .groupSeparator
        {
            border-top: 1px dotted Gray;
            height: 1px;
            clear: both;
        }
        .itemSeparator
        {
            height: 180px;
            width: 1px;
            border-left: 1px dotted Gray;
            margin-top: 5px;
            margin-bottom: 5px;
            float: left;
        }
    </style>
 
    <asp:ListView runat="server" ID="listView" GroupItemCount="3">
        <LayoutTemplate>
            <div style="width: 500px;">
                <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
            </div>
        </LayoutTemplate>
        <GroupTemplate>
            <div style="clear: both;">
                <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
            </div>
        </GroupTemplate>
        <ItemTemplate>
            <div class="productItem">
                <div>
                <li><img src="Photos/<%#Eval("Id")%>.jpg" /><br /><%#Eval("Name")%></li>
                </div>
                <div>
                    <b>
                        <%# Eval("Name") %></b></div>
                <div>
                    Price: $<%# Eval("Price") %></div>
                <div><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to cart" /></div>
            </div>
        </ItemTemplate>
        <ItemSeparatorTemplate>
            <div class="itemSeparator">
            </div>
        </ItemSeparatorTemplate>
        <GroupSeparatorTemplate>
            <div class="groupSeparator">
            </div>
        </GroupSeparatorTemplate>
        <EmptyDataTemplate>
        </EmptyDataTemplate>
    </asp:ListView>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       
</asp:Content>

