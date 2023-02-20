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
                    <th>Numero Paginas</th>
                </tr>
                <xsl:for-each select="libreria/libro">
                    <tr>   
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="isbn"/></td>
                        <xsl:choose> 
                            <xsl:when test="numPaginas &gt; 150">
                                <xsl:apply-templates select="numPaginas"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="numPaginas"/>
                                </td>                                
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr> 
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
<xsl:template match="numPaginas">
        <td bgcolor="FF0000">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>