﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="CronistoriaDocenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%--label per nome e cognome--%>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>

        <%-- foto profilo --%>
        <asp:Image ID="Image1" runat="server" />

        <%-- cv --%>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>

        <%-- skills --%>
        <asp:Literal ID="Literal3" runat="server"></asp:Literal>

        <%-- corsi precedenti con classe --%>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>

