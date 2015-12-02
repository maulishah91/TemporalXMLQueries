<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/employee">
  <html>
  <body>
  <h2>Salary History</h2>
<h3>Name: <xsl:value-of select="name"/> </h3>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Salary</th>
        <th style="text-align:left">Start Date</th>
        <th style="text-align:left">End Date</th>
      </tr>
      <xsl:for-each select="salary_history/salary">
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


