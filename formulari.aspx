<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulari.aspx.cs" Inherits="BotigaWeb.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Formulari</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style_form.css">

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
                    <input id="Text1" type="text" runat="server"/>
                    <label>DNI: </label>
                    <input id="Text2" type="text" runat="server"/>
                    <label>Tel: </label>
                    <input id="Text3" type="text" runat="server"/>

                    <div class="formulari_botons">
                        <asp:Button ID="esborrar" runat="server" Text="Esborrar" OnClick="esborrar_Click" />
                        <asp:Button ID="confirmar" runat="server" Text="Confirmar" OnClick="confirmar_Click"/>
                    </div>

                </div>

                <div class="formulari_img">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/form.png" />
                    <div class="img_desc">
                        <h2>Imatge</h2>
                        <p>Sed et laoreet erat, ut convallis mi. Integer vitae egestas risus, id commodo ex. Proin posuere dapibus ligula, sed rutrum felis pretium vel. Vivamus ut erat sapien. Pellentesque ac egestas leo. Maecenas hendrerit efficitur suscipit. Vivamus viverra, massa in faucibus dignissim.</p>
                    </div>

                </div>
            </main>

        </div>
    </form>
</body>
</html>
