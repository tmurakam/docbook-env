<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns="http://www.w3.org/1999/xhtml"
                version='1.0'
		exclude-result-prefixes="#default"
>

<!-- set encoding -->
<!-- <xsl:param name="chunker.output.encoding" select="'EUC-JP'"/> -->
<xsl:param name="chunker.output.encoding" select="'utf-8'"/>

<!-- section split depth -->
<xsl:param name="chunk.section.depth" select="1"/>

<!-- indentation -->
<xsl:param name="chunker.output.indent" select="'yes'"/>

<!-- Create a link to a CSS stylesheet named 'style.css' in all html
     output so that pages can be beautified.  Browsers not supporting
     CSS should safely ignore the link. -->
<xsl:param name="html.stylesheet" select="'style.css'"/>

<!-- Should graphics be used for admonitions (notes, warnings)? 0 or 1 -->
<xsl:param name="admon.graphics" select="1"/>

<!-- If using admon graphics (1 above), what is path to graphics?  -->
<xsl:param name="admon.graphics.path">images/</xsl:param>

<!-- Note: the default extension for graphics is .png unless the
     following line is uncommented and .ext is replaced with the 
     desired extension. -->
<!-- <xsl:param name="graphic.default.extension" select="'.ext'"/> -->

<!-- Make funcsynopsis look pretty -->
<xsl:param name="funcsynopsis.decoration" select="1"/>

<!-- Extension for HTML files -->
<xsl:param name="html.ext" select="'.html'"/>

<!-- Generate TOCs for book, article, part -->
<xsl:param name="generate.book.toc" select="1"/>
<xsl:param name="generate.article.toc" select="1"/>
<xsl:param name="generate.part.toc" select="1"/>

<!-- generate-book-titlepage -->

<!-- generate-article-titlepage -->

<!-- Equivalent to chunk-skip-first-element-list - forces TOC on separate page 
     If 0, first sect is on page for chapter or article -->
<xsl:param name="chunk.first.sections" select="'1'"/>

<!-- NOT IN LDP.DSL -->
<!-- Create chunks for top-level sections. If 0, chunks will only be
     created for chapters/appendixes, and NOT for sectx elements -->
<!--
not supported
<xsl:param name="chunk.sections" select="'1'"/>
-->

<!-- list-element-list - NO LONGER NEEDED - bug fix -->

<!-- When chunking, use id attribute as filename? 0 or 1 -->
<xsl:param name="use.id.as.filename" select="1"/>

<!-- Should chapters be labeled? 0 or 1 -->
<xsl:param name="chapter.autolabel" select="1"/>

<!-- Should sections be labeled? 0 or 1 -->
<xsl:param name="section.autolabel" select="1"/>

<!-- Related to section labels, should those labels include the chapter
     number in them (i.e., 1.1, 1.2, 1.3, 1.4 )-->
<xsl:param name="section.label.includes.component.label" select="1"/>

<!-- To what depth (in sections) should the TOC go? -->
<xsl:param name="toc.section.depth" select="3"/>

<!-- Custom 'emphasis' template to allow 'role="strong"' to 
     also produce a bold item. -->
<xsl:template match="emphasis">
  <xsl:choose>
    <xsl:when test="(@role='strong') or (@role='bold')">
      <xsl:call-template name="inline.boldseq"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="inline.italicseq"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- book-titlepage-recto-elements
     article-titlepage-recto-elements 
     article-titlepage-recto-mode 
     article-title 
     
     - Customizing these elements (for instance, to list what is on the
       title page) involves writing a layer for html/titlepage.templates.xml and the
       other files html/titlepage.xsl and html/titlepage.templates.xsl - Norm
       is doing something funky here and I haven't fully figured it out. -->


<!-- NOT IN LDP.DSL. Format Q and A labels. 
     Added by dcm 2003-05-19. -->

<xsl:template match="question" mode="label.markup">
  <xsl:text>Q</xsl:text>
</xsl:template>

<xsl:template match="answer" mode="label.markup">
  <xsl:text>A</xsl:text>
</xsl:template>

</xsl:stylesheet>
