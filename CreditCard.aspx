<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CreditCard.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<%@ Register Assembly="RadInput.Net2" Namespace="Telerik.WebControls" TagPrefix="radI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ultimate Credit Card Utility | Test Page</title>
    <style type="text/css">
        body
        {
            font-family:Arial, Sans-Serif; 	
            background: #000 url(images/pageBkgn.jpg) repeat-x 0 0;
            color:White;
        }
        #wrapper, #footer
        {
        	background: transparent url(images/innerBkgnd.png) no-repeat 0 0;
        	padding:10px;
        	margin:25px auto 0px auto;
        	width: 780px;
        	height: 400px;
        	text-align:center;
        }  
        #footer
        {
        	height:30px;
        	color:#777;
        	background: transparent;
        }
        #footer a
        {
            color:#999;	
        }
        .success, .fail
        {
        	display:block;
        	padding:5px;
        	margin:5px;
        	border:solid 1px darkgreen;
        	background-color: Green;
        	color:White;
        }
        .fail
        {
        	background-color: Red;
        	border:solid 1px darkred;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    &nbsp;<p style="text-align:left;">
    To test the credit card validation, please enter a credit card number in the textbox below. If you do 
    not want to use a real credit card number, you can use one of these fake numbers:    
    </p>
    <ul style="text-align:left;">
        <li><b>MasterCard:</b> <asp:Label runat="server" ID="lblMc"></asp:Label></li>
        <li><b>Visa:</b> <asp:Label runat="server" ID="lblVisa"></asp:Label></li>
        <li><b>Amex:</b> <asp:Label runat="server" ID="lblAmex"></asp:Label></li>
        <li><b>Discover:</b> <asp:Label runat="server" ID="lblDisc"></asp:Label></li>
    </ul>
    <p>
    <asp:Label runat="server" ID="lblCardText" AssociatedControlID="txtCard" Text="Card Number:" Font-Bold="true" />
       <radI:RadTextBox runat="server" ID="txtCard" Width="200px" EmptyMessage="Enter number">
            <FocusedStyle Font-Size="12px" />
            <EmptyMessageStyle Font-Size="12px" ForeColor="darkgray" />
            <HoveredStyle Font-Size="12px" />
            <EnabledStyle Font-Size="12px" />            
       </radI:RadTextBox>
    <asp:Button runat="server" ID="btnValidate" Text="Validate Number" 
            onclick="btnValidate_Click" />
    </p>
    <p>
        <asp:label runat="server" ID="lblMsg"></asp:label>
    </p>
    </div>
    <div id="footer">
    Created by Jason Tsoumenis</div>
    <!--Telerik RadAjax Settings-->
    <!--The following code ajaxifies the demo application. You can safely remove this code and the application
        will continue to work with normal PostBacks. For more information on RadAjax and other RadContorls, 
        visit http://www.telerik.com 
    -->
    <radA:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="AjaxLoadingPanel1">
        <AjaxSettings>
            <radA:AjaxSetting AjaxControlID="btnValidate">
                <UpdatedControls>
                    <radA:AjaxUpdatedControl ControlID="lblMsg" />
                </UpdatedControls>
            </radA:AjaxSetting>
        </AjaxSettings>
    </radA:RadAjaxManager>
    <radA:AjaxLoadingPanel ID="AjaxLoadingPanel1" runat="server" BackColor="white" Transparency="30" MinDisplayTime="400">
        <asp:Image ID="Image1" runat="server" AlternateText="Loading..." ImageUrl="~/images/loading4.gif" />
    </radA:AjaxLoadingPanel>
    </form>
</body>
</html>
