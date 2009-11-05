<!-- For more info, see /usr/share/sgml/docbook/xsl-stylesheets/fo/params.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
  <xsl:import href="/usr/share/sgml/docbook/xsl-stylesheets/fo/docbook.xsl"/>
  <xsl:param name="chunker.output.encoding" select="'utf-8'"/>
  <xsl:param name="fop.extensions" select="1"/>
  <xsl:param name="paper.type" select="'A4'"/>
  <xsl:param name="ulink.show" select="0"/>
  <xsl:param name="draft.mode" select="'no'"/>
  <xsl:param name="section.autolabel" select="1"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>
  <xsl:param name="hyphenate">false</xsl:param>
  <xsl:param name="title.font.family" select="'Gothic'"/>
  <xsl:param name="body.font.family" select="'Mincho'"/>
  <xsl:param name="sans.font.family" select="'Gothic'"/>
  <xsl:param name="monospace.font.family" select="'Mincho'"/>
  <xsl:param name="admon.graphics" select="1"/>
  <xsl:param name="admon.graphics.path">../images/</xsl:param>
</xsl:stylesheet>
