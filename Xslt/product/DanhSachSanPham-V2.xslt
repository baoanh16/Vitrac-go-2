<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<div class="product-order-item" id="sl-sort">
			<select class="ajaxsort">
				<option>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</option>
				<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
			</select>
		</div>

		<section class="vt-product-list-v2">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="SortBy">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-xl-4 col-md-6">
			<div class="product">
				<div class="img">
					<a>
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
					<xsl:choose>
						<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
							<div class="tag op1">
								<span>
									Mới
								</span>
							</div>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 3) mod 2 = 1">
							<span class="tag op3">
								Hot
							</span>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
							<span class="tag op2">
								Đã bán
							</span>
						</xsl:when>
					</xsl:choose>
					<div class="view-more">
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='title'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							<xsl:text>Xem thêm</xsl:text>
						</a>

					</div>
				</div>
				<div class="info">
					<p class="name">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</p>
					<p class="model">
						<span>Mã SP: </span>
						<xsl:text> </xsl:text>
						<xsl:value-of select='Code'></xsl:value-of>
					</p>
					<table>
						<tr>
							<td>
								<em class="mdi mdi-tag"></em>
								<strong>
									<xsl:value-of
										select="ProductProperties[FieldId = 15 or FieldId = 20 or FieldId = 21 or FieldId = 22 or FieldId = 23 or FieldId = 24 or FieldId = 25 or FieldId = 26 or FieldId = 27 or FieldId = 28 or FieldId = 60 or FieldId = 64]/Title"
										disable-output-escaping="yes" /></strong>
							</td>
							<td>
								<xsl:value-of
									select="ProductProperties[FieldId = 15 or FieldId = 20 or FieldId = 21 or FieldId = 22 or FieldId = 23 or FieldId = 24 or FieldId = 25 or FieldId = 26 or FieldId = 27 or FieldId = 28 or FieldId = 60 or FieldId = 64]/Options/Title"
									disable-output-escaping="yes" />
							</td>
						</tr>
						<tr>
							<td>
								<em class="mdi mdi-truck"></em>
								<strong>
									<xsl:value-of select="ProductProperties[FieldId = 10]/Title"
										disable-output-escaping="yes" /></strong>
							</td>
							<td>
								<xsl:value-of select="ProductProperties[FieldId = 10]/Options/Title"
									disable-output-escaping="yes" />
							</td>
						</tr>
						<tr>
							<td><em class="mdi mdi-calendar"></em><strong>
									<xsl:value-of select="ProductProperties[FieldId = 11]/Title"
										disable-output-escaping="yes" /></strong></td>
							<td>
								<xsl:value-of select="ProductProperties[FieldId = 11]/Options/Title"
									disable-output-escaping="yes" />
							</td>
						</tr>
						<tr>
							<td><em class="mdi mdi-clock-outline"></em><strong>
									<xsl:value-of select="ProductProperties[FieldId = 12]/Title"
										disable-output-escaping="yes" /></strong></td>
							<td>
								<xsl:value-of select="ProductProperties[FieldId = 12]/Options/Title"
									disable-output-escaping="yes" />
							</td>
						</tr>
						<tr>
							<td><em class="mdi mdi-barcode"></em><strong>
									<xsl:value-of select="ProductProperties[FieldId = 13]/Title"
										disable-output-escaping="yes" /></strong></td>
							<td>
								<xsl:value-of select="ProductProperties[FieldId = 13]/Options/Title"
									disable-output-escaping="yes" />
							</td>
						</tr>
						<tr>
							<td><em class="mdi mdi-map-marker"></em><strong>
									<xsl:value-of select="ProductProperties[FieldId = 57]/Title"
										disable-output-escaping="yes" /></strong></td>
							<td>
								<xsl:if test='count(ProductProperties[FieldId = 57]/Options) = 3'>
									<xsl:text>Toàn quốc</xsl:text>
								</xsl:if>
								<xsl:if test='count(ProductProperties[FieldId = 57]/Options) &lt; 3'>
									<xsl:apply-templates select="ProductProperties[FieldId = 57]/Options">
									</xsl:apply-templates>
								</xsl:if>
							</td>
						</tr>
					</table>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Options">
		<xsl:value-of select="Title"></xsl:value-of>
		<xsl:if test='position() != last()'>
			<xsl:text>, </xsl:text>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>