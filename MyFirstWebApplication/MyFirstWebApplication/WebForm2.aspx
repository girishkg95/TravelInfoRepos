<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyFirstWebApplication.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <br />
            <br />
            Show WebForm1<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Navigate</asp:HyperLink>
            <br />
            <br />
            <br />
            Show WebForm3<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm3.aspx">Navigate</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="~/Images/Gardens.jpg" Width="919px" />
            <br />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="237px" SelectionMode="Multiple" Width="148px">
                <asp:ListItem>Banana milk shake</asp:ListItem>
                <asp:ListItem>Vanila milk shake</asp:ListItem>
                <asp:ListItem>Butter fruit</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="126px" />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
        </div>
    </form>
</body>
</html>
