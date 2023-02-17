<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Mi biblioteca personal</h1>
            <table>
                <tr bgcolor="33FFA8">
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Precio</th>
                    <th>ISBN</th>
                </tr>
                <xsl:for-each select="libreria/libro">
                    <tr>   
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="isbn"/></td>
                    </tr> 
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>