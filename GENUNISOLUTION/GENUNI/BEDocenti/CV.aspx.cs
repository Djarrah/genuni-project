﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient(); ;
        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE = 1;

        DataTable dt2 = C.SelectOne(CHIAVE);

        
        DataRow dr2 = dt2.Rows[0];
        byte[] arr2 = dr2.Field<byte[]>("Cv");
        if (arr2 != null)
        {
            string base64String2 = Convert.ToBase64String(arr2, 0, arr2.Length);
            string Src = "data:image/jpg;base64," + base64String2;
            Lit2.Text = "<img style='width:1000px' src='" + Src + "' />";

        }


    }
}