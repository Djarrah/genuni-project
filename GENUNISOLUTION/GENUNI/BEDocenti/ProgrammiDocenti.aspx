﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="ProgrammiDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

     <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupInserisciMateriale').click(function () {

                var url = 'POPUP/preparazioneMateriale/InserimentoProgrammi.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Inserisci materiale ',
                    resizable: false,
                    width: 400,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

     <script type="text/javascript">

         $(document).ready(function () {

             $('.popupModificaMateriale').click(function () {

                 var url = 'POPUP/preparazioneMateriale/ModificaProgrammi.aspx';
                 var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                 inserisci.dialog({
                     modal: true,
                     title: 'Modifica materiale',
                     resizable: false,
                     width: 400,
                     height: 400,
                     overlay: { opacity: 0.9, background: 'black' },

                     open: function (type, data) { $(this).parent().appendTo('form'); }
                 });

                 return false;
             });
         });
     </script>

    <style>
        * {
            margin: 0 auto;
        }

        #storico {
            width: 700px;
            margin-top: 100px;
        }

        .tabella {
            width: 700px;
        }

        .MaterieScroll {
            overflow: auto;
            max-height: 250px;
            width: 720px;
        }

        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <%-- header--%>
    <table style="width: 1200px; text-align:center;margin-top:100px;" >
        <tr>
            <td><asp:Button class="popupInserisciMateriale" ID="btnInserisciMateriale" runat="server" Text="Inserisci materiale" />
            </td>
            <td><asp:Button class="popupModificaMateriale" ID="btnModificaMateriale" runat="server" visible="false" Text="Modifica materiale " /></td>
            <td><b runat="server" id="InserireCorso"></b></td>
            <td><asp:Button ID="BtnElimina" runat="server" Text="Elimina" visible="false" OnClick="BtnElimina_Click" /></td>
            <td><asp:Button ID="BtnAggiorna" runat="server" Text="Aggiorna" OnClick="BtnAggiorna_Click" /></td>
            
        </tr>
    </table>

    <asp:GridView width="1200px" class="grigliaProgrammi" ID="grigliaProgrammi" runat="server" AutoGenerateColumns="False" DataKeyNames="Chiave,Cod_Materia" OnSelectedIndexChanged="grigliaProgrammi_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Chiave" HeaderText="Chiave" InsertVisible="False" ReadOnly="True" SortExpression="Chiave" Visible="False" />
            <asp:BoundField DataField="Cod_Materia" HeaderText="Cod_Materia" SortExpression="Cod_Materia" Visible="False" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Indice" HeaderText="Indice" SortExpression="Indice" />
            <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
            <asp:BoundField DataField="Materiale" HeaderText="Materiale" SortExpression="Materiale" />
            <asp:BoundField DataField="Titolo_Materiale" HeaderText="Titolo_Materiale" SortExpression="Titolo_Materiale" />
            <asp:BoundField DataField="Tipo_Materiale" HeaderText="Tipo_Materiale" SortExpression="Tipo_Materiale" />
            <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" SortExpression="Descrizione" />
            <asp:CommandField ButtonType="Button" SelectText="Seleziona" ShowSelectButton="True" />
        </Columns>
     </asp:GridView>



    <%--footer--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 1200px; text-align:center;margin-bottom:100px;">
        <tr>
            <td><small>Viene mostrato tutto il programma</small></td>
        </tr>
        <tr>
            <td><asp:Button ID="BtnIndietro" runat="server" Text="Indietro" OnClick="BtnIndietro_Click" /></td>
            
        </tr>
    </table>

</asp:Content>
