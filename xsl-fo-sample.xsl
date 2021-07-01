<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:a="http://www.w3.org/1999/xhtml">
  <xsl:template match="a:html">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="a4">
          <fo:region-body padding-top="1in" padding-left="1.5mm" background-color="#222"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <xsl:apply-templates/>
    </fo:root>
  </xsl:template>

  <xsl:template match="a:body">
    <fo:page-sequence master-reference="a4">
      <fo:flow flow-name="xsl-region-body">
        <fo:table>
          <fo:table-body background-color="#333">
            <xsl:for-each select="a:table/a:tr">
              <fo:table-row>
                <xsl:for-each select="a:td">
                  <fo:table-cell padding="0.5mm" border-width="2mm" border-style="outset" border-color="#bbb" color="#aaff00" font-weight="bold" font-family="arial" text-align="center">
                    <xsl:if test="@colspan"><xsl:attribute name="number-columns-spanned"><xsl:value-of select="@colspan"/></xsl:attribute></xsl:if>
                    <xsl:value-of select="."/>
                  </fo:table-cell>
                </xsl:for-each>
              </fo:table-row>
            </xsl:for-each>
          </fo:table-body>
        </fo:table>
      </fo:flow>
    </fo:page-sequence>
  </xsl:template>
</xsl:stylesheet>