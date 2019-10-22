<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-brand-swiper">
			<div class="container">
				<div class="product-brand-wrapper">
					<div class="row" style="margin-bottom: -30px">
						<xsl:apply-templates select="/ZoneList/Zone" mode='Zone1'></xsl:apply-templates>
					</div>
					<!-- <div class="swiper-container">
						<div class="swiper-wrapper">
						</div>
					</div> -->
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode='Zone1'>
		<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Zone2'>
		<xsl:if test="IsActive = 'true'">
			<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<!-- <xsl:template match="Zone" mode='Zone3'>

		<xsl:apply-templates select="Zone" mode="Zone4"></xsl:apply-templates>

	</xsl:template> -->
	<xsl:template match="Zone" mode='Zone3'>
		<div class="col-lg-3 col-6">
			<div class="wrapper" style="margin-bottom: 30px">
				<div class="swiper-image">
					<a href="#" style="height: auto;padding: 20px;">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<p style="margin-bottom: 10px;font-size: 16px;font-weight: 600;height: 48px;">
							<xsl:value-of select='Title'></xsl:value-of>
						</p>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>