<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<!-- ================================================================ -->
<!-- DocBook XSL を読み込む -->
<xsl:import href="../docbook-xsl/html/chunk.xsl"/>
<xsl:include href="../docbook-xsl/html/manifest.xsl"/>

<!-- onechunk にする場合は、chunk.xsl の代わりにこちらを使うこと -->
<!-- <xsl:import href="../docbook-xsl/html/onechunk.xsl"/> -->

<!-- ディストリビューション標準のを使う場合はこちらを使う
<xsl:import href="/usr/share/sgml/docbook/xsl-stylesheets/html/chunk.xsl"/>
<xsl:include href="/usr/share/sgml/docbook/xsl-stylesheets/html/manifest.xsl"/>
-->

<!-- ================================================================ -->
<!-- 文字エンコーディング -->
<!-- <xsl:param name="chunker.output.encoding" select="'EUC-JP'"/> -->
<xsl:param name="chunker.output.encoding" select="'utf-8'"/>

<!-- ================================================================ -->
<!-- ファイル分割(Chunk)設定 -->
<!-- セクション分割深さ -->
<xsl:param name="chunk.section.depth" select="1"/>

<!-- 最初のセクションで分割するか(TOCを別ページにするか) -->
<xsl:param name="chunk.first.sections" select="'1'"/>

<!-- id アトリビュートをファイル名に使用するか -->
<xsl:param name="use.id.as.filename" select="1"/>

<!-- ================================================================ -->
<!-- 出力スタイル -->
<!-- 章番号を付与するか -->
<xsl:param name="chapter.autolabel" select="1"/>

<!-- セクション番号を付与するか -->
<xsl:param name="section.autolabel" select="1"/>

<!-- セクションラベルに章番号を含めるか -->
<xsl:param name="section.label.includes.component.label" select="1"/>

<!-- 関数フォーマット -->
<xsl:param name="funcsynopsis.decoration" select="1"/>

<!-- 関数定義スタイル (ANSI, K&R) -->
<xsl:param name="funcsynopsis.style">ansi</xsl:param>

<!-- ================================================================ -->
<!-- TOC (目次) 設定 -->
<!-- TOC レベル (sect の何レベルまで TOC に出すか) -->
<xsl:param name="toc.section.depth" select="2"/>

<!-- TOC 出力設定 -->
<xsl:param name="generate.toc">
appendix  toc
article/appendix  nop
article   toc,title
book      toc,title,figure,table,example,equation
chapter   toc
part      toc
preface   toc
qandadiv  toc
qandaset  toc
reference toc
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
set       toc
</xsl:param>

<!-- ================================================================ -->
<!-- グラフィックス関係 -->
<!-- adomonition グラフィックを使用するか -->
<xsl:param name="admon.graphics" select="1"/>

<!-- admon graphics のパス  -->
<xsl:param name="admon.graphics.path">images/</xsl:param>

<!-- ================================================================ -->
<!-- CSS スタイルシートの指定 -->
<xsl:param name="html.stylesheet" select="'style.css'"/>

<!-- ================================================================ -->
<!-- HTML 出力設定 -->
<!-- HTML ファイルの拡張子 -->
<xsl:param name="html.ext" select="'.html'"/>

<!-- HTML インデンテーション -->
<xsl:param name="chunker.output.indent" select="'yes'"/>

</xsl:stylesheet>
