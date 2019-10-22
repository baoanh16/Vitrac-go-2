<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="about-us-partner">
				<div class="article-title-yl-center-upper"> 
					<p><xsl:value-of select="/BannerList/Title"></xsl:value-of></p>
				</div>
				<div class="container">
					<div class="about-us-partner-wrapper">
						<div class="partner-navigation-prev"><em class="lnr lnr-chevron-left"></em></div>
						<div class="partner-navigation-next"><em class="lnr lnr-chevron-right"></em></div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
                                <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
								
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
        <a>
        <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute><div class="swiper-image"><img class="lazyload blur-up">
        <xsl:attribute name="data-src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        </img></div>
								</div>
        
        </a>
									
    </xsl:template>
</xsl:stylesheet>