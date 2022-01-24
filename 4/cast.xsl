<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="/">
        
        <xsl:element name="house">
                <xsl:for-each select="house/cat">
                <xsl:sort select="@name" order="descending"/>    

                <xsl:element name="cat">
                    <xsl:element name="name"><xsl:value-of select="@name"/></xsl:element>
                    <xsl:element name="color"><xsl:value-of select="@color"/></xsl:element>
                    <xsl:element name="character"><xsl:value-of select="@character"/></xsl:element>
                    <xsl:element name="phrase"><xsl:value-of select="."/></xsl:element>                    
                </xsl:element>

                </xsl:for-each>
            </xsl:element>
         
    </xsl:template>    
</xsl:stylesheet>