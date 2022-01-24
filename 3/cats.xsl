<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table>
                    <tr>
                        <td>Имя кота</td>
                        <td>Порода</td>
                        <td>Цвет</td>
                        <td>Вес</td>
                    </tr>

                    <xsl:for-each select="house/cat">
                    <xsl:sort select="@breed" order="descending"/>    
                    <xsl:sort select="@weight" data-type="number"/>

                    <xsl:if test="@weight &gt; 6">
                        <tr>
                            <td><xsl:value-of select="@name"/></td>
                            <td><xsl:value-of select="@breed"/></td>
                            <td><xsl:value-of select="@color"/></td>
                            <td><xsl:value-of select="@weight"/></td>
                        </tr>
                    </xsl:if>

                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>    
</xsl:stylesheet>