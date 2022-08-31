using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        

        string CorsiAttivi = ltlCorsiAttivi.Text;
        string AccettazioneCorsi = ltlAccettazioneCorsi.Text;
        string StoricoCorsi = ltlStoricoCorsi.Text;


        //variabili corsi
        string DataCreazione;
        string Titolo;
        string Tipo;
        string Descrizione;
        string DataPartenza;
        string StatusCorsi;
        string DataStatus;
        int costo;
        // avatar corso serve un gestore img
        string TipoImmagini;


        


    }

    //per ogni corso attivo e in corso per docente verranno visualizzati in automatico

}