﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WSpreiscrizione
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WSpreiscrizione : System.Web.Services.WebService
{

    public WSpreiscrizione()
    {
        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        dt = p.SelectAll();
        dt.TableName = "Preiscrizione";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        p.CHIAVE = CHIAVE;
        dt = p.SelectOne();
        dt.TableName = "Classi";
        return dt;
    }
    
    [WebMethod]
    public void Insert(int COD_CORSO, string EMAIL, string NEWSLETTER)
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        p.COD_CORSO = COD_CORSO;
        p.EMAIL = EMAIL;
        p.NEWSLETTER = NEWSLETTER;

        p.Insert();
    }

}