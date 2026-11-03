# Workshop 3 · Población y muestra: propuesta de Seba (v2)

Esta es una propuesta paralela a `../03_diseno_muestral_infocar.md` (dcuerom). **Hay que decidir en equipo cuál se presenta o cómo se fusionan.**

## Contenido
| Archivo | Qué es |
|---|---|
| `global-sm_v4.pdf` | Vista en PDF del deck acumulativo. El `.pptx` editable está en `deliverys/exam-1/global-sm_v4.pptx`. La sección nueva va de la lámina 14 a la 22. |
| `documento/InfoCar_Poblacion_Muestra_v2.pdf` (+ `.tex`) | Documento de la entrega (16 páginas, APA 7). |
| `investigacion/informe_poblacion_muestra.md` | Informe consolidado de la investigación: fuentes nacionales e internacionales y la tabla de correcciones. |
| `investigacion/notas/` | Notas de los 4 frentes, con citas verificadas: estándares metodológicos, referentes internacionales, población B2C en Chile y marco B2B (SII). |

## Decisiones clave
- **B2B:** el marco es el listado de personas jurídicas del SII, actividad **451002** (venta al por menor, incluye compraventas), tramos Pequeña 1 a Mediana 2. Son **572 empresas con nombre** en la RM, Valparaíso y Biobío, unas 628 si se suman las personas naturales.
  - Se sortean dentro de 3 celdas por tramo SII: n = 36/34/30, total 100, con un error de referencia de ±9,8 %.
- **B2C:** compradores de un usado en los últimos 12 meses, con dinero propio, en las mismas 3 regiones. Son unas 590.000 compras al año.
  - Las celdas cruzan tipo de vendedor (particular o empresa) con 4 bandas de antigüedad (CAVEM): n = 300, con 37 o 38 casos por celda.
- **Bandas de vehículos por antigüedad, no por precio:** el precio es el fenómeno que se estudia, así que segmentar por precio sería circular.
- **Etapa cualitativa:** 10 entrevistas más 2 de reserva, y **4** grupos focales (2 por tipo de vendedor).

## Correcciones a material anterior (aplicadas en el v4)
- **Los autos usados no tienen garantía legal**, ni siquiera si los vende una empresa (SERNAC; art. 14, Ley 19.496). La lámina 4 del v3 decía lo contrario.
- La lámina 3 decía "12,95 % compras de empresas", pero 12,95 % es la cuota de las marcas chinas. Las empresas compran el **15,3 %** (CAVEM, septiembre de 2026).
- Se actualizaron las cifras del SII a la revisión 2024 (4.230 / 1.112 / 564). El dealer "core" compra unos 6 autos al mes, no 9.
- Se quitaron los polos "Gran Avenida / Av. Bilbao", que no tienen fuente verificable, y se corrigieron erratas.

## Pendiente
- Validar con el `knowledge-validator` (NotebookLM). No hubo acceso al conector.
- Confirmar si la entrega del 3 de noviembre es el Certamen 2 o el workshop.
