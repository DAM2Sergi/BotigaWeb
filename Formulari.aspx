<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulari.aspx.cs" Inherits="BotigaWeb.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Formulari</title>

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
                        
                    </div>      
            </header>
            
            <main>
                <div class="formulari_confirmar">

                    <label>Nom: </label>
                    <input id="Text1" type="text" />
                    <label>DNI: </label>
                    <input id="Text2" type="text" />
                    <label>Tel: </label>
                    <input id="Text3" type="text" />

                    <div>
                        <input id="Button1" type="button" value="Esborrar" />
                        <input id="Button2" type="button" value="Confirmar" />
                    </div>
                    
                </div>

                <div class="formulari_img">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/form.png" />
                </div>
            </main>

        </div>
    </form>
</body>
</html>
