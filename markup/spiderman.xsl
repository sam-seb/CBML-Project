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
                <link rel="stylesheet" type="text/css" href="asm.css"/>-->
            </head>
            <body>
                <section id="intro">
                    <!-- ebb:  Write up a little intro for each character?  
                    What if it's a small picture on one side, the character code identifier, 
                    and a quick identification of their full name?
 
                    -->
                    
                    
                </section>
                <section id="contents"> 
                    <table>
                        <tr>
                            <th>Page Number</th>
                            <th>Character Appearances</th>
                        </tr>
                        <xsl:apply-templates select="descendant::div" mode="toc"/>
                    </table>
                </section>
                <section id="rv">
                    
                    <xsl:apply-templates select="descendant::div"/>
                    
                    
                </section>
  
            </body>
        </html>
    </xsl:template>
    
    <!-- TOC TEMPLATES -->
    
    <xsl:template match="div" mode="toc">
        <tr>
            <td><a href="#p-{@n}">Page <xsl:value-of select="@n"/></a></td>
            <td><xsl:value-of select="descendant::cbml:balloon/@who => distinct-values() => string-join(', ')"/></td>
        </tr>

    </xsl:template>
    
    <!-- READING VIEW TEMPLATES -->
    
    <xsl:template match="div">
        <div class="page" id="p-{@n}">
           
           <section class="image">
               <figure>
                   <img src="{substring-after(@facs, '../docs/')}" alt="Page {@n}"/>
                   <figcaption>Page <xsl:value-of select="@n"/></figcaption>
                   
               </figure>
           </section>
            <section class="content">
                <xsl:apply-templates/>
                
            </section>

        </div>
    </xsl:template>
    
    
   <xsl:template match="cbml:panel">
        <div class="panel"><xsl:apply-templates/></div>
    </xsl:template>
</xsl:stylesheet>