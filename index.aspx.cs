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

            for (int i =0;i<productes.Length;i++)
            {
                
                String path = productes[i];

                int cont = i+1;

                StreamReader reader = new StreamReader(path);

                String liniatxt = reader.ReadToEnd();

                String[] producte_info = liniatxt.Split(';');
                String nom = producte_info[0];
                String desc = producte_info[1];
                String preu = producte_info[2];
                String imatge = "/productes/Prod"+ cont +".png";

                String prod = "<div class='carta-prod'> " +
                                    "<img class='img' src='" + imatge + "' alt='Imatge Producte'>" +
                                    "<div class='info-prod'>"+
                                        "<h1 class='model'>" + nom + "</h1>" +
                                        "<p class='preu'>" + preu + " €</p>" +
                                        "<p>" + desc + "</p>"+
                                    "</div>" +
                                    "<div class='compra'>"+
                                        "<div class='quantitat'>"+
                                            "<p>Num.</p>"+
                                            "<input type = 'number' name='prod_quant' id='prod_quant1' value='0' min='0' max='100'>"+
                                        "</div>"+
                                        "<asp:button ID = 'Button"+(cont)+"' runat='server' class='boto'/>Comprar</asp:button>"+
                                    "</div>"+
                                 "</div>";



                ((Label)(Page.FindControl("prod" + (cont)))).Text = prod;

            }

        }

    }
}