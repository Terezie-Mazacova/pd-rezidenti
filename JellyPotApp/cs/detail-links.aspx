<%@ Page language="C#" %>
<je:container runat="server" expect="footer.footerLinks">
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
    <!-- DETAIL LINKS -->
    <section class="canvas canvas--white canvas--first">
        <div class="column medium-12 small-12">
            <je:item runat="server" field=".text" tag="p" class="" />
        </div>
    </section>
</je:content>
