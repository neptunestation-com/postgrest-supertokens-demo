<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" indent="yes"/>

  <xsl:template match="/index">
    <html lang="en">
      <head>
        <title>PostgREST / Auth0 Demo</title>
      </head>
      <body>
        <h1>PostgREST / Auth0 Demo</h1>
        <a href="{/index/loginurl}">Login</a>
        <dl>
          <dt>headers</dt><dd><xsl:value-of select="/index/request/headers"/></dd>
          <dt>claims</dt><dd><xsl:value-of select="/index/request/claims"/></dd>
          <dt>cookies</dt><dd><xsl:value-of select="/index/request/cookies"/></dd>
          <dt>paths</dt><dd><xsl:value-of select="/index/request/paths"/></dd>
          <dt>method</dt><dd><xsl:value-of select="/index/request/method"/></dd>
          <dt>loginurl</dt><dd><xsl:value-of select="/index/loginurl"/></dd>
        </dl>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
