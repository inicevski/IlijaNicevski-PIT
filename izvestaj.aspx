<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="Domaci.izvestaj" %>
<%@ PreviousPageType VirtualPath="~/prijava.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Izveštaj</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Izveštaj</h1>
           
            <asp:Label ID="lbl_izv" runat="server"/>
            <br />
            <br />

            <asp:Button Text="Forma za prijavu" ID="nazad" runat="server" onclick="btn_nazad"/>
        </div>
    </form>
</body>
</html>
