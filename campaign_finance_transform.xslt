<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Campaign Data</title>
      </head>
      <body>
        <h1>Campaign Contributions</h1>
        <table border="1">
          <tr>
            <th>Election Cycle</th>
            <th>Candidate Name</th>
            <th>Borough District</th>
            <th>Net Contributions</th>
            <th>Public Fund Payment</th>
          </tr>
          <xsl:for-each select="response/row">
            <tr>
              <td><xsl:value-of select="el_cycle"/></td>
              <td><xsl:value-of select="cand_name"/></td>
              <td><xsl:value-of select="boro_dist"/></td>
              <td><xsl:value-of select="net_cntns"/></td>
              <td><xsl:value-of select="pubfnd_pmt"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>