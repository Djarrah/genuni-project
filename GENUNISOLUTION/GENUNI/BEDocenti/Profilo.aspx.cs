﻿using System;
using System.Data;
using System.Web.UI;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            // Se non vi è nessun elemento selezionato impedisco il proseguimento
            //if (string.IsNullOrEmpty(Session["CodiceEsterno"].ToString()))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Errore')", true);
            //    return;
            //}

            CaricaProfilo();

        }
    }
    protected void BtnAggiorna_Click(object sender, EventArgs e)
    {

        CaricaProfilo();

    }

    protected void CaricaProfilo()
    {
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        //E.CHIAVE = int.Parse(Session["CodiceEsterno"].ToString());
        int CHIAVE = 1;
        DataTable dt = E.SelectOne(CHIAVE);
        DataRow dr = dt.Rows[0];
        string tipo = dt.Rows[0]["TipoImg"].ToString();

        //string prova = dt.Rows[0]["Avatar"].ToString();
        //byte[] provaarray = (byte[])dt.Rows[0]["Avatar"];

        byte[] arr1 = dr.Field<byte[]>("Avatar");
        //byte[] arr1 = (byte[])dt.Rows[0]["Avatar"];
        if (arr1 != null)
        {
            string base64String1 = Convert.ToBase64String(arr1, 0, arr1.Length);
            string Src = "data:image/"+tipo+";base64," + base64String1;
            lit.Text = "<img style='width:200px' src='" + Src + "' />";
        }



        lblUser.Text = dt.Rows[0]["Usr"].ToString();
        lblRagSoc.Text = dt.Rows[0]["Ragione_Sociale"].ToString();
        lblCognome.Text = dt.Rows[0]["Cognome"].ToString();
        lblNome.Text = dt.Rows[0]["Nome"].ToString();
        lblDataNascita.Text = (dt.Rows[0]["Data_Nascita"].ToString()).Substring(0,10);
        lblIva.Text = dt.Rows[0]["Piva"].ToString();
        lblCF.Text = dt.Rows[0]["CF"].ToString();
        lblIndirizzo.Text = dt.Rows[0]["Indirizzo"].ToString();
        lblCap.Text = dt.Rows[0]["Cap"].ToString();
        lblCitta.Text = dt.Rows[0]["Citta"].ToString();
        lblProvincia.Text = dt.Rows[0]["Provincia"].ToString();
        lblNazionalita.Text = dt.Rows[0]["Nazionalita"].ToString();




        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();
        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE2 = 1;

        DataTable dt2 = C.SelectOne(CHIAVE2);

        lblSkills.Text = dt2.Rows[0]["Skills"].ToString();
        
    }

    protected void BtnCV_Click(object sender, EventArgs e)
    {
        Response.Redirect("CV.aspx");
    }
}
