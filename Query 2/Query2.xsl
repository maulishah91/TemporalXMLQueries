<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Employee snapshot making more than $80,000 on 1995-01-01</h2>
    <table border="1">
      <tr bgcolor="#ccccff">
        <th style="text-align:left">Name</th>
        <th style="text-align:left">Salary</th>
        <th style="text-align:left">Department no</th>
      </tr>
      <xsl:for-each select="employees/employee">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="salary"/></td>
 	<td><xsl:value-of select="deptno"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


