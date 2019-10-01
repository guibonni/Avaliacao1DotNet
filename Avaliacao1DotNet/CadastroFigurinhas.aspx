<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroFigurinhas.aspx.cs" Inherits="Avaliacao1DotNet.CadastroFigurinhas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="formTipo" runat="server">
        <div>
            <h1>Cadastro de Figurinhas</h1>
            <p><asp:Label ID="LblMsg" runat="server" Text=""></asp:Label></p>
            <p>Descrição:</p>
            <p><asp:TextBox ID="TxtDescricao" runat="server" Width="400px"></asp:TextBox></p>
            <p>Ano:</p>
            <p><asp:TextBox ID="TxtAno" runat="server" Width="400px">0</asp:TextBox></p>
            <p><asp:GridView ID="GVFigurinha" runat="server" CellPadding="3" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView></p>
            <p>
                <asp:Button ID="BtnVoltar" runat="server" Text="Voltar" OnClick="BtnVoltar_Click" />
                &nbsp;
                <asp:Button ID="BtnSalvar" runat="server" Text="Salvar" OnClick="BtnSalvar_Click" />
            </p>
        </div>
    </form>
</body>
</html>
