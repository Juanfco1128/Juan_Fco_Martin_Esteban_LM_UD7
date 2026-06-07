from lxml import etree
from pathlib import Path

ruta_base = Path(__file__).parent.parent

ruta_xml = ruta_base / "peliculas" / "peliculas.xml"
ruta_xslt = ruta_base / "xslt" / "plantilla.xslt"
ruta_html = ruta_base / "xslt" / "salida.html"

xml = etree.parse(str(ruta_xml))
xslt = etree.parse(str(ruta_xslt))

transformacion = etree.XSLT(xslt)
resultado = transformacion(xml)

with open(ruta_html, "wb") as f:
    f.write(etree.tostring(resultado, pretty_print=True, encoding="UTF-8", method="html"))

print("Conversión completada: salida.html")