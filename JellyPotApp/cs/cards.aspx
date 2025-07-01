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
    
    <section class="canvas canvas--white">
        <div class="news__cards">
            <je:repeater runat="server" source=".slider" count="6">
                <item>
                    <je:aVar runat="server" href="detail-slider.aspx" class="news__cards-card">
                        <div class="news__splide-imgwrapper">
                            <je:img runat="server" field=".photo" size="thumb" class="" />
                        </div>
                        
                        <div class="news__splide-content">
                            <je:item runat="server" field=".date" format="dd. MM. yyyy" tag="p" class="text-small" />
                            <je:item runat="server" field=".name" tag="h3" class="news__splide-title title-small" />
                            <je:item runat="server" field=".sliderText" tag="div" class="news__splide-content-text " />
                        </div>
                    </je:aVar>
                </item>
            </je:repeater>
        </div>
    </section>

    
</je:content>
