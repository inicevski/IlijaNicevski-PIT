using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class izvestaj : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
                lbl_izv.Text=PreviousPage.ime + " (" + PreviousPage.email + "), rođen " +  PreviousPage.god + ". godine, učenik "
                    + PreviousPage.raz + ". razreda, uspešno je popunio obrazac za prijavu";
        }

        protected void btn_nazad(object sender, EventArgs e)
        {
            Response.Redirect("~/prijava.aspx");
        }
    }
}