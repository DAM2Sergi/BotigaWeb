using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BotigaWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String path = Server.MapPath(".") + "\\productes\\Prod1.txt";

            StreamReader reader = new StreamReader(path);

            String liniatxt = reader.ReadToEnd();

            String[] producte_info = liniatxt.Split(';');
            String nom = producte_info[0];
            String desc = producte_info[1];
            String preu = producte_info[2];

            titol1.InnerText = nom;
            desc1.InnerText = desc;
            preu1.InnerText = preu + " €";


        }

    }
}