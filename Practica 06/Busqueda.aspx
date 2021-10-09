<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="basededatos.Busqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="Lime" Text="Búsqueda de CLIENTES"></asp:Label>
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Código"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" Font-Bold="True" OnClick="btnBuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpiar" runat="server" Font-Bold="True" OnClick="btnLimpiar_Click" Text="Limpiar" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Width="250px" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDireccion" runat="server" Width="250px" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Teléfono"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="E-Mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Width="250px" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Edad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" Width="50px" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
&nbsp;<asp:Button ID="btnMostrar" runat="server" Font-Bold="True" OnClick="btnMostrar_Click" Text="Mostrar Todos los Clientes" Width="350px" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>
        <p>
            <asp:Label ID="lblResult" runat="server" Width="340px" ForeColor="Black"></asp:Label>
        </p>
    </form>
</body>
</html>