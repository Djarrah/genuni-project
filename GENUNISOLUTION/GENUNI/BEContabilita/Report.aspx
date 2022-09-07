﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Gestione report</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">

                    <%-- SCELTA REPORT --%>
                    <asp:CheckBox ID="chkDocenti" runat="server" Text="Docenti" GroupName="Report" Checked="True" />
                    <asp:CheckBox ID="chkStudenti" runat="server" Text="Studenti" GroupName="Report" />
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <%-- DATA INIZIO REPORT --%>
                    <asp:Label ID="lblDataInizio" runat="server" Text="Dal"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- DATA FINE REPORT --%>
                    <asp:Label ID="lblDataFine" runat="server" Text="Al"></asp:Label>
                    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- BUTTON CONFERMA --%>
                    <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                    <hr />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI O STUDENTI --%>
                    <asp:Literal ID="ltlDocenti" runat="server" Text=""></asp:Literal>
                    <asp:GridView ID="grigliaReportDocenti" CssClass="griglia" runat="server"></asp:GridView>
                    <asp:Label ID="lblTot1" runat="server" CssClass="lblReport" Text="Totale spese: "></asp:Label>
                    <asp:Label ID="lblTotDoc" runat="server" CssClass="lblReport" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Literal ID="ltlStudenti" runat="server" Text=""></asp:Literal>
                    <asp:GridView ID="grigliaReportStudenti" CssClass="griglia" Visible="false" runat="server"></asp:GridView>
                    <asp:Label ID="lblTot2" runat="server" CssClass="lblReport" Text="Totale ricavi: "></asp:Label>
                    <asp:Label ID="lblTotStud" runat="server" CssClass="lblReport" Text=""></asp:Label>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="ltlUtili" runat="server" Text=""></asp:Literal>
                    <asp:Label ID="lblUtili" runat="server" CssClass="lblReport" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

