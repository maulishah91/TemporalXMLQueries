<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Longest period (or periods) for employee with no change in salary</h2>
<xsl:for-each select="employees/employee">    
      <table border="1">
      <h3>
      <table border="1">
      <tr>
        <td style="text-align:left">Name </td>
        <td style="text-align:left"><xsl:value-of select="name"/></td>
      </tr>
      </table>
      </h3>  

      <table border="1">
        <tr bgcolor="#ccccff">
	<th style="text-align:left">Salary</th>
        <th style="text-align:left">Longest period(s)</th>
        <th style="text-align:left">Start Period</th>
	<th style="text-align:left">End Period</th>
      </tr>	      
      
      <xsl:for-each select="result">
	<tr>
	<td><xsl:value-of select="salary"/></td>
	<td><xsl:value-of select="period"/></td>
	<td><xsl:value-of select="start"/></td>
	<td><xsl:value-of select="end"/></td>
	</tr>
      </xsl:for-each>
      
      </table>
      <br/>
      </table>
      <br/>
      </xsl:for-each>
    
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


