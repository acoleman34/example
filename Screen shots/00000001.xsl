<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:seagull="http://www.seagullsw.com/legasuite/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:template match="seagull:header/seagull:screen">
    <xsl:element name="result">
        <xsl:choose>
            <xsl:when test="seagull:action/@key = 'enter'">
                <xsl:choose>
                   <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '1'">
                      <xsl:attribute name="screen">00000004</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '2'">
                      <xsl:attribute name="screen">00000010</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '3'">
                      <xsl:attribute name="screen">00000016</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '4'">
                      <xsl:attribute name="screen">00000012</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '5'">
                      <xsl:attribute name="screen">00000008</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD15027']/@value,$lcletters,$ucletters)) = '7'">
                      <xsl:attribute name="screen">start</xsl:attribute>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:attribute name="screen">MAINMENU</xsl:attribute>
                   </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="screen">MAINMENU</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
