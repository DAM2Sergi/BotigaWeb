﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BotigaWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
               <header>
                    <div class="dreta">
                        <a href="#"><img src="/img/logo.png" alt="Logo"></a>
                        <h1>Algo</h1>
                    </div>

                    <div class="esquerra">
                        <a href="carrito.aspx"><i class="fa fa-cart-arrow-down"></i></a>
                    </div>
        
                </header>
    
                <main>
                    <div class="msg">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </div>

                    <div class="productes">
                        <asp:Label ID="prod1" runat="server" Text=""></asp:Label>
                        <asp:Label ID="prod2" runat="server" Text=""></asp:Label>
                        <asp:Label ID="prod3" runat="server" Text=""></asp:Label>
                        <asp:Label ID="prod4" runat="server" Text=""></asp:Label>


                       <!--<div class="carta-prod">          
                            <img class="img" src="/img/logo.png" alt="Imatge Producte">
                            <div class="info-prod">
                                <asp:Label ID="p" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="compra">
                                <div class="quantitat">
                                    <p>Num.</p>
                                    <input type="number" name="prod_quant" id="prod_quant1" value="0" min="0" max="100">
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Comprar" class="boto"/>
                            </div>
                        </div>            
            
                        <div class="carta-prod">          
                            <img class="img" src="/img/logo.png" alt="Imatge Producte">
                            <div class="info-prod">
                                <asp:Label ID="pr" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="compra">
                                <div class="quantitat">
                                    <p>Num.</p>
                                    <input type="number" name="prod_quant" id="prod_quant2" value="0" min="0" max="100">
                                </div>
                                <asp:Button ID="Button2" runat="server" Text="Comprar" class="boto"/>
                            </div>
                        </div>

                        <div class="carta-prod">          
                            <img class="img" src="/img/logo.png" alt="Imatge Producte">
                            <div class="info-prod">
                                <asp:Label ID="pro" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="compra">
                                <div class="quantitat">
                                    <p>Num.</p>
                                    <input type="number" name="prod_quant" id="prod_quant3" value="0" min="0" max="100">
                                </div>
                                <asp:Button ID="Button3" runat="server" Text="Comprar" class="boto"/>
                            </div>
                        </div>

                        <div class="carta-prod">          
                            <img class="img" src="/img/logo.png" alt="Imatge Producte">
                            <div class="info-prod">
                                <asp:Label ID="prod" runat="server" Text="Label"></asp:Label>          
                            </div>
                            <div class="compra">
                                <div class="quantitat">
                                    <p>Num.</p>
                                    <input type="number" name="prod_quant" id="prod_quant4" value="0" min="0" max="100">
                                </div>
                                <asp:Button ID="Button4" runat="server" Text="Comprar" class="boto"/>
                            </div>             
                        </div>-->
                    </div>
                </main>
        </div>
    </form>
</body>
</html>