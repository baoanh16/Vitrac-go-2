<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="feedback-section">
			<div class="container">
				<div class="title">
					<h1>
						<xsl:value-of select='/ZoneList/ModuleTitle' disable-output-escaping='yes'></xsl:value-of>
					</h1>
				</div>
				<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test="position() = 1">
			<div class="row">
				<xsl:apply-templates select='News'></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News'>
		<div class="col-lg-6">
			<div class="feedback">
				<div class="img">
					<div class="wrapper">
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="text-wrapper">
						<span class="quote quote-left">
							<img src="/Data/Sites/1/skins/default/img/left-quotes.png" alt="" />
						</span>
						<div class="text">
							<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
						</div><span class="quote quote-right">
							<img src="/Data/Sites/1/skins/default/img/right-quotes.png" alt="" /></span>
					</div>
					<div class="info">
						<p class="name">
							<xsl:value-of select='Title'></xsl:value-of>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</p>
						<p class="job">
							<xsl:value-of select='SubTitle'></xsl:value-of>
						</p>
						<p class="unit">
							<xsl:value-of select='BriefContent'></xsl:value-of>
						</p>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>