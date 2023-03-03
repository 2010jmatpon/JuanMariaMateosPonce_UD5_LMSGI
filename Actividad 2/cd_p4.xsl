<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>MUSICA</h1>
        <table>
            <tr>
                <th>Album</th>
                <th>Artista</th>
                <th>Canciones</th>
                <th>Duracion</th>
                <th></th>
                <th>Sello Discografico</th>
                <th>Año Publicación</th>
            </tr>
            <xsl:for-each select="CDs/album[discografica='Rimas Entertainment']">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td>
                        <ul>
                            <xsl:for-each select="canciones/cancion">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </td>
                    <td>
                        <ul>
                            <xsl:for-each select="canciones/cancion[@duracion &lt; 200]">
                                <li>
                    
                                    <xsl:value-of select="@duracion"/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </td>
                    
                    <td><xsl:value-of select="duracion"/></td>
                    <td><xsl:value-of select="discografica"/></td>
                    <td><xsl:value-of select="anoPublicacion"/></td>
                </tr>
            </xsl:for-each>  
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>