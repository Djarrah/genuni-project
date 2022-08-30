﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGriglia();
    }
    protected void gridUtentiTC_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridUtentiTC.SelectedRow;
        Session["chiave"] = gridUtentiTC.SelectedDataKey[0].ToString();
        btnAbilita.Enabled = true;

    }

    protected void CaricaGriglia()
    {
        //Da aggiornare con effettiva classe e metodo
        UTENTI U = new UTENTI();
        gridUtentiTC.DataSource = U.SelectTutorContabili();
        gridUtentiTC.DataBind();
    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        CaricaGriglia();

    }
}