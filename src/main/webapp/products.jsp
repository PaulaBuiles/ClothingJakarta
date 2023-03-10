<%--
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
    <title>Proyecto final</title>
</head>
<body>
<header class="main-header">
    <div class="container container--flex">
        <div class="main-header__container">
            <h1 class="main-header__title">Fashion Store</h1>
            <span class="icon-menu" id="btn-menu"><i class="fas fa-bars"></i></span>
            <nav class="main-nav" id="main-nav">
                <ul class="menu">
                    <li class="menu__item"><a href="/register-client" class="menu__link">INICIO</a></li>
                    <li class="menu__item"><a href="/proyecto_final/HTML/acercade.html" class="menu__link">ACERCA DE</a><li>
                    <li class="menu__item"><a href="/proyecto_final/HTML/productos.html" class="menu__link">PRODUCTOS</a></li>
                    <li class="menu__item"><a href="/proyecto_final/HTML/contacto.html" class="menu__link">CONTACTO</a></li>
                </ul>
            </nav>
        </div>
        <div class="main-header__container">
            <span class="main-header__txt">Ayuda</span>
            <p class="main-header__txt"><i class="fas fa-phone"></i> LLama 3136642230</p>
        </div>
        <div class="main-header__container">
            <a href="/proyecto_final/HTML/iniciosesion.html" class="main-header__link"><i class="fas fa-user"></i></a>
            <input type="search" class="main-header__input" placeholder="Buscar productos"><i class="fas fa-search"></i>
        </div>
    </div>
</header>


