<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<!-- include docbook xsl -->
<xsl:import href="/usr/share/docbook-env/xsl/html-chunk.xsl"/>
<!-- <xsl:import href="/usr/share/docbook-env/xsl/common/common.xsl"/> -->

<!-- parameters -->
<xsl:param name="admon.graphics.path">../images/</xsl:param>
<xsl:param name="html.stylesheet" select="'style.css'"/>

<xsl:param name="chunk.section.depth" select="1"/>
<xsl:param name="toc.section.depth" select="2"/>

<xsl:param name="html.cleanup" select="1"></xsl:param>

</xsl:stylesheet>
