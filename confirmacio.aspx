<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmacio.aspx.cs" Inherits="BotigaWeb.WebForm4" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="css/style_conf.css"/>

</head>
<body>
    <form id="form2" runat="server">
        <div>
               <header>
                    <div class="dreta">
                        <a href="#"><img src="/img/logo.png" alt="Logo"/></a>
                        <h1>Algo</h1>
                    </div>

                    <div class="esquerra">
                        <a href="carrito.aspx"><i class="fa fa-cart-arrow-down"></i></a>
                    </div>
        
                </header>
    
                <main>
                    
                    <asp:Image ID="img1" runat="server" ImageUrl="~/img/comfirmació.jpg"/>

                    <div class="msg">
                        <h1>La comanda s'ha realitzat Correctament</h1>
                        <p>Prem el botó per a tornar a la pàgina principal</p>
                        <asp:Button ID="Button1" runat="server" Text="Inici" OnClick="home" />                      
                    </div>


                </main>
        </div>
    </form>
</body>
</html>