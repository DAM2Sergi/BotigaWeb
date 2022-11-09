<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="BotigaWeb.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="css/style_carret.css">

</head>
<body>
    <header>
        <div class="dreta">
            <a href="index.aspx"><img src="/img/logo.png" alt="Logo"></a>
            <h1>Algo</h1>
        </div>


    </header>
    
    <main>
        <div class="msg">
            <h1>Aquestos son els productes que tens al carret de la compra</h1>
        </div>
        <div class="carret">
            <asp:Table runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>
                        Imatge
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        Producte
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        Descripció
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        Quantitat
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        Preu
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>

                <asp:TableRow>
                    <asp:TableCell>
                        1
                    </asp:TableCell>
                    <asp:TableCell>
                        2
                    </asp:TableCell>
                    <asp:TableCell>
                        3
                    </asp:TableCell>
                    <asp:TableCell>
                        4
                    </asp:TableCell>
                    <asp:TableCell>
                        5
                    </asp:TableCell>
                    <asp:TableCell>
                        6
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </div>
        

        <div class="botons">
            <button><a href="index.aspx">Seguir Comprant</a></button>
            
            <button><a href="formulari.aspx">Confirmar Compra</a></button>
        </div>

    </main>
</body>
</html>