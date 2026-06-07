<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Películas</title>
            </head>

            <body>

                <h1>Listado de películas</h1>

                <table border="1">

                    <tr>
                        <th>Título</th>
                        <th>Año</th>
                        <th>Género</th>
                        <th>Director</th>
                        <th>Duración</th>
                        <th>Puntuación</th>
                    </tr>

                    <xsl:for-each select="peliculas/pelicula">

                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="año"/></td>
                            <td><xsl:value-of select="genero"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td><xsl:value-of select="duracion"/></td>
                            <td><xsl:value-of select="puntuacion"/></td>
                        </tr>

                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>