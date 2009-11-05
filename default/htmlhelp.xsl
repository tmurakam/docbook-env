<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:doc="http://nwalsh.com/xsl/documentation/1.0"
                xmlns:exsl="http://exslt.org/common"
                xmlns:set="http://exslt.org/sets"
		version="1.0"
                exclude-result-prefixes="doc exsl set">

<xsl:include href="../docbook-xsl/htmlhelp/htmlhelp.xsl"/>

<xsl:param name="htmlhelp.encoding" select="'sjis'"/>
<xsl:param name="chunker.output.encoding" select="'sjis'"/>

<xsl:param name="html.stylesheet" select="'style.css'"/>
<xsl:param name="admon.graphics.path">images/</xsl:param>
<xsl:param name="funcsynopsis.style">ansi</xsl:param>

</xsl:stylesheet>
