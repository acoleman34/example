<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:seagull="http://www.seagullsw.com/legasuite/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:template match="seagull:header/seagull:screen">
    <xsl:element name="result">
        <xsl:choose>
            <xsl:when test="seagull:action/@key = 'f12'">
                <xsl:attribute name="screen">000000141</xsl:attribute>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'f3'">
                <xsl:attribute name="screen">00000014a</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="screen">00000018</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
