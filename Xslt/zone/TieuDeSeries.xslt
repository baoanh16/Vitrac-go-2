<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode='Zone1'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Zone1'>
		<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Zone2'>
		<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match='Zone' mode="Zone3">
		<xsl:if test="IsActive = 'true'">
			<div class="heading-title">
				<h3>
					<xsl:value-of select='Title'></xsl:value-of>
				</h3>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>