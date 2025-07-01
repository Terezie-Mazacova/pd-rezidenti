<%@ Page language="C#" %>
<je:container runat="server" source="mainpage">
    <je:master runat="server" href="/masters/main.master" />
</je:container>


<je:content runat="server" forRegion="head">

    <meta property="og:title" content="<je:item runat='server' field='common.pageTitle' format='plainText' />">
    <meta property="og:type" content="website">
    <meta property="og:url" content="<je:item runat='server' field='jelly.fullUrl' format='plainText' />">
    <meta property="og:image" content="<je:imglink mode='sitemap' runat='server' field='common.ogImage' />">
    <meta name="description" content="<je:item runat='server' field='common.metaDescription' format='plainText' />" />
    <title><je:item runat="server" field="common.pageTitle" format='plainText' /></title>
</je:content>

<je:content runat="server" forRegion="headerClass">header--scrolled</je:content>

<je:content runat="server" forRegion="main">
    <!-- INTRO SECTION -->
    <section class="canvas canvas--white canvas--jumbo intro__section">
        <div class="intro__section-bg">
            <je:img runat="server" field=".abstractBg" class="intro__section-bg-img" />
        </div>

        <div class="row">
            <div class="column medium-2 small-12"></div>

            <div class="column medium-8 small-12 intro__section-content">
                <je:item runat="server" field=".title" tag="h1" class="main-title" />
                <je:item runat="server" field=".introInfo" tag="div" class="intro__section-content-text" />
            </div>

            <div class="column medium-2 small-12"></div>
        </div>
    </section>

    <!-- FILTERMENU SECTION -->
    <section class="filtermenu__section">
        <div class="row">
            <div class="column medium-2 small-12"></div>
            <div class="column medium-8 small-12 filtermenu__section-container">
                <div class="filtermenu__section-line"></div>
                <ul class="filtermenu__section-container-ul">
                    
                    <li class="filtermenu__section-container-ul-li" data-status="all">
                        <je:item runat="server" field=".note" />
                    </li>
                    
                    <je:repeater runat="server" source=".filterMenu">
                        <item>
                            <li class="filtermenu__section-container-ul-li" data-status="<je:item runat='server' field='.name' />">
                                <je:item runat="server" field=".name"  />
                            </li>
                            
                        </item>
                    </je:repeater>
                </ul>
            </div>
            <div class="column medium-2 small-12"></div>
        </div>

        <div class="filtermenu__section-cards">
            <je:repeater runat="server" source=".tiles">
                <item>
                    <div class="filtermenu__section-cards-card" data-status="<je:item runat='server' field='.category.name' />">
                        <div class="filtermenu__section-cards-card-img">
                            <je:img runat="server" field=".photo" size="thumb" class="filtermenu__section-cards-card-img-images" />
                            <div class="filtermenu__section-cards-card-wrapper">
                                <je:img runat="server" src="/assets/img/icon-tiles.svg" class="filtermenu__section-cards-card-icon" />
                                <je:item runat="server" field=".name" tag="div" class="filtermenu__section-cards-card-title" />
                            </div>
                            

                            <div class="filtermenu__section-cards-card-overlay">
                                <je:aVar runat="server" href="404.aspx" class="filtermenu__section-cards-card-overlay-text overlay--rezervace primary-btn"> <!-- TEMPORARY PAGE -->
                                    <je:item runat="server" field="labels.rezervovatTermin" tag="p" />
                                </je:aVar>

                                <je:aVar runat="server" href="detail-tiles.aspx" class="filtermenu__section-cards-card-overlay-note overlay--volne">
                                    <je:item runat="server" field="labels.viceInformaci" tag="p" />
                                </je:aVar>
                            </div>
                        </div>
                    </div>
                </item>
            </je:repeater>
        </div>
    </section>

    <!-- NEWS SECTION -->
    <section class="canvas canvas--white news" id="sluzby">
        <div class="row ">
            <div class="column medium-12 small-12 news__header">
                <je:item runat="server" field=".actualInfo" tag="div" class="text text--md" />
            </div>


            <div class="column medium-12 small-12 news__splide ">
                <div class="splide" role="group" aria-label="Novinky">
                    <div class="splide__track">
                        <ul class="splide__list">
                            <je:repeater runat="server" source=".slider" count="6">
                                <item>
                                    <li class="splide__slide">
                                        <je:aVar runat="server" href="detail-slider.aspx">
                                            <div class="news__splide-imgwrapper">
                                                <je:img runat="server" field=".photo" size="thumb" />
                                            </div>
                                            

                                            <div class="news__splide-content">
                                                <je:item runat="server" field=".date" format="dd. MM. yyyy" tag="p" class="text-small" />
                                                <je:item runat="server" field=".name" tag="h3" class="news__splide-title title-small" />
                                                <je:item runat="server" field=".sliderText" tag="div" class="news__splide-content-text" />
                                            </div>
                                        </je:aVar>
                                    </li>
                                </item>
                            </je:repeater>
                        </ul>
                    </div>
                </div>
                
                <je:a runat="server" href="cards.aspx" class="news__splide-button">
                    <je:item runat="server" field=".sliderBtn" tag="p" class="news__splide-btn primary-btn" />
                </je:a>
            </div>

            <div class="column medium-12 small-12 news__subscribe">
                <div class="news__subscribe-container">
                    <je:item runat="server" field=".newsletterText" tag="div" class="" />

                    <div class="news__subscribe-form">
                        <input type="email" placeholder="E-mailová adresa" class="news__subscribe-input" />

                        <button type="submit" class="news__subscribe-button">
                            <je:img runat="server" src="/assets/img/sub-arrow.svg" class="news__subscribe-arrow" />
                        </button>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SCROLL SECTION -->
    <section class="map map--border map--1" id="lokalita">
        <div class="anchor" id="lokalita"></div>
        <div class="map__box">
            <div class="map__zoom">
                <je:img runat="server" src="/assets/map/mapaPD_02B.jpg?v=01" class="map__zoom-layer map__zoom-layer--bg" />
                <je:img runat="server" src="/assets/mapa/mapaPD_cislovani domu.png?v=01" class="map__zoom-layer map__zoom-layer--1" />
                <je:img runat="server" src="/assets/map/vstupnilobby.png?v=01" class="map__zoom-layer map__zoom-layer--2" />
                <je:img runat="server" src="/assets/map/vnitroblok.png?v=01" class="map__zoom-layer map__zoom-layer--3" />
                <je:img runat="server" src="/assets/mapa/vnitroblok_01.png?v=01" class="map__zoom-layer map__zoom-layer--4" />
                <je:img runat="server" src="/assets/mapa/vnitroblok_02.png?v=01" class="map__zoom-layer map__zoom-layer--5" />
                <je:img runat="server" src="/assets/mapa/vnitroblok_03.png?v=01" class="map__zoom-layer map__zoom-layer--6" />
                <je:img runat="server" src="/assets/mapa/vnitroblok_04.png?v=01" class="map__zoom-layer map__zoom-layer--7" />
                <je:img runat="server" src="/assets/mapa/vnitroblok_05.png?v=01" class="map__zoom-layer map__zoom-layer--8" />
                <je:img runat="server" src="/assets/map/wellness.png?v=02" class="map__zoom-layer map__zoom-layer--9" />
                <je:img runat="server" src="/assets/mapa/mapaPD_garaze a kolarna.png?v=01" class="map__zoom-layer map__zoom-layer--10" />
            </div>
        </div>
        <div class="map__text">
            <je:item runat="server" field=".mapTitle" tag="h2" class="title-3" />
            <je:repeater runat="server" source=".map">
                <item>
                    <div class="map__text-item map__text-item--<je:item runat="server" field=".itr" />">
                        <je:repeater runat="server" source=".imgBefore">
                            <header>
                                <div class="map__text-img">
                            </header>
                            <item>
                                <je:img runat="server" field=".img" size="full" />
                                <je:img runat="server" field=".png" />
                            </item>
                            <footer>
                                </div>
                            </footer>
                        </je:repeater>
                        <je:item runat="server" field=".text" tag="div" class="map__text-text text" />
                        <je:repeater runat="server" source=".icons">
                            <header>
                                <div class="map__text-icons">
                            </header>
                            <item>
                                <div class="map__text-icons-item">
                                    <je:img runat="server" field=".icon" class="map__text-icons-icon" />
                                    <div class="map__text-icons-flex">
                                        <je:item runat="server" field=".text" tag="div" class="map__text-icons-text" />
                                        <je:img runat="server" field=".iconAfter" class="map__text-icons-sm" />
                                    </div>
                                </div>
                            </item>
                            <footer>
                                </div>
                            </footer>
                        </je:repeater>
                        <je:repeater runat="server" source=".imgAfter">
                            <header>
                                <div class="map__text-img">
                            </header>
                            <item>
                                <je:img runat="server" field=".img" size="full" />
                                <je:img runat="server" field=".png" />
                            </item>
                            <footer>
                                </div>
                            </footer>
                        </je:repeater>
                    </div>
                </item>
            </je:repeater>
            <je:item runat="server" field=".mapLast" tag="h2" class="title-3 map__text-last" />
        </div>
    </section>
</je:content>

