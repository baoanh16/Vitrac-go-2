<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
			<section class="doi-tac">
				<div class="doi-tac-title">
					<h1>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h1>
				</div>
				<div class="container">
					
						<xsl:apply-templates select="/ZoneList/Zone" mode="child1"></xsl:apply-templates>
					
				</div>
			</section>
	</xsl:template>
	<xsl:template match="Zone" mode="child1">
        <div class="list-item">
            
          <xsl:apply-templates select="Zone" mode="Child2"></xsl:apply-templates>
    
        </div>
		
	</xsl:template>
    <xsl:template match="Zone" mode="Child2">
        
        
        <div class="item">
			<a class="img">
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
    </xsl:template>
</xsl:stylesheet>
