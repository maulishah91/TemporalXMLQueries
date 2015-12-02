<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Department histories for the period 1994-05-01 - 1996-05-06.</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Dept No</th>
        <th style="text-align:left">Dept Name</th>
     	  <th style="text-align:left">Manager Details</th>
      </tr>
      <xsl:for-each select="result/department">
	<tr>       
	<td><xsl:value-of select="deptno"/></td>
   <td><xsl:value-of select="deptname"/></td>
	<td>
	  <table border="1">
	<tr bgcolor="#ccccff">
	<th style="text-align:left">Manager No</th>
	<th style="text-align:left">Manager Start date</th>
	<th style="text-align:left">Manager End date</th>
	  
	</tr>
	
	<xsl:for-each select="mgrno">
      <tr>
	<td><xsl:value-of select="current()"/></td>
	<td><xsl:value-of select="@tstart"/></td>
	<td><xsl:value-of select="@tend"/></td>
      </tr>
	
      </xsl:for-each>
	</table>	
	</td>
	</tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


