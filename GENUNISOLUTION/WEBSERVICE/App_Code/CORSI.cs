﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CORSI
/// </summary>
public class CORSI
{

    #region Membri

    public int CHIAVE_CORSO;
    public int CHIAVE_TEST;
    public int CHIAVE_STUDENTE;
    public int COD_UTENTE;
    public string TITOLO;
    public string TIPO;
    public string DESCRIZIONE;
    public string STATUS_CORSI;
    public int COSTO;
    public string AVATAR_CORSO;
    public string TIPO_IMG;

    #endregion Membri

    #region Metodi 

    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Insert");
       
        cmd.Parameters.AddWithValue("@TITOLO", TITOLO);
        

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiSPselectparam(cmd);
    }
    public void Update()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Update");
        cmd.Parameters.AddWithValue("@COD_UTENTE", COD_UTENTE);
        cmd.Parameters.AddWithValue("@TITOLO", TITOLO);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        cmd.Parameters.AddWithValue("@AVATAR_CORSO", AVATAR_CORSO);
        cmd.Parameters.AddWithValue("@TIPO_IMG", TIPO_IMG);


        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiSPselectparam(cmd);
    }
    public DataTable Select()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectAll");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }

    public DataTable SelectOne()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectOne");
        cmd.Parameters.AddWithValue("@COD_CORSO",CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }
    public DataTable Info()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Info");
        cmd.Parameters.AddWithValue("@COD_CORSO", CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }
    public DataTable SelectNonAssegnati()
    {
        

        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand("CORSI_SelectNonAssegnati");
        DataTable dt = new DataTable();

        cmd.Parameters.AddWithValue("@Chiave", CHIAVE_CORSO);
        cmd.Parameters.AddWithValue("@Titolo", TITOLO);
        cmd.Parameters.AddWithValue("@Cod_Utente", COD_UTENTE);
       

        return c.EseguiSPselectparam(cmd);
        
    }

    public DataTable TestRisultato()
    {
        SqlCommand cmd = new SqlCommand("CORSI_TEST_RISULTATO");
        cmd.Parameters.AddWithValue("@Chiave_Corso", CHIAVE_CORSO);
        cmd.Parameters.AddWithValue("@Chiave_Test", CHIAVE_TEST);
        cmd.Parameters.AddWithValue("@Chiave_Studente", CHIAVE_STUDENTE);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }

    #endregion Metodi






}