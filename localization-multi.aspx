<%@ Page Language="C#" AutoEventWireup="true" CodeFile="localization-multi.aspx.cs" Inherits="localization_multi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblabtme" runat="server" Text="Hellow this is a fur website"></asp:Label>
        <br />
        <asp:Label ID="lbldesc" runat="server" Text="Every Furs"></asp:Label>
        <br />
        <asp:Label ID="lblheader" runat="server" Text="Welcome have a nic day"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="English" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Russian" />
&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Greek" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="TRanslate to greek" />
        <br />
    
    </div>
    </form>
</body>
</html>
