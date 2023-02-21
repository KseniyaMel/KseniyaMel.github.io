			<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
			   <xsl:output method="xml" indent="yes"/>

			            <xsl:template match="/">
			             <math xmlns="http://www.w3.org/1998/Math/MathML">
			               <xsl:apply-templates />
			             </math>
			           </xsl:template>

				<xsl:template match="корень">
			      <msqrt xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </msqrt>
			   </xsl:template>

			   <xsl:template match="строка">
			      <mrow xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </mrow>
			   </xsl:template>

			   <xsl:template match="операнд">
			      <mi xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:value-of select="." />
			      </mi>
			   </xsl:template>

			   <xsl:template match="оператор">
			      <mo xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:value-of select="." />
			      </mo>
			   </xsl:template>

			   <xsl:template match="число">
			      <mn xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:value-of select="." />
			      </mn>
			   </xsl:template>

			   <xsl:template match="дробь">
			      <mfrac xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </mfrac>
			   </xsl:template>

			   <xsl:template match="низверх">
			      <munderover xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </munderover>
			   </xsl:template>

			   <xsl:template match="верх">
			      <msup xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </msup>
			   </xsl:template>

			   <xsl:template match="низ">
			      <msub xmlns="http://www.w3.org/1998/Math/MathML">
			         <xsl:apply-templates select="*"/>
			      </msub>
			   </xsl:template>

			</xsl:stylesheet>