<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:cbml="http://www.cbml.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head> 
                <title>
                </title>
                <!--<link rel="stylesheet" type="text/css" href="asm.css" />-->
            </head>
            <body>
       <xsl:apply-templates>
           
       </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="cbml:panel">
        <div><xsl:apply-templates/></div>
    </xsl:template>
</xsl:stylesheet>