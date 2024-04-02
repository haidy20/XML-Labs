<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Forth Task</title>
			</head>
			<body>
				<table cellpadding="2" cellspacing="5" align="center" border="1" style="border: 1px solid black">
					<tbody>
						<xsl:for-each select="//word">
							<xsl:sort select="@id" data-type="text" order="ascending"/>
							<tr align="center">
								<td>
									<xsl:value-of select="@id"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
