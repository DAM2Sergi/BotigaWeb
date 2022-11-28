using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.SessionState;
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

                String dir = Server.MapPath(".") + "\\comandes\\";
                String[] productes = Directory.GetFiles(dir);
                int id = productes.Length;

                String path = Server.MapPath(".") + "/comandes/Comanda"+id+".txt";

                StreamWriter writer = new StreamWriter(path);

                String[] carret = new String[4];

                String linia = Text1.Value + ";" + Text2.Value + ";" + Text3.Value;

                writer.Write(linia + "\n");

                for (int i = 0; i < carret.Length; i++)
                {
                    carret[i] = (string)GetSession()["prod" + i];
                    String prod =carret[i];
                    writer.Write(prod + "\n");
                }

                writer.Dispose();

                esborrarinputs();
            }

        }


        private void esborrarinputs()
        {
            Text1.Value = "";
            Text2.Value = "";
            Text3.Value = "";
        }

        private HttpSessionState GetSession()
        {
            return Session;
        }
    }
}
