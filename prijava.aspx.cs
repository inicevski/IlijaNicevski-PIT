using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Domaci
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime
        {
            get { return tb_ime_prez.Text; }
        }
        public string email
        {
            get { return tb_email.Text; }
        }
        public string god
        {
            get { return tb_god.Text; }
        }
        public string raz
        {
            get { return razred.Text; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Click(object sender, EventArgs e)
        {
            if (ime_prez_val.IsValid &&
                email_val.IsValid &&
                email_format_val.IsValid &&
                potvr_val.IsValid &&
                potvr_comp_val.IsValid &&
                god_val.IsValid &&
                god_opseg_val.IsValid &&
                raz_val.IsValid)
            {
                btn.PostBackUrl = "~/izvestaj.aspx";
                lbl.Text = String.Empty;
            }

            else
                lbl.Text = "Nisi se uspešno prijavio";
        }
    }
}