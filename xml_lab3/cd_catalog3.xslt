<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style>
          .red {
            background-color: red;
          }

          .green {
            background-color: green;
          }
        </style>
			</head>
			<body>
				<h2 align="center">Colored Table</h2>
				<table align="center">
					<thead>
						<tr>
							<th>TITLE</th>
							<th>ARTIST</th>
							<th>COUNTRY</th>
							<th>COMPANY</th>
							<th>PRICE</th>
							<th>YEAR</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="//CD">
							<tr>
								<td>
									<xsl:attribute name="class"><xsl:choose><xsl:when test="PRICE > 10">red</xsl:when><xsl:otherwise>green</xsl:otherwise></xsl:choose></xsl:attribute>
									<xsl:value-of select="TITLE"/>
								</td>
								<td>
									<xsl:value-of select="ARTIST"/>
								</td>
								<td>
									<xsl:value-of select="COUNTRY"/>
								</td>
								<td>
									<xsl:value-of select="COMPANY"/>
								</td>
								<td>
									<xsl:value-of select="PRICE"/>
								</td>
								<td>
									<xsl:value-of select="YEAR"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
					<tfoot>
						<tr>
							<th colspan="2">Table in Green and Red</th>
						</tr>
					</tfoot>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
