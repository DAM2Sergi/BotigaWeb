using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BotigaWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {


            System.Web.UI.HtmlControls.HtmlGenericControl[] prodcarret = new System.Web.UI.HtmlControls.HtmlGenericControl[] { p0, p1, p2, p3 };
            String[] carret = new String[4];

            for (int i = 0; i < carret.Length; i++)
            {
                carret[i] = (string)GetSession()["prod" + i];
                String prod = carret[i];

                foreach (Control c in prodcarret[i].Controls)
                {

                }
            }

        }

        private HttpSessionState GetSession()
        {
            return Session;
        }
    }
}