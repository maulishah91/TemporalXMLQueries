<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>History of maximum salaries of Employees in department d005</h2>
    <table border="1">
      <tr bgcolor="#ccccff">
        <th style="text-align:left">Maximum Salary</th>
        <th style="text-align:left">Start Period</th>
        <th style="text-align:left">End period</th>
      </tr>
      <xsl:for-each select="result/sal">
      <tr>
        <td><xsl:value-of select="current()"/></td>
        <td><xsl:value-of select="@tstart"/></td>
 	<td><xsl:value-of select="@tend"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>



