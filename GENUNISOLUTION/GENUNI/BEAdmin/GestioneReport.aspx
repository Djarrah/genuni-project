<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneReport.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Gestione Report</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <%-- SCELTA REPORT --%>
                    <asp:CheckBox ID="chkDocenti" CssClass="chk" Style="margin-left: 214px;" runat="server" Text="Docenti" GroupName="Report" styleChecked="True" AutoPostBack="True" OnCheckedChanged="chkDocenti_CheckedChanged" />
                    <asp:CheckBox ID="chkStudenti" CssClass="chk" runat="server" Text="Studenti" GroupName="Report" Checked="True" AutoPostBack="True" OnCheckedChanged="chkStudenti_CheckedChanged" />
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <%-- DATA INIZIO REPORT --%>
                    <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Dal"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- DATA FINE REPORT --%>
                    <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Al"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- BUTTON CONFERMA --%>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                    <hr />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI--%>
                    <asp:Literal ID="ltlDocenti" runat="server" Text=""></asp:Literal>
                    <asp:GridView ID="grigliaReportDocenti" runat="server"></asp:GridView>
                    <asp:Label ID="lblTot1" runat="server" CssClass="lbl" Text="Totale spese: "></asp:Label>
                    <asp:Label ID="lblTotDoc" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI--%>
                    <asp:Literal ID="ltlStudenti" runat="server" Text=""></asp:Literal>
                    <asp:GridView ID="grigliaReportStudenti" Visible="false" runat="server"></asp:GridView>
                    <asp:Label ID="lblTot2" runat="server" CssClass="lbl" Text="Totale ricavi: "></asp:Label>
                    <asp:Label ID="lblTotStud" runat="server" CssClass="lbl" Text=""></asp:Label>
                    <%--<asp:Literal ID="ltlUtili" runat="server" Text=""></asp:Literal>
                    <asp:Label ID="lblUtili" runat="server" CssClass="lbl" Text=""></asp:Label>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <%--UTILI--%>
                    <asp:Literal ID="ltlUtili" runat="server" Text=""></asp:Literal>
                    <asp:Label ID="lblUtili" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

