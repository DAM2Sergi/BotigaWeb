<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BotigaWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <header>
        <div class="dreta">
            <a href="#"><img src="/img/logo.png" alt="Logo"></a>
            <h1>Algo</h1>
        </div>

        <div class="esquerra">
            <a href="carrito.html">Carrito</a>
        </div>
    </header>
    
    <main>

        <div class="productes">
            <div class="carta-prod">
                <img class="img" src="/img/logo.png" alt="Imatge Producte">
                <h1 class="model">Prod1</h1>
                <p class="preu">Prod1</p>
            </div>

            <div class="carta-prod">
                <img class="img" src="/img/logo.png" alt="Imatge Producte">
                <h1 class="model">Prod2</h1>
                <p class="preu">Prod2</p>
            </div>

            <div class="carta-prod">
                <img class="img" src="/img/logo.png" alt="Imatge Producte">
                <h1 class="model">Prod3</h1>
                <p class="preu">Prod3</p>
            </div>
            
            <div class="carta-prod">
                <img class="img" src="/img/logo.png" alt="Imatge Producte">
                <h1 class="model">Prod4</h1>
                <p class="preu">Prod4</p>
            </div>
        </div>

    </main>
</body>
</html>