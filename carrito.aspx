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
                <p class='preu' runat='server' id='p1'></p>
        </div>
        

        <div class="botons">
            <button><a href="index.aspx">Seguir Comprant</a></button>
            
            <button><a href="formulari.aspx">Confirmar Compra</a></button>
        </div>

    </main>
</body>
</html>