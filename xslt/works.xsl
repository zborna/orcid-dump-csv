<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0"
	xmlns:address="http://www.orcid.org/ns/address" xmlns:email="http://www.orcid.org/ns/email" xmlns:history="http://www.orcid.org/ns/history" xmlns:employment="http://www.orcid.org/ns/employment" xmlns:education="http://www.orcid.org/ns/education" xmlns:other-name="http://www.orcid.org/ns/other-name" xmlns:deprecated="http://www.orcid.org/ns/deprecated" xmlns:funding="http://www.orcid.org/ns/funding" xmlns:research-resource="http://www.orcid.org/ns/research-resource" xmlns:service="http://www.orcid.org/ns/service" xmlns:researcher-url="http://www.orcid.org/ns/researcher-url" xmlns:distinction="http://www.orcid.org/ns/distinction" xmlns:internal="http://www.orcid.org/ns/internal" xmlns:membership="http://www.orcid.org/ns/membership" xmlns:person="http://www.orcid.org/ns/person" xmlns:personal-details="http://www.orcid.org/ns/personal-details" xmlns:bulk="http://www.orcid.org/ns/bulk" xmlns:common="http://www.orcid.org/ns/common" xmlns:record="http://www.orcid.org/ns/record" xmlns:keyword="http://www.orcid.org/ns/keyword" xmlns:activities="http://www.orcid.org/ns/activities" xmlns:qualification="http://www.orcid.org/ns/qualification" xmlns:external-identifier="http://www.orcid.org/ns/external-identifier" xmlns:error="http://www.orcid.org/ns/error" xmlns:preferences="http://www.orcid.org/ns/preferences" xmlns:invited-position="http://www.orcid.org/ns/invited-position" xmlns:work="http://www.orcid.org/ns/work" xmlns:peer-review="http://www.orcid.org/ns/peer-review">

  

  <xsl:output method="text" />

  <xsl:template match="/">
    
   <xsl:for-each select=".//record:record">
	  <xsl:variable name="orcid_uri"><xsl:value-of select="common:orcid-identifier/common:uri"/></xsl:variable>
	  <xsl:variable name="orcid_path"><xsl:value-of select="common:orcid-identifier/common:path"/></xsl:variable>
	 
  <xsl:for-each select=".//work:work-summary">
    <xsl:value-of select="$orcid_uri"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="$orcid_path"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="@display-index"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="@put-code"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:created-date"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:last-modified-date"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="normalize-space(translate(work:title/common:title,'[¬]',''))" /><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:url"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="work:type"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:publication-date/common:year"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:publication-date/common:month"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="common:publication-date/common:day"/><xsl:text>¬</xsl:text>
    <xsl:value-of select="work:journal-title"/><xsl:text>¬</xsl:text>
    <xsl:value-of select=".//common:source-name"/>
    
    <xsl:text>$end_line$</xsl:text> <!-- newline character -->
  </xsl:for-each>
  </xsl:for-each>
  
  
  
  
 
 
  </xsl:template>
  
</xsl:stylesheet>