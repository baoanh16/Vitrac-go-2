<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="about-us-partner">
                <div class="article-title-yl-center-upper"> 
                        <p>NHà cung cấp</p>
                    </div>
                    <div class="container">
                        <div class="about-us-partner-wrapper">
                            <div class="partner-navigation-prev"><em class="lnr lnr-chevron-left"></em></div>
                            <div class="partner-navigation-next"><em class="lnr lnr-chevron-right"></em></div>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
				
			</section>
	</xsl:template>
	<xsl:template match="Zone">
        <xsl:apply-templates select="News" mode="child-1"></xsl:apply-templates>
    </xsl:template>
    <!-- <xsl:template match="News" mode="child-1">  
        <xsl:apply-templates select="News" mode="child-2"></xsl:apply-templates>
    </xsl:template> -->
	<xsl:template match="News" mode="child-1">
		<div class="swiper-slide">
			<a class="swiper-image">
				
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
            </a>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>