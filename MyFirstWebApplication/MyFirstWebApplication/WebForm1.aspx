<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstWebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 559px">
            Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            Address:
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br />
            <br />
            Country:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="193px">
            </asp:DropDownList>
            <asp:Label ID="lblCountry" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Select Date:<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Hobbies:<asp:CheckBoxList ID="chkHobbies" runat="server" Height="45px" Width="196px">
            </asp:CheckBoxList>
            <asp:Label ID="lblHobbies" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="144px" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
