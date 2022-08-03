<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:seagull="http://www.seagullsw.com/legasuite/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:template match="seagull:header/seagull:screen">
    <xsl:element name="result">
        <xsl:choose>
            <xsl:when test="seagull:action/@key = 'f9'">
                <xsl:attribute name="screen">00000016</xsl:attribute>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'f4'">
                <xsl:choose>
                <!-- one less then what you read on the screen. This will handle all rows. -->
                   <xsl:when test="seagull:cursor/seagull:position/@x='40'">
                      <xsl:attribute name="screen">000000231</xsl:attribute>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:attribute name="screen">00000016</xsl:attribute>
                   </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'f3'">
                <xsl:attribute name="screen">00000001</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="screen">00000016</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
