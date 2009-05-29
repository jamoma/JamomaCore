<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:variable name="compliant">
    <xsl:choose>
      <xsl:when test="system-property('xsl:vendor')='Microsoft' or system-property('xsl:vendor')='Transformiix'">1</xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="document('./_c74_common.xml')/root = ''">1</xsl:when>
          <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
</xsl:stylesheet>