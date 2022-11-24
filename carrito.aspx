<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="BotigaWeb.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="css/style_carret.css"/>

</head>
<body>
    <header>
        <div class="dreta">
            <a href="index.aspx"><img src="/img/logo.png" alt="Logo"/></a>
            <h1>Algo</h1>
        </div>
    </header>
    
    <main>
        <div class="msg">
            <h1>Aquestos son els productes que tens al carret de la compra</h1>
        </div>
        <div class="carret">

            <div runat="server" id="p0">
                <asp:Image ID="Image0" runat="server" />
                <h3 runat="server" id="titol0"></h3>
                <input type = 'number' name='prod_quant' runat='server' id='Number0' value='0' min='0' max='100'/>
                <p runat="server" id="preu0"></p>
            </div>

            <div runat="server" id="p1">
                <asp:Image ID="Image1" runat="server" />
                <h3 runat="server" id="titol1"></h3>
                <input type = 'number' name='prod_quant' runat='server' id='Number1' value='0' min='0' max='100'/>
                <p runat="server" id="preu1"></p>
            </div>

            <div runat="server" id="p2">
                <asp:Image ID="Image2" runat="server" />
                <h3 runat="server" id="titol2"></h3>
                <input type = 'number' name='prod_quant' runat='server' id='Number2' value='0' min='0' max='100'/>
                <p runat="server" id="preu2"></p>
            </div>

            <div runat="server" id="p3">
                <asp:Image ID="Image3" runat="server" />
                <h3 runat="server" id="titol3"></h3>
                <input type = 'number' name='prod_quant' runat='server' id='Number3' value='0' min='0' max='100'/>
                <p runat="server" id="preu3"></p>
            </div>
            
                
        </div>
        

        <div class="botons">
            <button><a href="index.aspx">Seguir Comprant</a></button>
            
            <button><a href="formulari.aspx">Confirmar Compra</a></button>
        </div>

    </main>
</body>
</html>