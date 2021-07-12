<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'>

    <!-- ====================================================================== -->
    <!-- $id: entities.xsl, 2002/22/11 Exp $
         This file is part of the XSLT MathML Library distribution.
         See ./README or http://www.raleigh.ru/MathML/mmltex for
         copyright and other information                                        -->
    <!-- ====================================================================== -->

    <xsl:template name="replaceEntities">
        <xsl:param name="content"/>
        <xsl:if test="string-length($content)>0">
            <xsl:choose>
                <xsl:when test="starts-with($content,'&#x0025B;')">
                    <xsl:value-of select="'\varepsilon '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0025B;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varepsilon -->

                <!-- ====================================================================== -->
                <!-- 	Unicode 3.2
                    Greek
                    Range: 0370-03FF
                    http://www.unicode.org/charts/PDF/U0370.pdf	                    -->
                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x00393;')">
                    <xsl:value-of select="'\Gamma '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x00393;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Gamma capital Gamma, Greek -->
                <xsl:when test="starts-with($content,'&#x00394;')">
                    <xsl:value-of select="'\Delta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x00394;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Delta capital Delta, Greek -->
                <xsl:when test="starts-with($content,'&#x00398;')">
                    <xsl:value-of select="'\Theta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x00398;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Theta capital Theta, Greek -->
                <xsl:when test="starts-with($content,'&#x0039B;')">
                    <xsl:value-of select="'\Lambda '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0039B;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Lambda capital Lambda, Greek -->
                <xsl:when test="starts-with($content,'&#x0039E;')">
                    <xsl:value-of select="'\Xi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0039E;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Xi capital Xi, Greek -->
                <xsl:when test="starts-with($content,'&#x003A0;')">
                    <xsl:value-of select="'\Pi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003A0;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Pi capital Pi, Greek -->
                <xsl:when test="starts-with($content,'&#x003A3;')">
                    <xsl:value-of select="'\Sigma '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003A3;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Sigma capital Sigma, Greek -->
                <xsl:when test="starts-with($content,'&#x003A6;')">
                    <xsl:value-of select="'\Phi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003A6;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Phi capital Phi, Greek -->
                <xsl:when test="starts-with($content,'&#x003A8;')">
                    <xsl:value-of select="'\Psi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003A8;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Psi capital Psi, Greek -->
                <xsl:when test="starts-with($content,'&#x003A9;')">
                    <xsl:value-of select="'\Omega '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003A9;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Omega capital Omega, Greek -->
                <xsl:when test="starts-with($content,'&#x003B1;')">
                    <xsl:value-of select="'\alpha '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/alpha small alpha, Greek -->
                <xsl:when test="starts-with($content,'&#x003B2;')">
                    <xsl:value-of select="'\beta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B2;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/beta small beta, Greek -->
                <xsl:when test="starts-with($content,'&#x003B3;')">
                    <xsl:value-of select="'\gamma '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B3;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/gamma small gamma, Greek -->
                <xsl:when test="starts-with($content,'&#x003B4;')">
                    <xsl:value-of select="'\delta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B4;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/delta small delta, Greek -->
                <xsl:when test="starts-with($content,'&#x003B5;')">
                    <xsl:value-of select="'\epsilon '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B5;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/straightepsilon, small epsilon, Greek -->
                <xsl:when test="starts-with($content,'&#x003B6;')">
                    <xsl:value-of select="'\zeta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B6;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/zeta small zeta, Greek -->
                <xsl:when test="starts-with($content,'&#x003B7;')">
                    <xsl:value-of select="'\eta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B7;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/eta small eta, Greek -->
                <xsl:when test="starts-with($content,'&#x003B8;')">
                    <xsl:value-of select="'\theta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B8;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/theta straight theta, small theta, Greek -->
                <xsl:when test="starts-with($content,'&#x003B9;')">
                    <xsl:value-of select="'\iota '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003B9;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/iota small iota, Greek -->
                <xsl:when test="starts-with($content,'&#x003BA;')">
                    <xsl:value-of select="'\kappa '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003BA;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/kappa small kappa, Greek -->
                <xsl:when test="starts-with($content,'&#x003BB;')">
                    <xsl:value-of select="'\lambda '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003BB;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/lambda small lambda, Greek -->
                <xsl:when test="starts-with($content,'&#x003BC;')">
                    <xsl:value-of select="'\mu '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003BC;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/mu small mu, Greek -->
                <xsl:when test="starts-with($content,'&#x003BD;')">
                    <xsl:value-of select="'\nu '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003BD;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nu small nu, Greek -->
                <xsl:when test="starts-with($content,'&#x003BE;')">
                    <xsl:value-of select="'\xi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003BE;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/xi small xi, Greek -->
                <xsl:when test="starts-with($content,'&#x003C0;')">
                    <xsl:value-of select="'\pi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C0;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/pi small pi, Greek -->
                <xsl:when test="starts-with($content,'&#x003C1;')">
                    <xsl:value-of select="'\rho '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/rho small rho, Greek -->
                <xsl:when test="starts-with($content,'&#x003C2;')">
                    <xsl:value-of select="'\varsigma '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C2;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varsigma -->
                <xsl:when test="starts-with($content,'&#x003C3;')">
                    <xsl:value-of select="'\sigma '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C3;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/sigma small sigma, Greek -->
                <xsl:when test="starts-with($content,'&#x003C4;')">
                    <xsl:value-of select="'\tau '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C4;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/tau small tau, Greek -->
                <xsl:when test="starts-with($content,'&#x003C5;')">
                    <xsl:value-of select="'\upsilon '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C5;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/upsilon small upsilon, Greek -->
                <xsl:when test="starts-with($content,'&#x003C6;')">
                    <xsl:value-of select="'\phi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C6;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/straightphi - small phi, Greek -->
                <xsl:when test="starts-with($content,'&#x003C7;')">
                    <xsl:value-of select="'\chi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C7;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/chi small chi, Greek -->
                <xsl:when test="starts-with($content,'&#x003C8;')">
                    <xsl:value-of select="'\psi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C8;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/psi small psi, Greek -->
                <xsl:when test="starts-with($content,'&#x003C9;')">
                    <xsl:value-of select="'\omega '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003C9;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/omega small omega, Greek -->
                <xsl:when test="starts-with($content,'&#x003D1;')">
                    <xsl:value-of select="'\vartheta '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003D1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/vartheta - curly or open theta -->
                <xsl:when test="starts-with($content,'&#x003D2;')">
                    <xsl:value-of select="'\Upsilon '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003D2;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Upsilon capital Upsilon, Greek -->
                <xsl:when test="starts-with($content,'&#x003D5;')">
                    <xsl:value-of select="'\varphi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003D5;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varphi - curly or open phi -->
                <xsl:when test="starts-with($content,'&#x003D6;')">
                    <xsl:value-of select="'\varpi '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003D6;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/varpi -->
                <xsl:when test="starts-with($content,'&#x003F0;')">
                    <xsl:value-of select="'\varkappa '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003F0;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varkappa -->
                <xsl:when test="starts-with($content,'&#x003F1;')">
                    <xsl:value-of select="'\varrho '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x003F1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varrho -->

                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x0200B;')">
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0200B;')"/>
                    </xsl:call-template>
                </xsl:when>                        <!--short form of  &InvisibleComma; -->
                <xsl:when test="starts-with($content,'&#x02026;')">
                    <xsl:value-of select="'\dots '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02026;')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="starts-with($content,'&#x02032;')">
                    <xsl:value-of select="'\prime '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02032;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/prime prime or minute -->
                <xsl:when test="starts-with($content,'&#x02061;')">
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02061;')"/>
                    </xsl:call-template>
                </xsl:when>                        <!-- ApplyFunction -->
                <xsl:when test="starts-with($content,'&#x02062;')">
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02062;')"/>
                    </xsl:call-template>
                </xsl:when>                        <!-- InvisibleTimes -->
                <!-- ====================================================================== -->
                <!-- 	Unicode 3.2
                    Letterlike Symbols
                    Range: 2100-214F
                    http://www.unicode.org/charts/PDF/U2100.pdf	                    -->
                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x0210F;&#x0FE00;')">
                    <xsl:value-of select="'\hbar '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0210F;&#x0FE00;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/hbar - Planck's over 2pi -->
                <xsl:when test="starts-with($content,'&#x0210F;')">
                    <xsl:value-of select="'\hslash '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0210F;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/hslash - variant Planck's over 2pi --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02111;')">
                    <xsl:value-of select="'\Im '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02111;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/Im - imaginary   -->
                <xsl:when test="starts-with($content,'&#x02113;')">
                    <xsl:value-of select="'\ell '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02113;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ell - cursive small l -->
                <xsl:when test="starts-with($content,'&#x02118;')">
                    <xsl:value-of select="'\wp '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02118;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/wp - Weierstrass p -->
                <xsl:when test="starts-with($content,'&#x0211C;')">
                    <xsl:value-of select="'\Re '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0211C;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/Re - real -->
                <xsl:when test="starts-with($content,'&#x02127;')">
                    <xsl:value-of select="'\mho '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02127;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/mho - conductance -->
                <xsl:when test="starts-with($content,'&#x02135;')">
                    <xsl:value-of select="'\aleph '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02135;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/aleph aleph, Hebrew -->
                <xsl:when test="starts-with($content,'&#x02136;')">
                    <xsl:value-of select="'\beth '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02136;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/beth - beth, Hebrew --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02137;')">
                    <xsl:value-of select="'\gimel '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02137;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/gimel - gimel, Hebrew --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02138;')">
                    <xsl:value-of select="'\daleth '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02138;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/daleth - daleth, Hebrew --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02145;')">
                    <xsl:value-of select="'D'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02145;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--D for use in differentials, e.g., within integrals -->
                <xsl:when test="starts-with($content,'&#x02146;')">
                    <xsl:value-of select="'d'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02146;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--d for use in differentials, e.g., within integrals -->
                <xsl:when test="starts-with($content,'&#x02147;')">
                    <xsl:value-of select="'e'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02147;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--e use for the exponential base of the natural logarithms -->
                <xsl:when test="starts-with($content,'&#x02148;')">
                    <xsl:value-of select="'i'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02148;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--i for use as a square root of -1 -->

                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x02192;')">
                    <xsl:value-of select="'\to '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02192;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/rightarrow /to A: =rightward arrow -->

                <!-- ====================================================================== -->
                <!-- 	Unicode 3.2
                    Mathematical Operators
                    Range: 2200-22FF
                    http://www.unicode.org/charts/PDF/U2200.pdf                         -->
                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x02200;')">
                    <xsl:value-of select="'\forall '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02200;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/forall for all -->
                <xsl:when test="starts-with($content,'&#x02201;')">
                    <xsl:value-of select="'\complement '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02201;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/complement - complement sign --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02202;')">
                    <xsl:value-of select="'\partial '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02202;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/partial partial differential -->
                <xsl:when test="starts-with($content,'&#x02203;')">
                    <xsl:value-of select="'\exists '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02203;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/exists at least one exists -->
                <xsl:when test="starts-with($content,'&#x02204;')">
                    <xsl:value-of select="'\nexists '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02204;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nexists - negated exists --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02205;&#x0FE00;')">
                    <xsl:value-of select="'\emptyset '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02205;&#x0FE00;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/emptyset - zero, slash -->
                <xsl:when test="starts-with($content,'&#x02205;')">
                    <xsl:value-of select="'\varnothing '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02205;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/varnothing - circle, slash --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x02206;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02206;')"/></xsl:call-template></xsl:when>-->
                <xsl:when test="starts-with($content,'&#x02207;')">
                    <xsl:value-of select="'\nabla '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02207;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nabla del, Hamilton operator -->
                <xsl:when test="starts-with($content,'&#x02208;')">
                    <xsl:value-of select="'\in '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02208;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/in R: set membership  -->
                <xsl:when test="starts-with($content,'&#x02209;')">
                    <xsl:value-of select="'\notin '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02209;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/notin N: negated set membership -->
                <xsl:when test="starts-with($content,'&#x0220B;')">
                    <xsl:value-of select="'\ni '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0220B;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ni /owns R: contains -->
                <xsl:when test="starts-with($content,'&#x0220C;')">
                    <xsl:value-of select="'\not\ni '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0220C;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--negated contains -->
                <xsl:when test="starts-with($content,'&#x0220F;')">
                    <xsl:value-of select="'\prod '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0220F;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/prod L: product operator -->
                <xsl:when test="starts-with($content,'&#x02210;')">
                    <xsl:value-of select="'\coprod '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02210;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/coprod L: coproduct operator -->
                <xsl:when test="starts-with($content,'&#x02211;')">
                    <xsl:value-of select="'\sum '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02211;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/sum L: summation operator -->
                <xsl:when test="starts-with($content,'&#x02212;')">
                    <xsl:value-of select="'-'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02212;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--B: minus sign -->
                <xsl:when test="starts-with($content,'&#x02213;')">
                    <xsl:value-of select="'\mp '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02213;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/mp B: minus-or-plus sign -->
                <xsl:when test="starts-with($content,'&#x02214;')">
                    <xsl:value-of select="'\dotplus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02214;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/dotplus B: plus sign, dot above --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x02215;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02215;')"/></xsl:call-template></xsl:when>-->
                <xsl:when test="starts-with($content,'&#x02216;')">
                    <xsl:value-of select="'\setminus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02216;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/setminus B: reverse solidus -->
                <xsl:when test="starts-with($content,'&#x02217;')">
                    <xsl:value-of select="'\ast '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02217;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--low asterisk -->
                <xsl:when test="starts-with($content,'&#x02218;')">
                    <xsl:value-of select="'\circ '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02218;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/circ B: composite function (small circle) -->
                <xsl:when test="starts-with($content,'&#x02219;')">
                    <xsl:value-of select="'\bullet '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02219;')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="starts-with($content,'&#x0221A;')">
                    <xsl:value-of select="'\surd '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0221A;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/surd radical -->
                <xsl:when test="starts-with($content,'&#x0221D;')">
                    <xsl:value-of select="'\propto '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0221D;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/propto R: is proportional to -->
                <xsl:when test="starts-with($content,'&#x0221E;')">
                    <xsl:value-of select="'\infty '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0221E;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/infty infinity -->
                <!--		<xsl:when test="starts-with($content,'&#x0221F;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0221F;')"/></xsl:call-template></xsl:when>		right (90 degree) angle -->
                <xsl:when test="starts-with($content,'&#x02220;')">
                    <xsl:value-of select="'\angle '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02220;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/angle - angle -->
                <xsl:when test="starts-with($content,'&#x02221;')">
                    <xsl:value-of select="'\measuredangle '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02221;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/measuredangle - angle-measured -->    <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02222;')">
                    <xsl:value-of select="'\sphericalangle '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02222;')"/>
                    </xsl:call-template>
                </xsl:when><!--/sphericalangle angle-spherical -->    <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02223;')">
                    <xsl:value-of select="'\mid '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02223;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/mid R: -->
                <xsl:when test="starts-with($content,'&#x02224;&#x0FE00;')">
                    <xsl:value-of select="'\nshortmid '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02224;&#x0FE00;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nshortmid --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02224;')">
                    <xsl:value-of select="'\nmid '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02224;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nmid --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02225;')">
                    <xsl:value-of select="'\parallel '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02225;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/parallel R: parallel -->
                <xsl:when test="starts-with($content,'&#x02226;&#x0FE00;')">
                    <xsl:value-of select="'\nshortparallel '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02226;&#x0FE00;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nshortparallel N: not short par --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02226;')">
                    <xsl:value-of select="'\nparallel '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02226;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nparallel N: not parallel --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02227;')">
                    <xsl:value-of select="'\wedge '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02227;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/wedge /land B: logical and -->
                <xsl:when test="starts-with($content,'&#x02228;')">
                    <xsl:value-of select="'\vee '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02228;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/vee /lor B: logical or -->
                <xsl:when test="starts-with($content,'&#x02229;')">
                    <xsl:value-of select="'\cap '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02229;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/cap B: intersection -->
                <xsl:when test="starts-with($content,'&#x0222A;')">
                    <xsl:value-of select="'\cup '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0222A;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/cup B: union or logical sum -->
                <xsl:when test="starts-with($content,'&#x0222B;')">
                    <xsl:value-of select="'\int '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0222B;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/int L: integral operator -->
                <xsl:when test="starts-with($content,'&#x0222C;')">
                    <xsl:value-of select="'\iint '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0222C;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--double integral operator --> <!-- Required amsmath -->
                <xsl:when test="starts-with($content,'&#x0222D;')">
                    <xsl:value-of select="'\iiint '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0222D;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/iiint triple integral operator -->    <!-- Required amsmath -->
                <xsl:when test="starts-with($content,'&#x0222E;')">
                    <xsl:value-of select="'\oint '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0222E;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/oint L: contour integral operator -->
                <!--		<xsl:when test="starts-with($content,'&#x0222F;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0222F;')"/></xsl:call-template></xsl:when>-->
                <!--		<xsl:when test="starts-with($content,'&#x02230;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02230;')"/></xsl:call-template></xsl:when>-->
                <!--		<xsl:when test="starts-with($content,'&#x02231;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02231;')"/></xsl:call-template></xsl:when>-->
                <!--		<xsl:when test="starts-with($content,'&#x02232;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02232;')"/></xsl:call-template></xsl:when>-->
                <!--		<xsl:when test="starts-with($content,'&#x02233;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02233;')"/></xsl:call-template></xsl:when>-->
                <xsl:when test="starts-with($content,'&#x02234;')">
                    <xsl:value-of select="'\therefore '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02234;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/therefore R: therefore --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02235;')">
                    <xsl:value-of select="'\because '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02235;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/because R: because --> <!-- Required amssymb -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02236;')">
                    <xsl:value-of select="':'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02236;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ratio -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02237;')">
                    <xsl:value-of select="'\colon\colon '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02237;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Colon, two colons -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02238;')">
                    <xsl:value-of select="'\dot{-}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02238;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/dotminus B: minus sign, dot above -->
                <!--		<xsl:when test="starts-with($content,'&#x02239;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02239;')"/></xsl:call-template></xsl:when>		-->
                <!--		<xsl:when test="starts-with($content,'&#x0223A;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0223A;')"/></xsl:call-template></xsl:when>		minus with four dots, geometric properties -->
                <!--		<xsl:when test="starts-with($content,'&#x0223B;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0223B;')"/></xsl:call-template></xsl:when>		homothetic -->
                <xsl:when test="starts-with($content,'&#x0223C;')">
                    <xsl:value-of select="'\sim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0223C;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/sim R: similar -->
                <xsl:when test="starts-with($content,'&#x0223D;')">
                    <xsl:value-of select="'\backsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0223D;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/backsim R: reverse similar --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x0223E;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0223E;')"/></xsl:call-template></xsl:when>		most positive -->
                <!--		<xsl:when test="starts-with($content,'&#x0223F;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0223F;')"/></xsl:call-template></xsl:when>		ac current -->
                <xsl:when test="starts-with($content,'&#x02240;')">
                    <xsl:value-of select="'\wr '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02240;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/wr B: wreath product -->
                <xsl:when test="starts-with($content,'&#x02241;')">
                    <xsl:value-of select="'\nsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02241;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nsim N: not similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02242;')">
                    <xsl:value-of select="'\eqsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02242;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/esim R: equals, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02243;')">
                    <xsl:value-of select="'\simeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02243;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/simeq R: similar, equals -->
                <xsl:when test="starts-with($content,'&#x02244;')">
                    <xsl:value-of select="'\not\simeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02244;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nsimeq N: not similar, equals -->
                <xsl:when test="starts-with($content,'&#x02245;')">
                    <xsl:value-of select="'\cong '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02245;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/cong R: congruent with -->
                <!--		<xsl:when test="starts-with($content,'&#x02246;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02246;')"/></xsl:call-template></xsl:when>		similar, not equals -->
                <xsl:when test="starts-with($content,'&#x02247;')">
                    <xsl:value-of select="'\ncong '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02247;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ncong N: not congruent with --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02248;')">
                    <xsl:value-of select="'\approx '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02248;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/approx R: approximate -->
                <!--		<xsl:when test="starts-with($content,'&#x02249;&#x00338;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02249;&#x00338;')"/></xsl:call-template></xsl:when>	not, vert, approximate -->
                <xsl:when test="starts-with($content,'&#x02249;')">
                    <xsl:value-of select="'\not\approx '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02249;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/napprox N: not approximate -->
                <xsl:when test="starts-with($content,'&#x0224A;')">
                    <xsl:value-of select="'\approxeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0224A;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/approxeq R: approximate, equals --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x0224B;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0224B;')"/></xsl:call-template></xsl:when>		approximately identical to -->
                <!--		<xsl:when test="starts-with($content,'&#x0224C;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0224C;')"/></xsl:call-template></xsl:when>		/backcong R: reverse congruent -->
                <xsl:when test="starts-with($content,'&#x0224D;')">
                    <xsl:value-of select="'\asymp '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0224D;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/asymp R: asymptotically equal to -->
                <xsl:when test="starts-with($content,'&#x0224E;')">
                    <xsl:value-of select="'\Bumpeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0224E;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Bumpeq R: bumpy equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0224F;')">
                    <xsl:value-of select="'\bumpeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0224F;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bumpeq R: bumpy equals, equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02250;')">
                    <xsl:value-of select="'\doteq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02250;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/doteq R: equals, single dot above -->
                <xsl:when test="starts-with($content,'&#x02251;')">
                    <xsl:value-of select="'\doteqdot '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02251;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/doteqdot /Doteq R: eq, even dots --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02252;')">
                    <xsl:value-of select="'\fallingdotseq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02252;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/fallingdotseq R: eq, falling dots --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02253;')">
                    <xsl:value-of select="'\risingdotseq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02253;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/risingdotseq R: eq, rising dots --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x02254;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02254;')"/></xsl:call-template></xsl:when>		/coloneq R: colon, equals -->
                <!--		<xsl:when test="starts-with($content,'&#x02255;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02255;')"/></xsl:call-template></xsl:when>		/eqcolon R: equals, colon -->
                <xsl:when test="starts-with($content,'&#x02256;')">
                    <xsl:value-of select="'\eqcirc '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02256;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/eqcirc R: circle on equals sign --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02257;')">
                    <xsl:value-of select="'\circeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02257;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/circeq R: circle, equals --> <!-- Required amssymb -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02258;')">
                    <xsl:value-of select="'\stackrel{\frown}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02258;')"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02259;')">
                    <xsl:value-of select="'\stackrel{\wedge}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02259;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/wedgeq R: corresponds to (wedge, equals) -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x0225A;')">
                    <xsl:value-of select="'\stackrel{\vee}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225A;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--logical or, equals -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x0225B;')">
                    <xsl:value-of select="'\stackrel{\star}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225B;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--equal, asterisk above -->
                <xsl:when test="starts-with($content,'&#x0225C;')">
                    <xsl:value-of select="'\triangleq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225C;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/triangleq R: triangle, equals --> <!-- Required amssymb -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x0225D;')">
                    <xsl:value-of select="'\stackrel{\scriptscriptstyle\mathrm{def}}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225D;')"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x0225E;')">
                    <xsl:value-of select="'\stackrel{\scriptscriptstyle\mathrm{m}}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225E;')"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x0225F;')">
                    <xsl:value-of select="'\stackrel{?}{=}'"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0225F;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/questeq R: equal with questionmark -->
                <!--		<xsl:when test="starts-with($content,'&#x02260;&#x0FE00;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02260;&#x0FE00;')"/></xsl:call-template></xsl:when>	not equal, dot -->
                <xsl:when test="starts-with($content,'&#x02260;')">
                    <xsl:value-of select="'\ne '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02260;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ne /neq R: not equal -->
                <!--		<xsl:when test="starts-with($content,'&#x02261;&#x020E5;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02261;&#x020E5;')"/></xsl:call-template></xsl:when>	reverse not equivalent -->
                <xsl:when test="starts-with($content,'&#x02261;')">
                    <xsl:value-of select="'\equiv '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02261;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/equiv R: identical with -->
                <xsl:when test="starts-with($content,'&#x02262;')">
                    <xsl:value-of select="'\not\equiv '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02262;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nequiv N: not identical with -->
                <!--		<xsl:when test="starts-with($content,'&#x02263;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x02263;')"/></xsl:call-template></xsl:when>		-->
                <xsl:when test="starts-with($content,'&#x02264;')">
                    <xsl:value-of select="'\le '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02264;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/leq /le R: less-than-or-equal -->
                <xsl:when test="starts-with($content,'&#x02265;')">
                    <xsl:value-of select="'\ge '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02265;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/geq /ge R: greater-than-or-equal -->
                <xsl:when test="starts-with($content,'&#x02266;')">
                    <xsl:value-of select="'\leqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02266;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/leqq R: less, double equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02267;')">
                    <xsl:value-of select="'\geqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02267;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/geqq R: greater, double equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02268;')">
                    <xsl:value-of select="'\lneqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02268;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/lneqq N: less, not double equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02269;')">
                    <xsl:value-of select="'\gneqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02269;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/gneqq N: greater, not dbl equals --> <!-- Required amssymb -->
                <!--		<xsl:when test="starts-with($content,'&#x0226A;&#x00338;&#x0FE00;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0226A;&#x00338;&#x0FE00;')"/></xsl:call-template></xsl:when>	not much less than, variant -->
                <!--		<xsl:when test="starts-with($content,'&#x0226A;&#x00338;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0226A;&#x00338;')"/></xsl:call-template></xsl:when>	not, vert, much less than -->
                <xsl:when test="starts-with($content,'&#x0226A;')">
                    <xsl:value-of select="'\ll '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226A;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ll R: double less-than sign -->
                <!--		<xsl:when test="starts-with($content,'&#x0226B;&#x00338;&#x0FE00;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0226B;&#x00338;&#x0FE00;')"/></xsl:call-template></xsl:when>	not much greater than, variant -->
                <!--		<xsl:when test="starts-with($content,'&#x0226B;&#x00338;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x0226B;&#x00338;')"/></xsl:call-template></xsl:when>	not, vert, much greater than -->
                <xsl:when test="starts-with($content,'&#x0226B;')">
                    <xsl:value-of select="'\gg '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226B;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/gg R: dbl greater-than sign -->
                <xsl:when test="starts-with($content,'&#x0226C;')">
                    <xsl:value-of select="'\between '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226C;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/between R: between --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0226D;')">
                    <xsl:value-of select="'\not\asymp '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226D;')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="starts-with($content,'&#x0226E;')">
                    <xsl:value-of select="'\nless '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226E;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nless N: not less-than --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0226F;')">
                    <xsl:value-of select="'\ngtr '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0226F;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ngtr N: not greater-than --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02270;&#x020E5;')">
                    <xsl:value-of select="'\nleq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02270;&#x020E5;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/nleq N: not less-than-or-equal --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02270;')">
                    <xsl:value-of select="'\nleqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02270;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nleqq N: not less, dbl equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02271;&#x020E5;')">
                    <xsl:value-of select="'\ngeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02271;&#x020E5;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/ngeq N: not greater-than-or-equal --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02271;')">
                    <xsl:value-of select="'\ngeqq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02271;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ngeqq N: not greater, dbl equals --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02272;')">
                    <xsl:value-of select="'\lesssim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02272;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/lesssim R: less, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02273;')">
                    <xsl:value-of select="'\gtrsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02273;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/gtrsim R: greater, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02274;')">
                    <xsl:value-of select="'\not\lesssim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02274;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not less, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02275;')">
                    <xsl:value-of select="'\not\gtrsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02275;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not greater, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02276;')">
                    <xsl:value-of select="'\lessgtr '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02276;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/lessgtr R: less, greater --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02277;')">
                    <xsl:value-of select="'\gtrless '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02277;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/gtrless R: greater, less --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02278;')">
                    <xsl:value-of select="'\not\lessgtr '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02278;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not less, greater --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02279;')">
                    <xsl:value-of select="'\not\gtrless '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02279;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not greater, less --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0227A;')">
                    <xsl:value-of select="'\prec '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227A;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/prec R: precedes -->
                <xsl:when test="starts-with($content,'&#x0227B;')">
                    <xsl:value-of select="'\succ '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227B;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/succ R: succeeds -->
                <xsl:when test="starts-with($content,'&#x0227C;')">
                    <xsl:value-of select="'\preccurlyeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227C;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/preccurlyeq R: precedes, curly eq --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0227D;')">
                    <xsl:value-of select="'\succcurlyeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227D;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/succcurlyeq R: succeeds, curly eq --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0227E;')">
                    <xsl:value-of select="'\precsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227E;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/precsim R: precedes, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x0227F;')">
                    <xsl:value-of select="'\succsim '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0227F;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/succsim R: succeeds, similar --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02280;')">
                    <xsl:value-of select="'\nprec '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02280;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nprec N: not precedes --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02281;')">
                    <xsl:value-of select="'\nsucc '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02281;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/nsucc N: not succeeds --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x02282;')">
                    <xsl:value-of select="'\subset '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02282;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/subset R: subset or is implied by -->
                <xsl:when test="starts-with($content,'&#x02283;')">
                    <xsl:value-of select="'\supset '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02283;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/supset R: superset or implies -->
                <xsl:when test="starts-with($content,'&#x02284;')">
                    <xsl:value-of select="'\not\subset '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02284;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not subset -->
                <xsl:when test="starts-with($content,'&#x02285;')">
                    <xsl:value-of select="'\not\supset '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02285;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--not superset -->
                <xsl:when test="starts-with($content,'&#x02286;')">
                    <xsl:value-of select="'\subseteq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02286;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/subseteq R: subset, equals -->
                <xsl:when test="starts-with($content,'&#x02287;')">
                    <xsl:value-of select="'\supseteq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02287;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/supseteq R: superset, equals -->
                <xsl:when test="starts-with($content,'&#x0228E;')">
                    <xsl:value-of select="'\uplus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0228E;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/uplus B: plus sign in union -->
                <xsl:when test="starts-with($content,'&#x02293;')">
                    <xsl:value-of select="'\sqcap '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02293;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/sqcap B: square intersection -->
                <xsl:when test="starts-with($content,'&#x02294;')">
                    <xsl:value-of select="'\bigsqcup '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02294;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/sqcup B: square union -->
                <xsl:when test="starts-with($content,'&#x02295;')">
                    <xsl:value-of select="'\oplus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02295;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/oplus B: plus sign in circle -->
                <xsl:when test="starts-with($content,'&#x02296;')">
                    <xsl:value-of select="'\ominus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02296;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/ominus B: minus sign in circle -->
                <xsl:when test="starts-with($content,'&#x02297;')">
                    <xsl:value-of select="'\otimes '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02297;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/otimes B: multiply sign in circle -->
                <xsl:when test="starts-with($content,'&#x02298;')">
                    <xsl:value-of select="'\oslash '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02298;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/oslash B: solidus in circle -->
                <!-- ? -->
                <xsl:when test="starts-with($content,'&#x02299;')">
                    <xsl:value-of select="'\odot '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x02299;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/odot B: middle dot in circle --> <!--/bigodot L: circle dot operator -->
                <xsl:when test="starts-with($content,'&#x0229F;')">
                    <xsl:value-of select="'\boxminus '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x0229F;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/boxminus B: minus sign in box --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x022A4;')">
                    <xsl:value-of select="'\top '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022A4;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/top top -->
                <xsl:when test="starts-with($content,'&#x022A5;')">
                    <xsl:value-of select="'\perp '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022A5;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/perp R: perpendicular --><!--/bot bottom -->
                <xsl:when test="starts-with($content,'&#x022A6;')">
                    <xsl:value-of select="'\vdash '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022A6;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/vdash R: vertical, dash -->
                <xsl:when test="starts-with($content,'&#x022A7;')">
                    <xsl:value-of select="'\vDash '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022A7;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/vDash R: vertical, dbl dash --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x022A8;')">
                    <xsl:value-of select="'\models '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022A8;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/models R: -->
                <xsl:when test="starts-with($content,'&#x022AA;')">
                    <xsl:value-of select="'\Vvdash '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022AA;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/Vvdash R: triple vertical, dash --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x022C0;')">
                    <xsl:value-of select="'\bigwedge '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C0;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bigwedge L: logical or operator -->
                <xsl:when test="starts-with($content,'&#x022C1;')">
                    <xsl:value-of select="'\bigvee '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bigcap L: intersection operator -->
                <xsl:when test="starts-with($content,'&#x022C2;')">
                    <xsl:value-of select="'\bigcap '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C2;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bigvee L: logical and operator -->
                <xsl:when test="starts-with($content,'&#x022C3;')">
                    <xsl:value-of select="'\bigcup '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C3;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bigcup L: union operator -->
                <xsl:when test="starts-with($content,'&#x022C4;')">
                    <xsl:value-of select="'\diamond '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C4;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/diamond B: open diamond -->
                <xsl:when test="starts-with($content,'&#x022C5;')">
                    <xsl:value-of select="'\cdot '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C5;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/cdot B: small middle dot -->
                <xsl:when test="starts-with($content,'&#x022C6;')">
                    <xsl:value-of select="'\star '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C6;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/star B: small star, filled -->
                <xsl:when test="starts-with($content,'&#x022C7;')">
                    <xsl:value-of select="'\divideontimes '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C7;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/divideontimes B: division on times --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x022C8;')">
                    <xsl:value-of select="'\bowtie '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022C8;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/bowtie R: -->
                <xsl:when test="starts-with($content,'&#x022CD;')">
                    <xsl:value-of select="'\backsimeq '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022CD;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/backsimeq R: reverse similar, eq --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x022EF;')">
                    <xsl:value-of select="'\cdots '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022EF;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/cdots, three dots, centered -->
                <!--		<xsl:when test="starts-with($content,'&#x022F0;')"><xsl:value-of select="' '" /><xsl:call-template name="replaceEntities"><xsl:with-param name="content" select="substring-after($content, '&#x022F0;')"/></xsl:call-template></xsl:when>		three dots, ascending -->
                <xsl:when test="starts-with($content,'&#x022F1;')">
                    <xsl:value-of select="'\ddots '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x022F1;')"/>
                    </xsl:call-template>
                </xsl:when>        <!--/ddots, three dots, descending -->

                <!-- ====================================================================== -->
                <xsl:when test="starts-with($content,'&#x025A1;')">
                    <xsl:value-of select="'\square '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x025A1;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/square, square --> <!-- Required amssymb -->
                <xsl:when test="starts-with($content,'&#x025AA;')">
                    <xsl:value-of select="'\blacksquare '"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '&#x025AA;')"/>
                    </xsl:call-template>
                </xsl:when>    <!--/blacksquare, square, filled  --> <!-- Required amssymb -->

                <xsl:when test='starts-with($content,"&apos;")'>
                    <xsl:value-of select='"\text{&apos;}"'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select='substring-after($content, "&apos;")'/>
                    </xsl:call-template>
                </xsl:when><!-- \text required amslatex -->
                <xsl:when test='starts-with($content,"(")'>
                    <xsl:value-of select='"\left("'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '(')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test='starts-with($content,")")'>
                    <xsl:value-of select='"\right)"'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, ')')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test='starts-with($content,"[")'>
                    <xsl:value-of select='"\left["'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '[')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test='starts-with($content,"]")'>
                    <xsl:value-of select='"\right]"'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, ']')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test='starts-with($content,"{")'>
                    <xsl:value-of select='"\left\{"'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '{')"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test='starts-with($content,"}")'>
                    <xsl:value-of select='"\right\}"'/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring-after($content, '}')"/>
                    </xsl:call-template>
                </xsl:when>


                <xsl:otherwise>
                    <xsl:value-of select="substring($content,1,1)"/>
                    <xsl:call-template name="replaceEntities">
                        <xsl:with-param name="content" select="substring($content, 2)"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    <xsl:template name="replaceMtextEntities">
        <xsl:param name="content"/>
        <xsl:choose>
            <xsl:when
                    test="contains($content,'&#x02009;&#x0200A;&#x0200A;')">    <!-- ThickSpace - space of width 5/18 em -->
                <xsl:call-template name="replaceMtextEntities">
                    <xsl:with-param name="content"
                                    select="concat(substring-before($content,'&#x02009;&#x0200A;&#x0200A;'),'\hspace{0.28em}',substring-after($content,'&#x02009;&#x0200A;&#x0200A;'))"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="contains($content,'&#x02009;')">    <!-- ThinSpace - space of width 3/18 em -->
                <xsl:call-template name="replaceMtextEntities">
                    <xsl:with-param name="content"
                                    select="concat(substring-before($content,'&#x02009;'),'\hspace{0.17em}',substring-after($content,'&#x02009;'))"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="normalize-space($content)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>