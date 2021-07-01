<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
<html>
<body>
<center>
<h2>
Books Collection</h2>

<table border="1px" cellspacing="15px" cellpadding="10px" style="border-collapse:collapse">
<tr>
<th> Author Name</th>
<th> Title</th>
<th> Price</th>
<th>Description</th>
</tr>
<xsl:for-each select="bookstore/book">

<tr>
<td>

<xsl:value-of select="author_name"> </xsl:value-of>
</td>
<td>
<xsl:value-of select="title"> </xsl:value-of></td>
<td><xsl:value-of select="price"> </xsl:value-of></td>

<td><xsl:value-of select="description"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>
</center>
</body>
</html>

</xsl:template>

</xsl:stylesheet>

