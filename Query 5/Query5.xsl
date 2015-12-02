<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Employee's longest consecutive period in same department and manager</h2>
    <table border="1">
      <tr bgcolor="#ccccff">
        <th style="text-align:left">Emp no</th>
        <th style="text-align:left">Name</th>
        <th style="text-align:left">Department no</th>
	<th style="text-align:left">Manager</th>
	<th style="text-align:left">Longest period in days</th>
	<th style="text-align:left">Start date</th>
	<th style="text-align:left">End date</th>
      </tr>
      <xsl:for-each select="result/employee">
      <tr>
        <td><xsl:value-of select="empno"/></td>
        <td><xsl:value-of select="name"/></td>
 	<td><xsl:value-of select="deptNo"/></td>
	<td><xsl:value-of select="manager"/></td>
	<td><xsl:value-of select="period/@period"/></td>
	<td><xsl:value-of select="deptNo/@tstart"/></td>
	<td><xsl:value-of select="deptNo/@tend"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


