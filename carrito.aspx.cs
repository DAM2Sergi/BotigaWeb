using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BotigaWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> carret1 = new List<string>();


            carret1=(List<string>)Session["Carret"];

            Image1.ImageUrl = carret1[1];
            nom.InnerText = carret1[0];
            preu.InnerText = carret1[2];

            
        }
    }
}