﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoCorsi.aspx.cs" Inherits="BEContabilita_PoPup_InfoCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="lit" runat="server"></asp:Literal>
            <asp:GridView ID="grd" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
