﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="CronistoriaDocenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <br /><br /><br /><br />
        <%-- corsi precedenti con classe --%>
        <asp:GridView ID="gridCorsi" runat="server"></asp:GridView>
    </div>
</asp:Content>
