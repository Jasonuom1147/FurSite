<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style39
        {
            text-align: justify;
            height: 20px;
            width: 82px;
        }
        .auto-style41
        {
            width: 141px;
            font-weight: 700;
        }
        .auto-style42
        {
            width: 141px;
            height: 20px;
        }
        .auto-style43
        {
            width: 82px;
        }
        .auto-style45
        {
            width: 99px;
            height: 20px;
        }
        .auto-style46
        {
            width: 99px;
        }
        .auto-style48
        {
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style29" border="1">
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">North America</span></td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"><span style="color: rgb(251, 255, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">CARRIER</span></td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">TRANSITION TIME</span></td>
            <td class="auto-style39"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">COST</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/shipping/elta.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">14-16 DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">30$&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/shipping/dhl.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">4-6&nbsp;DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">65$</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/shipping/ems.gif" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">1-3 DAYS&nbsp;</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">140$</span></td>
        </tr>
    </table>
    <table class="auto-style29" border="1">
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;" class="auto-style48">Russia</span></td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"><span style="color: rgb(251, 255, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">CARRIER</span></td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">TRANSITION TIME</span></td>
            <td class="auto-style39"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">COST</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/shipping/elta.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">7-9 DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">20$&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/shipping/dhl.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">3-5&nbsp;DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">55$</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/shipping/ems.gif" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">1-2 DAYS&nbsp;</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">155$</span></td>
        </tr>
    </table>
     <table class="auto-style29" border="1">
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;" class="auto-style48">Europe</span></td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"><span style="color: rgb(251, 255, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">CARRIER</span></td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">TRANSITION TIME</span></td>
            <td class="auto-style39"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">COST</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/shipping/elta.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">7-9 DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">20$&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/shipping/dhl.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">3-5&nbsp;DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">55$</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/shipping/ems.gif" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">1-3</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">115$</span></td>
        </tr> DAYS&nbsp;
    </table>
      <table class="auto-style29" border="1">
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;" class="auto-style48">U.A.E./ASIA</span></td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"><span style="color: rgb(251, 255, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">CARRIER</span></td>
            <td class="auto-style42"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">TRANSITION TIME</span></td>
            <td class="auto-style39"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">COST</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/shipping/elta.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">12-31 DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">70$&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/shipping/dhl.jpg" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">8-10&nbsp;DAYS</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">85$</span></td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/shipping/ems.gif" />
            </td>
            <td class="auto-style41"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">1-3 DAYS&nbsp;</span></td>
            <td class="auto-style43"><span style="color: rgb(251, 251, 251); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0); display: inline !important; float: none;">160$</span></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

