<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap Preview</title>
        <style>
          body { font-family: Arial, sans-serif; background: #f9f9f9; color: #333; }
          h2 { color: #0066cc; }
          .url { margin-bottom: 20px; padding: 10px; background: #fff; border: 1px solid #ddd; border-radius: 5px; }
          .loc { font-weight: bold; }
          .image { margin-left: 20px; color: #555; }
        </style>
      </head>
      <body>
        <h2>Sitemap Preview</h2>
        <xsl:for-each select="urlset/url">
          <div class="url">
            <div class="loc">
              URL: <a href="{loc}" target="_blank"><xsl:value-of select="loc"/></a>
            </div>
            <xsl:for-each select="image:image">
              <div class="image">
                Image: <a href="{image:loc}" target="_blank"><xsl:value-of select="image:loc"/></a>  
                (<xsl:value-of select="image:title"/>)
              </div>
            </xsl:for-each>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
