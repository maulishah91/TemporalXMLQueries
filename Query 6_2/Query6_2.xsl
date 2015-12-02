<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Average salary for every job title</h2>
<xsl:for-each select="result/average">
<table border="1">
<tr>
<th style="text-align:left">Title : <xsl:value-of select="title"/></th>
</tr>
    
    <table border="1">
      <tr bgcolor="#ccccff">
        <th style="text-align:left">Average Salary</th>
        <th style="text-align:left">Start Period</th>
        <th style="text-align:left">End period</th>
      </tr>
      <xsl:for-each select="sal">
      <tr>
        <td><xsl:value-of select="current()"/></td>
        <td><xsl:value-of select="@tstart"/></td>
 	<td><xsl:value-of select="@tend"/></td>
      </tr>
      </xsl:for-each>
    </table>
</table>
<br/>
</xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


