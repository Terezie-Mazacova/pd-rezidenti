<%@ Control %>

<a class="consent-modal-button footer__pages-item"><je:text runat="server" textNode="Cookies/detailed" /></a>

<footer class="canvas canvas--footer">
    <div class="row text-left">
        <div class="column medium-12 small-12">
            <div class="footer__contact">
                <je:item runat="server" field="footer.receptionLabel" tag="p" class="footer__contact-label" />
                <je:repeater runat="server" source="footer.receptionContact">
                    <item>
                        <div class="footer__contact-item">
                            <je:img runat="server" field=".icon" class="footer__contact-item-icon" />
                            <je:item runat="server" field=".text" tag="p" class="footer__contact-item-text" />
                        </div>
                    </item>
                </je:repeater>
            </div>
        </div>
    </div>

    <div class="row footer__identity">
        <div class="column medium-12 small-12">
            <je:img runat="server" src="/assets/img/logo-footer.svg" class="footer__identity-logo" />
            <je:item runat="server" field="footer.company" tag="div" class="footer__identity-text" />
        </div>
    </div>


    <div class="row footer__block">
        <div class="column medium-5 small-12 footer__contact footer__contact--client">
            <je:item runat="server" field="footer.clientLabel" tag="p" class="footer__contact-label" />
            <je:repeater runat="server" source="footer.clientContact">
                <item>
                    <div class="footer__contact-item">
                        <je:img runat="server" field=".icon" class="footer__contact-item-icon" />
                        <je:item runat="server" field=".text" tag="p" class="footer__contact-item-text" />
                    </div>
                </item>
            </je:repeater>
        </div>

        <div class="column medium-5 small-12 footer__block-links">
            <je:repeater runat="server" source="footer.footerLinks">
                <item>
                    <je:aVar runat="server" href="detail-links.aspx" class="footer__block-links-wrapper">
                        <je:item runat="server" field=".btn" tag="p" class="footer__block-links-text" />
                        <je:img runat="server" src="/assets/img/arrow.svg" class="footer__block-links-icon" />
                    </je:aVar>
                </item>
            </je:repeater>
        </div>


        <div class="column medium-2 small-12 footer__block-social">
            <je:item runat="server" field="footer.socialTitle" tag="p" class="footer__block-social-title" />
            <je:repeater runat="server" source="footer.socialIcons">
                <item>
                    <je:a runat="server" href="{.link}" class="" target="_blank">
                        <je:img runat="server" field=".icon" class="footer__block-social-icon" />
                    </je:a>
                </item>
            </je:repeater>
        </div>
    </div>

    <div class="row">
        <div class="column medium-12 small-12 footer__legal">
            <je:item runat="server" field="footer.legal" tag="div" class="footer__legal-content" />
        </div>
    </div>
</footer>