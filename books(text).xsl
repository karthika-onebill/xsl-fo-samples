<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>

<xsl:template match="/">
Books Collection
<xsl:for-each select="bookstore/book">
Author Name :
<xsl:value-of select="author_name"> </xsl:value-of>
Title :
<xsl:value-of select="title"> </xsl:value-of>
Price :
<xsl:value-of select="price"> </xsl:value-of>
Description : 
<xsl:value-of select="description"></xsl:value-of>

</xsl:for-each>

</xsl:template>

</xsl:stylesheet>

