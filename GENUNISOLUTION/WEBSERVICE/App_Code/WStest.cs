﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WStest
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WStest : System.Web.Services.WebService
{

    public WStest()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        dt = t.SelectAll();
        dt.TableName = "Test";
        return dt;
    }
    
    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        t.CHIAVE = CHIAVE;
        dt = t.SelectAll();
        dt.TableName = "Test";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int SOGLIA, string DATA_TEST, string ORA_TEST)
    {
        TEST t = new TEST();

        t.COD_CORSO = COD_CORSO;
        t.SOGLIA = SOGLIA;
        t.DATA_TEST = DATA_TEST;
        t.ORA_TEST = ORA_TEST;

        t.Insert();
    }

    [WebMethod]
    public void Update (int CHIAVE, int COD_CORSO, int SOGLIA, string DATA_TEST, string ORA_TEST)
    {
        TEST t = new TEST();

        t.CHIAVE = CHIAVE;
        t.COD_CORSO = COD_CORSO;
        t.SOGLIA = SOGLIA;
        t.DATA_TEST = DATA_TEST;
        t.ORA_TEST = ORA_TEST;

        t.Update();
    }

    public void Delete(int CHIAVE)
    {
        TEST t = new TEST();

        t.CHIAVE = CHIAVE;
        
        t.Delete();
    }
}