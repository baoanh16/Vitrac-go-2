<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="count(/ProductList/Product)>0">
		<section class="product-display" style='padding: 0'>
			<div class="container">
				<p style='margin-bottom: 10px'><xsl:value-of select="/ProductList/SearchSumary" disable-output-escaping="yes" /></p>
				<div class="product-item-wrapper">
					<xsl:apply-templates select='/ProductList/Product'></xsl:apply-templates>
				</div>
			</div>
		</section>
      </xsl:when>
      <xsl:otherwise>
        <section class='cart-list'>
    <div class="container">
        <section class="cart-page clearfix">
            <h3 class="producttitle">
            <i class="fa fa-cart-arrow-down"></i>
            <xsl:text> </xsl:text>
            <xsl:value-of select="/ProductList/NoResults"></xsl:value-of>
          </h3>
          <section class="cart-button clearfix">
            <a href="/" class="btn-back">
                Quay lại
              <!-- <xsl:value-of select="/ProductList/BackText"></xsl:value-of> -->
            </a>
          </section>
        </section>
    </div>
        </section>
        <!-- <div class="noresults">
          <xsl:value-of select="/ProductList/NoResults" disable-output-escaping="yes"></xsl:value-of>
        </!--> 
      </xsl:otherwise>
      <!-- /ProductList/NoResults -->
    </xsl:choose>
  </xsl:template>
    <xsl:template match='Product'>
		<div class="product-item">
			<div class="wrapper">
				<div class="product-image">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
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
				<div class="product-caption">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select='Title'></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
