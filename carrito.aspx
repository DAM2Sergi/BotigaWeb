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
                        producte
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        producte
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>

            </asp:Table>
        </div>
        

        <div class="botons">
            <button>1</button>
            <button>2</button>
        </div>

    </main>
</body>
</html>