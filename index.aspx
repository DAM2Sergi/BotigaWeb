<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BotigaWeb.WebForm1" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Projecte Web Estructura</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="css/style.css"/>

</head>
<body>
    <form id="form1" runat="server">
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
                    <div class="msg">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </div>

                    <div class="productes">

                        <div class='carta-prod' id="prod1" runat="server">
                            <asp:Image ID="img1" runat="server" />
                            <div class='info-prod'>
                                <h1 class='model' runat='server' id='H1' ></h1>
                                <p class='preu' runat='server' id='p1'></p>
                                <p runat='server' id='d1' ></p>
                            </div>
                            <div class='compra'>
                                <div class='quantitat'>
                                    <p>Num.</p>
                                    <input type='number' name='prod_quant' runat='server' id='Number1' value='0' min='0' max='100'/>
                                </div>
                                <asp:Button ID='Button1' runat='server' Text='Comprar' CssClass="boto" OnClick="Button1_Click"/>
                            </div>
                        </div>

                        <div class='carta-prod' id="prod2" runat="server">
                            <asp:Image ID="img2" runat="server" />

                            <div class='info-prod'>
                                <h1 class='model' runat='server' id='H2' ></h1>
                                <p class='preu' runat='server' id='p2'></p>
                                <p runat='server' id='d2'></p>
                            </div>
                            <div class='compra'>
                                <div class='quantitat'>
                                    <p>Num.</p>
                                    <input type = 'number' name='prod_quant' runat='server' id='Number2' value='0' min='0' max='100'/>
                                </div>
                                <asp:Button ID='Button2' runat='server' Text='Comprar' CssClass="boto"  OnClick="Button2_Click"/>
                            </div>
                        </div>

                        <div class='carta-prod' id="prod3" runat="server">
                            <asp:Image ID="img3" runat="server" />

                            <div class='info-prod'>
                                <h1 class='model' runat='server' id='H3' ></h1>
                                <p class='preu' runat='server' id='p3'></p>
                                <p runat='server' id='d3'></p>
                            </div>
                            <div class='compra'>
                                <div class='quantitat'>
                                    <p>Num.</p>
                                    <input type = 'number' name='prod_quant' runat='server' id='Number3' value='0' min='0' max='100'/>
                                </div>
                                <asp:Button ID='Button3' runat='server' Text='Comprar' CssClass="boto" OnClick="Button3_Click"/>
                            </div>
                        </div>

                        <div class='carta-prod' id="prod4" runat="server">
                            <asp:Image ID="img4" runat="server" />
                            <div class='info-prod'>
                                <h1 class='model' runat='server' id='H4' ></h1>
                                <p class='preu' runat='server' id='p4'></p>
                                <p runat='server' id='d4'></p>
                            </div>
                            <div class='compra'>
                                <div class='quantitat'>
                                    <p>Num.</p>
                                    <input type = 'number' name='prod_quant' runat='server' id='Number4' value='0' min='0' max='100'/>
                                </div>
                                <asp:Button ID='Button4' runat='server' Text='Comprar' CssClass="boto" OnClick="Button4_Click"/>
                            </div>
                        </div>

                    </div>
                </main>
        </div>
    </form>
</body>
</html>