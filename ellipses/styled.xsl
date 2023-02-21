<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg">
<xsl:output
      method="xml"
      indent="yes"
      standalone="no"
      doctype-public="-//W3C//DTD SVG 1.1//EN"
      doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
      media-type="image/svg"
/>
	<xsl:template match="root/графика">
		<svg xmlns="http://www.w3.org/2000/svg" width="{@ширина}" height="{@высота}">
            <xsl:for-each select="//эллипс">
                <ellipse 
                    id="{@id}" 
                    fill="{@заливка}" 
                    stroke="{@ободок}" 
                    stroke-width="{@ширина-ободка}" 
                    cx="{@cx}" 
                    cy="{@cy}" 
                    rx="{@rx}" 
                    ry="{@ry}"/>
            </xsl:for-each>
		</svg>    
	</xsl:template>
</xsl:stylesheet>