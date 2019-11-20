<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="about-us-partner" id="section-6">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="article-title-yl-center-upper">
			<p>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</p>
		</div>
		<div class="container">
			<div class="about-us-partner-wrapper">
				<!-- <div class="partner-navigation-prev"><em class="lnr lnr-chevron-left"></em></div>
				<div class="partner-navigation-next"><em class="lnr lnr-chevron-right"></em></div> -->
				<!-- <div class="swiper-container">
					<div class="swiper-wrapper"> -->
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>

				<!-- </div>
				</div> -->
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-xl-2 col-sm-3 col-6">
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
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>