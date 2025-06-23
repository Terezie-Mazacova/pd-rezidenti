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
                                <je:aVar runat="server" href="404.aspx" class="filtermenu__section-cards-card-overlay-text overlay--rezervace primary-btn">
                                    <je:item runat="server" field="labels.rezervovatTermin" tag="p" />
                                </je:aVar>

                                <je:aVar runat="server" href="404.aspx" class="filtermenu__section-cards-card-overlay-note overlay--volne">
                                    <je:item runat="server" field="labels.viceInformaci" tag="p" />
                                </je:aVar>
                            </div>
                        </div>
                    </div>
                </item>
            </je:repeater>
        </div>
    </section>
</je:content>

