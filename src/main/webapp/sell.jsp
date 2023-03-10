
<%@ page import="cue.clothingjakarta.clothingjakarta.model.Clothing" %>
<%@ page import="java.util.List" %>
<%@ page import="cue.clothingjakarta.clothingjakarta.model.Client" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: Paula
  Date: 2/03/2023
  Time: 8:32 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Compra aca</title>
</head>
<body>
<section class="container__testimonials">
    <h2 class="section__title">¡¡PAGA ACÁ!!</h2>
</section>
<table class="table table-striped">
    <h1>List products</h1>
    <%
        List<Clothing> clothingList = (List)request.getSession().getAttribute("clothingList");
        int cont=1;
        Double total = 0.0;
        for (Clothing clothing : clothingList){

    %>
    <%--<p><b>Producto <%=cont%></b></p>
    <p>Nombre <%=clothing.getName()%></p>
    <p>Precio <%=clothing.getPrice()%></p>
    <p>------------------------</p>
    <%cont=cont+1;%>--%>

    <thead>

    <tr>
        <th scope="col">Producto: <%=cont%></th>
        <th scope="col">Nombre: <%=clothing.getName()%></th>
        <th scope="col">Precio: $<%=clothing.getPrice()%>00</th>
        <%cont=cont+1;
        total+= clothing.getPrice();
        %>
        <%}  System.out.println(total);%>
    </tr>
    </thead>
    <tbody class="tbody">

    </tbody>
</table>
<br><br>
<div class="row mx-4">
    <div class="col">
        <h3 class="itemCartTotal ">Total: $<%=total%>00</h3>

    </div>
    <div id="liveAlertPlaceholder" class="alert alert-success alert-dismissible" role="alert"></div>
    <button onclick="true" type="button" class="btn btn-primary" value="button" id="liveAlertBtn">COMPRAR</button>
    <script >

        const alertTrigger = document.getElementById('liveAlertBtn')
        if (alertTrigger) {
            alertTrigger.addEventListener('click', () => {
                window.alert('¡¡Tu compra se ha realizado exitosamente!!')
            })
        }
    </script>

</div>
<br>
</div>


<section class="container-tips">
    <div class="tip">
        <i class="far fa-hand-paper"></i>
        <h2 class="tip__title">Satisfacción Garantizada</h2>
        <p class="tip__txt">Con Fashion Store no tienes porque preocuparte, si tu pedido no te llega en el tiempo establecido sin probelma se te hará una de volución completa de tu dinero</p>
        <a href="" class="btn-shop">COMPRA AHORA</a>
    </div>
    <div class="tip">
        <i class="fas fa-rocket"></i>
        <h2 class="tip__title">Envíos rápidos</h2>
        <p class="tip__txt">Aquí podrás obtener tu ropa para lucirla como se debe en máximo 15 dias hábiles, depende de en que ciudad te encuentres, te podría llegar mañana, ¿No quieres pedir?.</p>
        <a href="" class="btn-shop">COMPRA AHORA</a>
    </div>
    <div class="tip">
        <i class="fas fa-cog"></i>
        <h2 class="tip__title">Calidad</h2>
        <p class="tip__txt">Nuestra ropa es hecha con la mejor tela, con los mejores diseñadores, nos preocupamos por nuestros clientes, ue luzca bien y hermosa.</p>
        <a href="" class="btn-shop">COMPRA AHORA</a>
    </div>
</section>
</div>
</main>
<footer class="main-footer">
    <div class="footer__section">
        <h2 class="footer__title">Sobre nosotros</h2>
        <p class="footer__txt">Fashion Store es una tienda diseñada con el fin de que te antojes de todo y nunca salgas con las manos vacias de acá, de que te veas hermosa en cada momento, nos precupamos por todo tipo de estilos y tratamos de que hnuestro cliente siempre quede satisfecho.</p>
    </div>
    <div class="footer__section">
        <h2 class="footer__title">Ubicación:</h2>
        <p class="footer__txt">Centro Comercial Portal del Quindío Cra. 14 ##19N-46, Armenia, Quindío</p>
        <h2 class="footer__title">Contacto</h2>
        <p class="footer__txt">Numero : +57 3136642230</p>
        <p class="footer__txt">Gmail : paulaandreabuiles07.03@gmail.com</p>
    </div>..
    <div class="footer__section">
        <h2 class="footer__title">Links</h2>
        <a href="/proyecto_final/HTML/index.html" class="footer__link">Inicio</a>
        <a href="/proyecto_final/HTML/acercade.html" class="footer__link">Acerca de</a>
        <a href="/proyecto_final/HTML/productos.html" class="footer__link">Productos</a>
        <a href="/proyecto_final/HTML/contacto.html" class="footer__link">Contacto</a>
    </div>
    <div class="footer__section">
        <h2 class="footer__title">Inicia sesión</h2>
        <a href="/proyecto_final/HTML/iniciosesion.html" class="main-header__link"><i class="fas fa-user"></i></a>
        <p class="footer__txt">Al suscribirte recibiras en tu coreo cuando hayan promociones para que no te las pierrdas</p>
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15908.789227550737!2d-75.66397737412704!3d4.558508147008888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e38f4e87b45acd1%3A0x2f0114828bf0d16c!2sCentro%20Comercial%20Portal%20del%20Quind%C3%ADo!5e0!3m2!1ses!2sco!4v1655153798116!5m2!1ses!2sco" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    <p class="copy">© 2022 Fashion Store. Todos los derechos reservados | Diseñado por Paula Builes.</p>
</footer>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="/proyecto_final/JS/main1.js" type="module"></script>
</body>
</html>

