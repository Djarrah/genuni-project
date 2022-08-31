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
        CaricaGrigliaCreazione();
        CaricaGrigliaAssegnazione();

    }

    protected void gridCreazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridCreazioneCorsi.SelectedRow;
        Session["ChiaveCreazione"] = gridCreazioneCorsi.SelectedDataKey[0].ToString();
        btnModifica.Enabled = true;

    }
    protected void gridAssegnazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridAssegnazioneCorsi.SelectedRow;
        Session["ChiaveAssegnazione"] = gridAssegnazioneCorsi.SelectedDataKey[0].ToString();
        btnAssegna.Enabled = true;

    }
    protected void btnAggiornaCreazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaCreazione();

    }
    protected void btnAggiornaAssegnazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaAssegnazione();

    }


    protected void CaricaGrigliaCreazione()
    {
        //Da aggiornare con effettiva classe e metodo
        CORSI C = new CORSI();
        gridCreazioneCorsi.DataSource = C.SelectAll();
        gridCreazioneCorsi.DataBind();
    }
    protected void CaricaGrigliaAssegnazione()
    {
        //Da aggiornare con effettiva classe e metodo
        CORSI C = new CORSI();
        gridAssegnazioneCorsi.DataSource = C.SelectAll();
        gridAssegnazioneCorsi.DataBind();
    }
}