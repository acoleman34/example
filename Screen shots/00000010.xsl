<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:seagull="http://www.seagullsw.com/legasuite/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:template match="seagull:header/seagull:screen">
    <xsl:element name="result">
        <xsl:choose>
            <xsl:when test="seagull:action/@key = 'f4'">
                <xsl:choose>
                   <xsl:when test="seagull:cursor/seagull:position/@x='38'">
                      <xsl:attribute name="screen">00000023</xsl:attribute>
                   </xsl:when>
                   <xsl:when test="seagull:cursor/seagull:position/@x='55'">
                      <xsl:attribute name="screen">00000017</xsl:attribute>
                   </xsl:when>
                   <xsl:when test="seagull:cursor/seagull:position/@x='17'">
                      <xsl:attribute name="screen">00000003</xsl:attribute>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:attribute name="screen">00000010</xsl:attribute>
                   </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'f3'">
                <xsl:attribute name="screen">00000001</xsl:attribute>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'roll_down'">
                <xsl:attribute name="screen">0000000101</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="screen">00000010</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
