<%@Page Language="C#" AutoEventWireup="false" 
CodeBehind="RegularExpression.aspx.cs" 
Inherits="blog.listings.RegularExpression"%>
<html>
<head>
<title>Expresiones Regulares</title>
</head>
<body>
<form id="form1" runat="server">
<table>
<tr>
<td>Fecha (dd/mm/yyyy)</td>
<td><asp:TextBox ID="txtDate" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="reqvtxtDate" runat="server" 
ErrorMessage="* Obligatorio" ControlToValidate="txtDate">
</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rexpvtxtDate" runat="server" 
ErrorMessage="* Invalida" 
ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d" ControlToValidate="txtDate"></asp:RegularExpressionValidator>
</td>
 </tr>
 <tr>
<td>Teclea un URL</td>
 <td><asp:TextBox ID="txtUrl" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="reqvtxtUrl" runat="server" 
ErrorMessage="* Obligatorio" ControlToValidate="txtUrl">
</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rexpvtxtUrl" runat="server" 
ErrorMessage="* Invalida" 
ValidationExpression="http://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ControlToValidate="txtUrl"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>Teclea un código postal</td>
<td><asp:TextBox ID="txtCp" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="reqvtxtCp" runat="server" 
ErrorMessage="*Obligatorio" ControlToValidate="txtCp">
</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rexptxtCp" runat="server" 
ErrorMessage="* Invalido" ValidationExpression="\d{5}(-\d{4})?" 
ControlToValidate="txtCp">
</asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>Correo Electrónico</td>
<td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="reqvtxtEmail" runat="server" 
ControlToValidate="txtEmail" ErrorMessage="* Obligatorio">
</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rexptxtEmail" runat="server" 
ErrorMessage="* Invalido" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
</asp:RegularExpressionValidator>
</td>
</tr>
</table>
<p><asp:Button ID="btnSubmit" runat="server" Text="Enviar"></asp:Button></p>
<asp:Label ID="lbMsg" runat="server"></asp:Label>
</form>
</body>
</html>