<main class="main">
    <div class="container">
        <h2 class="main-title">TODOS LOS PRODUCTOS DISPONIBLES</h2>
        <div class="container-products">
            <form action="/clothing-send" method="post">
            <div class="product_new">
                <img src="https://studiofco.vteximg.com.br/arquivos/ids/1293046-1000-1071/-stfco-producto-Enterizos-conjuntos-NARANJA-S123398-1.jpg?v=637830345618770000" alt="" class="product__img">
                <div class="product__description">
                    <input type="hidden" value="Enterizo con escote (Naranja)" name="product__title">
                    <input type="hidden" value="200.000" name="product__price">
                    <h3 class="product__title">Enterizo con escote (Naranja)</h3>
                    <span class="product__price">$200.000</span>
                </div>
                <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
            </div>
            </form>
            <form action="/clothing-send" method="post">
            <div class="product_new">
                <img src="https://studiofco.vteximg.com.br/arquivos/ids/1274455-1000-1071/-stfco-producto-Vestidos-VERDEESMERALDA-S141963-1.jpg?v=637728464665500000" alt="" class="product__img">
                <div class="product__description">
                    <input type="hidden" value="Vestido corte de lentejuelas" name="product__title">
                    <input type="hidden" value="180.000" name="product__price">
                    <h3 class="product__title">Vestido corte de lentejuelas</h3>
                    <span class="product__price">$180.000</span>
                </div>
                <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
            </div>
            </form>
            <form action="/clothing-send" method="post">
            <div class="product_new">
                <img src="https://studiofco.vteximg.com.br/arquivos/ids/1299310-1000-1071/-stfco-producto-Camisasyblusas-AZULKLEIN-S173294A-2.jpg?v=637853818463830000" alt="" class="product__img">
                <div class="product__description">
                    <input type="hidden" value="Blusa azul con amarre" name="product__title">
                    <input type="hidden" value="80.000" name="product__price">
                    <h3 class="product__title">Blusa azul con amarre</h3>
                    <span class="product__price">$80.000</span>
                </div>
                <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
            </div>
            </form>
            <form action="/clothing-send" method="post">
            <div class="product_new">
                <img src="https://studiofco.vteximg.com.br/arquivos/ids/1296939-1000-1071/-stfco-producto-Palazzo-MOSTAZA-S028332B-1.jpg?v=637847847431430000" alt="" class="product__img">
                <div class="product__description">
                    <input type="hidden" value="Pantalón mostaza" name="product__title">
                    <input type="hidden" value="150.000" name="product__price">
                    <h3 class="product__title">Pantalon mostaza</h3>
                    <span class="product__price">$150.000</span>
                </div>
                <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
            </div>
            </form>
                <form action="/clothing-send" method="post">
                    <div class="product">
                        <img src="https://studiofco.vteximg.com.br/arquivos/ids/1299134-1000-1071/-stfco-producto-Pantalones-leggings-FUCSIAINTENSO-S028409-2.jpg?v=637853800431070000" alt="" class="product__img" width="480" height="380" >
                        <div class="product__description">
                            <input type="hidden" value="Pantalón Fucsia" name="product__title">
                            <input type="hidden" value="150.000" name="product__price">
                            <h3  class="product__title">Pantalon Fucsia</h3>
                            <span class="product__price">$150.000</span>
                        </div>
                        <button  type="submit" class="btn btn-outline-info" >COMPRAR</button>

                    </div>
                </form>

                <form action="/clothing-send"  method="post">
                    <div class="product">
                        <img src="https://studiofco.vteximg.com.br/arquivos/ids/1256023-1000-1071/-stfco-producto-Shorts-MOKA-S103997-1.jpg?v=637668850166170000" alt="" class="product__img" width="480" height="380" >
                        <div class="product__description">
                            <input type="hidden" value="Short tiro alto Moka" name="product__title">
                            <input type="hidden" value="100.000" name="product__price">
                            <h3 id="product__title" class="product__title">Short tiro alto Moka</h3>
                            <span class="product__price">$100.000</span>
                        </div>
                        <button  type="submit" class="btn btn-outline-info" >COMPRAR</button>

                    </div>
                </form>
            <form action="/clothing-send" method="post">
               <div class="product">
                   <img src="https://studiofco.vteximg.com.br/arquivos/ids/1269289-1000-1071/-stfco-producto-Camisas-blusas-MOKA-S172739-2.jpg?v=637715692548430000" alt="" class="product__img" width="480" height="380" >
                   <div class="product__description">
                       <input type="hidden" value="Crop Top (disponible en negro y Moka)" name="product__title">
                       <input type="hidden" value="100.000" name="product__price">
                       <h3 class="product__title">Crop Top (disponible en negro y Moka)</h3>
                       <span class="product__price">$100.000</span>
                   </div>
                   <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
               </div>
           </form>

            <form action="/clothing-send" method="post">
                <div class="product">
                    <img src="https://studiofco.vteximg.com.br/arquivos/ids/1297868-1000-1071/-stfco-producto-Camisasyblusas-ROJOPRADA-S172537A-2.jpg?v=637847950319330000" alt="" class="product__img" width="480" height="380" >
                    <div class="product__description">
                        <input type="hidden" value="Crop Top rojo con cierre en espalda" name="product__title">
                        <input type="hidden" value="90.000" name="product__price">
                        <h3 class="product__title">Crop top rojo con cierre en espalda</h3>
                        <span class="product__price">$90.000</span>
                    </div>
                    <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
                </div>
            </form>

            <form action="/clothing-send" method="post">
                <div class="product">
                    <img src="https://studiofco.vteximg.com.br/arquivos/ids/1259268-1000-1071/-stfco-producto-Blazer-BEIGE-S301753-2.jpg?v=637674054947200000" alt="" class="product__img">
                    <div class="product__description">
                        <input type="hidden" value="Blazer (disponible en rosa y blanco)" name="product__title">
                        <input type="hidden" value="200.000" name="product__price">
                        <h3 class="product__title">Blazer (disponible en rosa y blanco)</h3>
                        <span class="product__price">$200.000</span>
                    </div>
                    <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
                </div>
            </form>
            <form action="/clothing-send" method="post">
                <div class="product">
                    <img src="https://studiofco.vteximg.com.br/arquivos/ids/1266631-1000-1071/-stfco-producto-Body-NATURAL-S162728-2.jpg?v=637705086937100000" alt="" class="product__img">
                    <div class="product__description">
                        <input type="hidden" value="Body con tiras de cadena (disponible en blanco y negro)" name="product__title">
                        <input type="hidden" value="75.000" name="product__price">
                        <h3 class="product__title">Body con tiras de cadena (disponible en blanco y negro)</h3>
                        <span class="product__price">$75.000</span>
                    </div>
                    <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
                </div>
            </form>
            <form action="/clothing-send" method="post">
               <div class="product">
                   <img src="https://studiofco.vteximg.com.br/arquivos/ids/1191652-1000-1071/-stfco-producto-Body-PLATA-S162596-2.jpg?v=637431484501070000" alt="" class="product__img">
                   <div class="product__description">
                       <input type="hidden" value="Body con escote" name="product__title">
                       <input type="hidden" value="80.000" name="product__price">
                       <h3 class="product__title">Body con escote</h3>
                       <span class="product__price">$80.000</span>
                   </div>
                   <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
               </div>
           </form>
            <form action="/clothing-send" method="post">
                <div class="product">
                    <img src="https://studiofco.vteximg.com.br/arquivos/ids/1286138-1000-1071/-stfco-producto-Chaquetas-BLANCO-S075980-2.jpg?v=637801058634830000" alt="" class="product__img">
                    <div class="product__description">
                        <input type="hidden" value="Chaqueta blanca" name="product__title">
                        <input type="hidden" value="150.000" name="product__price">
                        <h3 class="product__title">Chaqueta blanca</h3>
                        <span class="product__price">$150.000</span>
                    </div>
                    <button  type="submit" class="btn btn-outline-info">COMPRAR</button>
                </div>
            </form>

        </div>
        <section class="container__testimonials">
            <h2 class="section__title">¡¡Ir al carrito!!</h2>
        </section>

        <div id="liveAlertPlaceholder" class="alert alert-success alert-dismissible" role="alert"></div>
        <form action="/clothing-send" method="get">
            <button  type="submit" class="btn btn-success btn-lg btn-block">COMPRAR</button>
        </form>
    </div>
    <br>

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
