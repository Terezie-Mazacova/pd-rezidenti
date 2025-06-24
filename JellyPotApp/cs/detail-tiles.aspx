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

    <section class="canvas canvas--white">
        <div class="row">
            <div class="column medium-12 small-12">
                <je:repeater runat="server" source=".infoBlock">
                    <item>
                        
                        <je:item runat="server" field=".blockText" tag="div" class="" />
                        <je:img runat="server" field=".photo" size="thumb" class="" />
                    </item>
                </je:repeater>
            </div>
        </div>
    </section>

    <section>
        <div>
            <je:repeater runat="server" source=".textBlock">
                <item>
                    <je:item runat="server" field=".text" tag="div" class="class" />
                    <je:item runat="server" field=".textList" tag="div" class="class" />

                    <je:repeater runat="server" source=".photoBlock">
                        <item>
                            <je:img runat="server" field=".photo" size="thumb" class="" />
                        </item>
                    </je:repeater>

                    <je:repeater runat="server" source=".file">
                        <item>
                            <je:item runat="server" field=".name" tag="div" class="" />
                        </item>
                    </je:repeater>
                </item>
            </je:repeater>
        </div>
    </section>
</je:content>
