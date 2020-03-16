<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="MyFirstWebApplication.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registration Form:<br />
            <br />
            Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is mandatory"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name should not contain digits or numeric data" ValidationExpression="[A-Z]*[a-z]*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Date of Birth:<asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDOB" ErrorMessage="The date of birth should be between 01.01.1990 and 12.31.2000" MaximumValue="31.12.2000" MinimumValue="01.01.1990" Type="Date"></asp:RangeValidator>
            <br />
            <br />
            Password:<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPWConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPWD" ControlToValidate="txtPWConfirm" ErrorMessage="Password is not confirmed"></asp:CompareValidator>
            <br />
            <br />
            <br />
            EmailID:<asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" ErrorMessage="EmailID is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="187px" />
        </div>
    </form>
</body>
</html>
