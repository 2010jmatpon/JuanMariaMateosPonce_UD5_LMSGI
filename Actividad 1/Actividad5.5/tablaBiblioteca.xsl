<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Mi biblioteca personal</h1>
            <table>
                <tr bgcolor="33FFA8">
                    <th>ISBN</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Precio</th>
                    <th>Numero Paginas</th>

                </tr>
                <xsl:for-each select="libreria/libro">
                    <tr>   
                        <xsl:choose>
                            <xsl:when test="numPaginas &gt; 150">
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td bgcolor="#FF0000"><xsl:value-of select="numPaginas"/></td>
                            </xsl:when> 
                            <xsl:when test="numPaginas &lt; 150">
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td bgcolor="#1BFF00"><xsl:value-of select="numPaginas"/></td>
                            </xsl:when> 
                        </xsl:choose>
                    </tr> 
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>