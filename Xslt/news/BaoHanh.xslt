<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() =1 or position() = 2 or position() = 3">

			<section class="introduce-about-us" id="section-1">
				<xsl:attribute name='id'>
					<xsl:text>section-</xsl:text>
					<xsl:value-of select='position()'></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode="Quote"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<!-- <xsl:if test="position() =2">

			<section class="introduce-about-us-company" id="section-2">
				<div class="container">
					<div class="article-title-yl-center-upper">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="table-wrapper">
						<xsl:apply-templates select="News" mode="Table"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3">
			<section class="about-us-vision" id="section-3">
				<div class="container">
					<div class="article-title-yl-center-upper">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="row figure-wrapper">
						<xsl:apply-templates select="News" mode="Vision"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if> -->
	</xsl:template>

	<xsl:template match="News" mode="Quote">
		<div class="col-12 col-lg-3">
			<div class="text">
				<div class="figure-image">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-12 col-lg-9">
			<div class="text-caption">
				<h1>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h1>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Table">

		<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="Vision">
		<div class="col-lg-5">
			<div class="content-image">
				<div class="figure-image">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="content-caption">
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>