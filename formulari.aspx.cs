using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BotigaWeb
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void esborrar_Click(object sender, EventArgs e)
        {
            Text1.Value = "";
            Text2.Value = "";
            Text3.Value = "";
        }

        protected void confirmar_Click(object sender, EventArgs e)
        {
            if (Text1.Value == "")
            {

            }
            else
            {
                String DNI = Text1.Value;

                String path = Server.MapPath(".") + "/comandes/" + DNI + ".txt";
                StreamWriter writer = new StreamWriter(path);
            }




        }
    }
}
