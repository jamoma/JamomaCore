<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:strip-space elements="*"/>

  <xsl:variable name="doctype" select="'vignette'"/>

	<xsl:include href='../_c74_platform.xsl'/>
	
  <xsl:variable name="jargon_enable">
    <xsl:choose>
      <xsl:when test="$compliant=1">
        <xsl:value-of select="document('../_c74_common.xml')/root/setting[@name='jargon_enable']/@value"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="document('../../_c74_common.xml')/root/setting[@name='jargon_enable']/@value"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="jargon_mouseover">
    <xsl:choose>
      <xsl:when test="$compliant=1">
        <xsl:value-of select="document('../_c74_common.xml')/root/setting[@name='jargon_mouseover']/@value"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="document('../../_c74_common.xml')/root/setting[@name='jargon_mouseover']/@value"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="refs_root_loc">
    <xsl:choose> 
      <xsl:when test="$compliant=1"> 
        <xsl:value-of select="'./refpages'"/>
      </xsl:when>  
      <xsl:otherwise>  
        <xsl:value-of select="'../../refpages'"/>
      </xsl:otherwise>  
    </xsl:choose>  
  </xsl:variable>

  <xsl:variable name="refs_root_link" select="'../../refpages'"/> <!-- relative to calling XML page -->
  <xsl:variable name="patchname" /> <!-- for openfilefront -->
  <xsl:variable name="patchfile" /> <!-- for openfilefront -->
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../../_c74_common.css"/>
			<title><xsl:value-of select="/vignette/@name"/></title>
      </head>
      <body>
<!-- 
			Go and apply all the templates for the root
			-->
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

<!--
      Body styles
      -->
    
  <xsl:template match="openpatchlink">
    <xsl:if test="$patchfile != ''">
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="concat('max:openfilefront/', $patchname, '/', $patchfile)"/>
        </xsl:attribute>
        <xsl:apply-templates />
      </a>
    </xsl:if>
  </xsl:template>

  <!--
        Body styles
        -->

    <xsl:template match="vignette">
      <div class="basestyle">
        <xsl:apply-templates/>
      </div>
    </xsl:template>

  <!-- 
  			markup elements
  			-->
    <xsl:template match="o">
      <xsl:call-template name="object_link">
        <xsl:with-param name="name" select="."/>
        <xsl:with-param name="objname" select="@objname"/>
      </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>
