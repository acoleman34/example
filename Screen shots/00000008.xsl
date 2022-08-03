<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:seagull="http://www.seagullsw.com/legasuite/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:template match="seagull:header/seagull:screen">
    <xsl:element name="result">
        <xsl:choose>
            <xsl:when test="seagull:action/@key = 'roll_up'">
                       <xsl:attribute name="screen">00000008b</xsl:attribute>
            </xsl:when>
            <xsl:when test="seagull:action/@key = 'f6'">
                <xsl:attribute name="screen">000000063</xsl:attribute>
            </xsl:when>
            
            <xsl:when test="seagull:action/@key = 'enter'">
                <xsl:choose>
                   <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD11002']/@value,$lcletters,$ucletters)) = '2'">
                      <xsl:attribute name="screen">00000006</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD12002']/@value,$lcletters,$ucletters)) = '2'">
                      <xsl:attribute name="screen">000000061</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD13002']/@value,$lcletters,$ucletters)) = '2'">
                      <xsl:attribute name="screen">000000062</xsl:attribute>
                   </xsl:when>
                   <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD11002']/@value,$lcletters,$ucletters)) = '3'">
                      <xsl:attribute name="screen">00000019</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD12002']/@value,$lcletters,$ucletters)) = '3'">
                      <xsl:attribute name="screen">000000191</xsl:attribute>
                   </xsl:when>
                    <xsl:when test="normalize-space(translate(*/seagull:field[@name='FLD13002']/@value,$lcletters,$ucletters)) = '3'">
                      <xsl:attribute name="screen">000000192</xsl:attribute>
                   </xsl:when>
                   <xsl:otherwise>
                      <xsl:attribute name="screen">00000008</xsl:attribute>
                   </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
             <xsl:when test="seagull:action/@key = 'f3'">
                       <xsl:attribute name="screen">00000001</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="screen">00000008</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
