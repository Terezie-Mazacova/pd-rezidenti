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

    <section class="canvas canvas--white">
        
    </section>
</je:content>
