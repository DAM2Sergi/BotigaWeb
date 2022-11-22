using System;
using System.Collections;
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


        //Variables per a desar en sessions
        //#################################
        String nomcarret = null;
        String preucarret = null;
        String imatgecarret = null;
        String prodquantcarret = null;

        ArrayList productes = new ArrayList();


        protected void Page_Load(object sender, EventArgs e)
        {


            ComprovarCarpetaProd();

        }

        private void ComprovarCarpetaProd()
        {
            String path = Server.MapPath(".") + "\\productes\\";

            String[] productes = Directory.GetFiles(path, "Prod*.txt", SearchOption.AllDirectories);
            String[] img_productes = Directory.GetFiles(path, "Prod*.png", SearchOption.AllDirectories);

            if (productes.Length > 0)
            {
                MostrarCarpeta(productes, img_productes);
                msg.Text = "<h1>Tenim Aquestos Productes Actualmet</h1>";
            }
            else if(productes.Length == 0)
            {
                msg.Text = "<h1>No tenim productes ara mateix</h1>";
            }
        }

        private void MostrarCarpeta(string[] productes, string[] img_productes)
        {


            //millora fer un arrau de 2D

            System.Web.UI.HtmlControls.HtmlGenericControl[] prod = new System.Web.UI.HtmlControls.HtmlGenericControl[] { prod1, prod2, prod3, prod4 }; ;
            Image[] prodimg = new Image[] { img1, img2, img3, img4 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] prodtitols = new System.Web.UI.HtmlControls.HtmlGenericControl[] { H1, H2, H3, H4 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] prodpreu = new System.Web.UI.HtmlControls.HtmlGenericControl[] { p1, p2, p3, p4 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] proddesc = new System.Web.UI.HtmlControls.HtmlGenericControl[] { d1, d2, d3, d4 };


            for (int i =0;i<productes.Length;i++)
            {
                
                String path = productes[i];

                int cont = i+1;

                StreamReader reader = new StreamReader(path);

                String liniatxt = reader.ReadToEnd();

                String[] producte_info = liniatxt.Split(';');
                String nom = producte_info[0];
                String desc = producte_info[1];
                String preu = producte_info[2] + "€";
                String imatge = "/productes/Prod"+ cont +".png";

                prodimg[i].ImageUrl = imatge;
                prodtitols[i].InnerText = nom;
                prodpreu[i].InnerText = preu;
                proddesc[i].InnerText = desc;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            nomcarret = H1.InnerText;
            preucarret = p1.InnerText;
            imatgecarret = img1.ImageUrl;
            prodquantcarret = Number1.Value;

            List<string> carret1 = new List<string>();

            carret1.Add(nomcarret);
            carret1.Add(imatgecarret);
            carret1.Add(preucarret);
            carret1.Add(prodquantcarret);

            Session["Carret"] = carret1;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {


        }
        protected void Button3_Click(object sender, EventArgs e)
        {


        }
        protected void Button4_Click(object sender, EventArgs e)
        {


        }


    }
}