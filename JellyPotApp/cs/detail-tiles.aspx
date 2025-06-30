<%@ Page language="C#" %>
<je:container runat="server" expect="mainpage.tiles">
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
    <section class="canvas canvas--white intro">
        <div class="introcontainer">
            <div class="introcontainer__wrapper">
                <je:img runat="server" field=".photo" size="original" class="introcontainer__wrapper-photo" />
                <div class="introcontainer__wrapper-overlay"></div>
            </div>
            
            <div class="introcontainer__text">
                <je:item runat="server" field=".name" tag="p" class="introcontainer__text-title" />
                <je:item runat="server" field=".perex" tag="div" class="introcontainer__text-perex" />
            </div>
        </div>
    </section>

    <!-- INFOBLOCKS SECTION -->
    <section class="canvas canvas--white infoBlocks">
        <div class="row">
            <div class="column medium-12 small-12">
                <je:repeater runat="server" source=".infoBlock">
                    <item>
                        <div class="infoBlocks__container">
                            <je:item runat="server" field=".blockText" tag="div" class="infoBlocks__container-text text" />
                            <div class="infoBlocks__container-wrapper">
                                <je:img runat="server" field=".photo" size="fullHD" class="infoBlocks__container-photo" />
                            </div>
                            
                        </div>
                    </item>
                </je:repeater>
            </div>
        </div>
    </section>

    <!-- TEXTBLOCKS SECTION -->
    <section class="canvas canvas--white textBlocks">
        <div class="row textBlocks__container">
            <div class="textBlocks__container-line"></div>
            <je:repeater runat="server" source=".textBlock">
                <item>
                    <div class="column medium-8 small-12">
                        <je:item runat="server" field=".text" tag="div" class="text text--md" />
                        
                        <je:repeater runat="server" source=".file">
                            <item>
                                <je:fileLink runat="server" field=".file" class="textBlocks__container-file">
                                    <je:img runat="server" src="/assets/img/icon-soubor.svg" class="" />
                                    <je:item runat="server" field=".name" tag="p" class="textBlocks__container-note" />
                                </je:fileLink>
                            </item>
                        </je:repeater>
                    </div>
                    <div class="column medium-8 small-12 textBlocks__container-gallery textBlocks__container-gallery--<je:repeater runat="server" source=".photoBlock"><lastItem1><je:item runat="server" field=".itr"/></lastItem1></je:repeater>">
                        <je:repeater runat="server" source=".photoBlock">
                            <item>
                                <div class="textBlocks__container-photo">
                                    <je:img runat="server" field=".photo" size="thumb" />
                                    <je:item runat="server" field=".caption" tag="p" class="caption" />
                                </div>
                            </item>
                        </je:repeater>
                    </div>
                </item>
            </je:repeater>
        </div>
    </section>
</je:content>
