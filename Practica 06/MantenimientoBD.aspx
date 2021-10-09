<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoBD.aspx.cs" Inherits="basededatos.MantenimientoBD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFCC00" Text="Mantenimiento de CLIENTES"></asp:Label>
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Código"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" Display="None" ErrorMessage="Debe ingresar el código del cliente" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Width="250px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" Display="None" ErrorMessage="Debe ingresar el nombre del cliente" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDireccion" runat="server" Width="250px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="Debe ingresar la dirección del cliente" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Teléfono"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="E-Mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" Display="None" ErrorMessage="El correo ingresado no es válido" ForeColor="#CC0000" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Edad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" Width="50px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" Display="None" ErrorMessage="La edad ingresada debe estar en el rango de 18 a 100" ForeColor="#CC0000" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGrabar" runat="server" Font-Bold="True" Text="Grabar" OnClick="btnGrabar_Click" />
        </p>
        <p>
            <asp:Label ID="lblResult" runat="server" Width="340px" ForeColor="Black"></asp:Label>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
    </form>
</body>
</html>
