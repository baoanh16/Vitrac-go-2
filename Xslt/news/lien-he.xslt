<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<article>
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</article>
	</xsl:template>
	<xsl:template match="News">
		<div class="item">
            <xsl:if test="position() =1">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
                </xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="title">
				<xsl:attribute name="data-type">
					<xsl:text>tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h3>
			</a>


			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>


	</xsl:template>
</xsl:stylesheet>
