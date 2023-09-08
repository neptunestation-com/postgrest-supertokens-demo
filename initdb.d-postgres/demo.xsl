<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8" indent="yes"/>

  <xsl:template match="/index">
    <html lang="en">
      <head>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
				<script src="https://unpkg.com/htmx.org@1.8.4" />
				<link href="/resource/beer.css" rel="stylesheet" />
				<title>PostgREST / Auth0 Demo</title>
      </head>
      <body>
				<h1>Hazy Or NotPostgREST / Auth0 Demo</h1>
				<a href="">Login</a>
				<dl>
					<dt>headers</dt><dd><xsl:value-of select="/index/request/headers"/></dd>
					<dt>claims</dt><dd><xsl:value-of select="/index/request/claims"/></dd>
					<dt>cookies</dt><dd><xsl:value-of select="/index/request/cookies"/></dd>
					<dt>paths</dt><dd><xsl:value-of select="/index/request/paths"/></dd>
					<dt>method</dt><dd><xsl:value-of select="/index/request/method"/></dd>
				</dl>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
