﻿using System;
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
            esborrarinputs();
        }

        protected void confirmar_Click(object sender, EventArgs e)
        {
            if ((Text1.Value == "") || (Text2.Value == "") || (Text3.Value == ""))
            {

            }
            else
            {
                

                int contador_comanda = 0;

                String path = Server.MapPath(".") + "/comandes/Comanda" + contador_comanda + ".txt";
                StreamWriter writer = new StreamWriter(path);

                String linia = Text1.Value + ";" + Text2.Value + ";" + Text3.Value + ";";

                writer.Write(linia);
                writer.Dispose();

                esborrarinputs();
                contador_comanda++;
            }

        }


        private void esborrarinputs()
        {
            Text1.Value = "";
            Text2.Value = "";
            Text3.Value = "";
        }
    }
}
