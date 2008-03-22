<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:rng="http://relaxng.org/ns/structure/1.0"
    xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0">
    <xsl:template match="rng:grammar">
        <html>
            <head>
                <title>OPML Grammar</title>
            </head>
            <body>
                <h2>Elements</h2>
                <ul>
                    <xsl:apply-templates select="//rng:element">
                        <xsl:sort select="@name"/>
                    </xsl:apply-templates>
                </ul>
                <h2>Attributes</h2>
                <ul>
                    <xsl:apply-templates select="//rng:attribute">
                        <xsl:sort select="@name"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="rng:element">
        <li id="#el_{@name}" class="element">
            <div class="name">
                <xsl:value-of select="@name" />
            </div>
            <xsl:if test="a:documentation">
                <div class="documentation">
                    <xsl:value-of select="a:documentation" />
                </div>
            </xsl:if>
        </li>
    </xsl:template>
    <xsl:template match="rng:attribute">
        <li id="#att_{@name}" class="element">
            <div class="name">
                <xsl:value-of select="@name"/>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>
