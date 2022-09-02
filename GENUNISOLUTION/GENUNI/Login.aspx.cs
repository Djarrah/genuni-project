using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInvia_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (string.IsNullOrEmpty(txtMail.Text) || string.IsNullOrEmpty(txtPassword.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Attenzione: compilare tutti i campi!')", true);
            return;
        }

        // occhio alla pass, è criptata!! se volete fare delle prove inserendo qualcosa a mano dal DB
        // togliete il CRYPTA a riga 29

        CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
        string email = txtMail.Text.Trim();
        string password = C.Crypta(txtPassword.Text.Trim());

        // se il login va a buon fine, reindirizzo alla pagina figlia "default.aspx
        // e mi salvo il tipoUtente nella session
        

        if (U.Login(email, password) == true)
        {
            int codiceUtente = U.RecuperaCodUtente();
            Session["TipoAttore"] = U.RecuperaTipoUtente(codiceUtente);
            Session["CodiceAttore"] = codiceUtente;
            Response.Redirect("GestioneLibri.aspx");


        }

        else
        {
            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

            if (E.Login(email, password) == true)
            {
                int codiceUtente = U.RecuperaCodUtente();
                Session["TipoAttore"] = U.RecuperaTipoUtente(codiceUtente); //D
                Session["CodiceAttore"] = codiceUtente; // id del docente
                Response.Redirect("GestioneLibri.aspx");
            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Password o email errati o autorizzazione all'accesso negata')", true);
            return;
        }
    }
}