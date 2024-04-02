<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title/>
			</head>
			<body>
				<h2 align="center"> Title and Artist </h2>
				<table align="center">
					<thead>
						<tr>
							<th>Title</th>
							<th>Artist</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="//CD">
							<xsl:choose>
								<xsl:when test="//CD[PRICE > 10] ">
									<tr>
										<td>
											<xsl:value-of select="TITLE"/>
										</td>
										<td>
											<xsl:value-of select="ARTIST"/>
										</td>
									</tr>
								</xsl:when>
							</xsl:choose>
						</xsl:for-each>
					</tbody>
					<tfoot>
						<tr>
							<th colspan="2"> For price >10 </th>
						</tr>
					</tfoot>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
