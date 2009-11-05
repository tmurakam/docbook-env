<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<!-- include docbook xsl -->
<xsl:import href="/usr/share/sgml/docbook/xsl-stylesheets/fo/docbook.xsl"/>

<!-- font -->
<xsl:param name="body.font.family" select="'Ryumin-Light'"/>
<xsl:param name="title.font.family" select="'GothicBBB-Medium'"/>
<xsl:param name="paper.type" select="'A4'"/>

<xsl:param name="use.extensions" select="0"/>
<xsl:param name="generate.toc" select="1"/>
<xsl:param name="section.autolabel" select="1"/>

</xsl:stylesheet>
