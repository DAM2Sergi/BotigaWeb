using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BotigaWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        String[] carret = new String[4];


        protected void Page_Load(object sender, EventArgs e)
        {

            System.Web.UI.HtmlControls.HtmlGenericControl[] prodcarret = new System.Web.UI.HtmlControls.HtmlGenericControl[] { p0, p1, p2, p3 };
            Image[] imgs = new Image[] { Image0, Image1, Image2, Image3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] nomprod = new System.Web.UI.HtmlControls.HtmlGenericControl[] { titol0, titol1, titol2, titol3 };
            System.Web.UI.HtmlControls.HtmlInputGenericControl[] quant = new System.Web.UI.HtmlControls.HtmlInputGenericControl[] { Number0, Number1, Number2, Number3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] preu = new System.Web.UI.HtmlControls.HtmlGenericControl[] { preu0, preu1, preu2, preu3 };


            for (int i = 0; i < carret.Length; i++)
            {
                if(GetSession()["prod" + i] == null)
                {
                    prodcarret[i].Visible = false;
                }
                else {

                    carret[i] = (string)GetSession()["prod" + i];

                    String prod = carret[i];

                    String[] prodinfo = prod.Split(';');
                    String nom = prodinfo[1];
                    String preuinfo = prodinfo[2];
                    String img = prodinfo[0];
                    String quantinfo = prodinfo[3];

                    nomprod[i].InnerText = nom;
                    quant[i].Value = quantinfo;
                    preu[i].InnerText = preuinfo;
                    imgs[i].ImageUrl = img;


                }

            }

        }

        private HttpSessionState GetSession()
        {
            return Session;
        }

        protected void Confirmar(object sender, EventArgs e)
        {

            System.Web.UI.HtmlControls.HtmlGenericControl[] prodcarret = new System.Web.UI.HtmlControls.HtmlGenericControl[] { p0, p1, p2, p3 };
            Image[] imgs = new Image[] { Image0, Image1, Image2, Image3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] nomprod = new System.Web.UI.HtmlControls.HtmlGenericControl[] { titol0, titol1, titol2, titol3 };
            System.Web.UI.HtmlControls.HtmlInputGenericControl[] quant = new System.Web.UI.HtmlControls.HtmlInputGenericControl[] { Number0, Number1, Number2, Number3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] preu = new System.Web.UI.HtmlControls.HtmlGenericControl[] { preu0, preu1, preu2, preu3 };


            for (int i = 0; i < carret.Length; i++)
            {
                if (GetSession()["prod" + i] == null)
                {
                    prodcarret[i].Visible = false;
                }
                else
                {

                    carret[i] = (string)GetSession()["prod" + i];

                    String prod = carret[i];

                    String[] prodinfo = prod.Split(';');
                    String nom = prodinfo[1];
                    String preuinfo = prodinfo[2];
                    String img = prodinfo[0];
                    String quantinfo = prodinfo[3];

                    nomprod[i].InnerText = nom;
                    quant[i].Value = quantinfo;
                    preu[i].InnerText = preuinfo;
                    imgs[i].ImageUrl = img;

                    String stringprod = nom + ";" + preuinfo + ";" + quantinfo;

                    Session["prod"+i] = stringprod;


                }



            }
            Response.Redirect("formulari.aspx");

        }

        protected void borrar(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl[] prodcarret = new System.Web.UI.HtmlControls.HtmlGenericControl[] { p0, p1, p2, p3 };
            Image[] imgs = new Image[] { Image0, Image1, Image2, Image3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] nomprod = new System.Web.UI.HtmlControls.HtmlGenericControl[] { titol0, titol1, titol2, titol3 };
            System.Web.UI.HtmlControls.HtmlInputGenericControl[] quant = new System.Web.UI.HtmlControls.HtmlInputGenericControl[] { Number0, Number1, Number2, Number3 };
            System.Web.UI.HtmlControls.HtmlGenericControl[] preu = new System.Web.UI.HtmlControls.HtmlGenericControl[] { preu0, preu1, preu2, preu3 };


            for (int i = 0; i < carret.Length; i++)
            {
                if (GetSession()["prod" + i] == null)
                {
                    prodcarret[i].Visible = false;
                }
                else
                {


                    Session.Remove("prod"+i);


                }



            }
        }
    }
}