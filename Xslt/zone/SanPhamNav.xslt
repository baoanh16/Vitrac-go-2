<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="vt-zone-navigation vt-section">
			<div class="container">

				<xsl:apply-templates select="/ZoneList/Zone" mode='Title'></xsl:apply-templates>
				<!-- <xsl:value-of select="/ZoneList/RootTitle"></xsl:value-of> -->

				<div class="navigation-wrapper">
					<div class="toggle-mobile">Danh sách</div>
					<div class="list-item">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="IsActive = 'true'">
			<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<div class="item">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text>item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="ic">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<p>
							<xsl:value-of select="Title"></xsl:value-of>
						</p>
						<span>
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode='Title'>
		<xsl:if test="IsActive = 'true'">
			<xsl:apply-templates select="Zone" mode="Zone3-Title"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3-Title">
		<xsl:if test="IsActive = 'true'">
			<h2 class="vt-title text-left">
				<xsl:value-of select='Title'></xsl:value-of>
			</h2>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>