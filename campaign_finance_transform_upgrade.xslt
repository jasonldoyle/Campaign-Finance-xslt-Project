<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Campaign Data</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
            color: #333;
          }
          h1 {
            text-align: center;
            color: #007bff;
          }
          table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
          }
          th {
            background-color: #007bff;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
          tr:hover {
            background-color: #f1f1f1;
          }
        </style>
      </head>
      <body>
        <h1>Campaign Contributions</h1>
        <table>
          <thead>
            <tr>
              <th>Election Cycle</th>
              <th>Candidate Name</th>
              <th>Borough District</th>
              <th>Net Contributions</th>
              <th>Public Fund Payment</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="response/row">
              <tr>
                <td><xsl:value-of select="el_cycle"/></td>
                <td><xsl:value-of select="cand_name"/></td>
                <td><xsl:value-of select="boro_dist"/></td>
                <td><xsl:value-of select="net_cntns"/></td>
                <td><xsl:value-of select="pubfnd_pmt"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>