<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<div class="product-order-item" id="sl-sort" style="display:none;">
			<select class="ajaxsort">
				<option>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</option>
				<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
			</select>
		</div>

		<section class="vt-product-list vt-section">
			<div class="container">
				<div class="product-table">
					<table>
						<thead>
							<tr>
								<td colspan="7">
									<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
								</td>
							</tr>
							<tr>
								<td>Tên sản phẩm</td>
								<td>Thương hiệu</td>
								<td>Model</td>
								<td>Năm sản xuất</td>
								<td>Giờ hoạt động</td>
								<td>Serial/ PIN No</td>
								<td>Địa điểm</td>
							</tr>
						</thead>
						<tbody>
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</tbody>
					</table>
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
		<tr>
			<td class="product-item">
				<figure>
					<xsl:choose>
						<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
							<div class="promotion op1">
								<span>
									Mới
								</span>
							</div>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 3) mod 2 = 1">
							<span class="promotion op3">
								Hot
							</span>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
							<span class="promotion op2">
								Đã bán
							</span>
						</xsl:when>
					</xsl:choose>
					<div class="image">
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
					</div>
					<figcaption>
						<h5>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h5>
					</figcaption>
				</figure>
			</td>
			<td>
				<xsl:value-of select="ProductProperties[FieldId = 15 or FieldId = 20 or FieldId = 21 or FieldId = 22 or FieldId = 23 or FieldId = 24 or FieldId = 25 or FieldId = 26 or FieldId = 27 or FieldId = 28]/Options/Title" disable-output-escaping="yes" />
			</td>
			<td>
				<xsl:value-of select="ProductProperties[FieldId = 10]/Options/Title" disable-output-escaping="yes" />
			</td>
			<td>
				<xsl:value-of select="ProductProperties[FieldId = 11]/Options/Title" disable-output-escaping="yes" />
			</td>
			<td>
				<xsl:value-of select="ProductProperties[FieldId = 12]/Options/Title" disable-output-escaping="yes" />
			</td>
			<td>
				<xsl:value-of select="ProductProperties[FieldId = 13]/Options/Title" disable-output-escaping="yes" />
			</td>
			<td>
				<xsl:apply-templates select="ProductProperties[FieldId = 57]/Options"></xsl:apply-templates>
				<!-- <xsl:value-of select="ProductProperties[FieldId = 57]/Options/Title" disable-output-escaping="yes" /> -->
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="Options">
		<xsl:value-of select="Title"></xsl:value-of>
		<xsl:if test='position() != last()'>
		<xsl:text>, </xsl:text>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
