<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulari.aspx.cs" Inherits="BotigaWeb.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Formulari</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style_form.css">

    <style type="text/css">
        #Button1 {
            height: 26px;
            width: 71px;
        }
    </style>

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
                        <asp:Button ID="esborrar" runat="server" Text="Button" OnClick="esborrar_Click" />
                        <asp:Button ID="confirmar" runat="server" Text="Button" OnClick="confirmar_Click" />
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
