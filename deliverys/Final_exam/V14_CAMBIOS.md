# Deck v14 — lista de cambios por lámina

Aplicado el 25-nov-2026 en `global-sm_v14.pptx` (55 láminas, misma numeración que la v13), generado desde `global-sm_v13.pptx` con `build/build_v14.py`. El script verifica el texto de la v13 antes de cada cambio y conserva el formato de cada texto, así que el estilo no cambia. Origen: comentarios de un compañero sobre la v13, revisados contra fuentes al 25-nov-2026.

## Decisiones

| Punto | Decisión | Por qué |
| --- | --- | --- |
| PIB 2026 | **0 %** (Encuesta de Expectativas Económicas de noviembre) y PIB del tercer trimestre −1,1 % | El IPoM de septiembre (0,25–0,75 %) quedó atrás. Se menciona como referencia en la lámina 28 |
| Desempleo | **9,8 %**, julio–septiembre 2026 | Último dato del INE. Revisar antes de presentar: el INE publica otro trimestre a fin de mes |
| Aprobación de Kast / “Mepco 2” | Se queda en **P**. La tarjeta de combustible pasa al acuerdo con camioneros (−$142 el litro de diésel, precios congelados hasta el 31-mar-2027) y conserva el −14 pts de marzo | Es una decisión del Gobierno bajo presión de un paro: política. No se pone la aprobación actual porque Cadem (27 %, baja) y Criteria (23 %, sube) se contradicen |
| Ley de datos | **15 Oct 2027**, Ley 21.855 publicada el 23-nov-2026. El “Still open” pasa a si la Agencia estará lista | La pregunta “2026 o 2027” ya se cerró |
| “Air Canada” | La cifra grande pasa a **“Liable”**; el caso queda en el texto | Las otras tarjetas llevan una cifra o una palabra que se entiende sola |
| Confianza en chatbots | **21 %** de los chilenos confía en los chatbots de IA (Ipsos, vía La Prensa Austral, 2026). Sustitutos se mantiene en **High** | El uso es masivo (78 %) y gratis; la baja confianza es la entrada de InfoCar, no una fuerza más baja. Bajarla obligaba a cambiar las láminas 42 y 44 |
| Nombres de las líneas | Verified damage reports · Price and repair database · Insurer pre-inspection · Monthly plan for dealers | Dicen qué se construye, no un eslogan. La línea 1 vende reconocimiento de daños, no un chatbot |
| Meta 4 | Se mantiene, redactada como meta de adquisición: **10 de los 60 dealers del estudio** firman el plan mensual | Es una meta de marketing (conversión de clientes). Los números no cambian: 10 = ≈2 % de 487 = 1 de cada 6 entrevistados |

## Cambios

| Lámina | Cambio |
| --- | --- |
| 27 | Subtítulo (“fuel decisions”) · tarjeta Fuel: −$142, acuerdo con camioneros, precios congelados hasta el 31-mar-2027; conserva MEPCO de marzo y −14 pts · fuente Emol (2026e) |
| 28 | Subtítulo e idea central (“No growth”, “stalls”) · Growth: 0 %, trimestres −0,4 %, 0,0 % y −1,1 %, referencia al IPoM, 3 % en 2027 · Households: 9,8 % jul–sep (+1,3 pts), más de un millón sin trabajo |
| 32 | Subtítulo e idea central · Data law: 15 Oct 2027, movida por la Ley 21.855 · AI liability: “Liable” · Still open: “Will the Agency be ready?” |
| 35 | E: “No growth”, 0 % · L: “Disclosure, registry and data rules are set; AI rules are still moving”, 15 Oct 2027, Still open sobre la Agencia |
| 39 | “Why”: “most Chileans use it, few trust it” · tarjeta AI use: 21 % confía en chatbots · supuesto argumentado: “a traceable damage report” |
| 40 | 9,8 % de desempleo y “no growth” · fuente BCCh (2026c) |
| 45 | O1: “while the economy does not grow” · T4: “from 15 Oct 2027”, cita Ley 21.855 |
| 47 | Nombres de las cuatro líneas |
| 48 | Encabezados con los nombres nuevos · meta 4: “10 of the 60 study dealers sign the monthly plan…” |
| Notas del orador | 27, 28 y 32: se corrigen las frases con datos viejos. 1 y 35–49: se reemplazan por el texto de `Guion_ExamenFinal.md`, con orador y tiempo (las de la v13 eran de la v12) |
| 51–55 | Se agregan BCCh (2026c, 2026d), Emol (2026e), La Prensa Austral (2026) y Ley N.° 21.855 (2026). INE (2026b) pasa al boletín de julio–septiembre. Se quitan Contreras Espinoza, Portal Innova, Vargas y Pauta (2026), que ya no se citan. Las 114 referencias se reparten de nuevo en 10 columnas |

## Validación de los umbrales de la lámina 48

Los umbrales siguen siendo metas propuestas por el equipo, no datos de mercado. Se revisó que cada uno sea coherente con su línea base, con el diseño del estudio y con la aritmética.

| Meta | Umbral | Revisión | Regla de ajuste |
| --- | --- | --- | --- |
| 1 | 100 reportes, ≤ 10 % con contenido inventado | 100 es el mismo tamaño que el estudio de referencia (Hogale et al., 2026), así que la cifra es comparable con el 31 %. Bajar 21 puntos solo es creíble con la revisión humana de S2 | Medir igual que la línea base: un reporte cuenta si tiene al menos una afirmación sin respaldo. Si el piloto de SO1 muestra clases de daño que el modelo no cubre, se excluyen y se declara |
| 2a | Precios reales de 60 dealers | Coincide con la muestra B2B de SO2 (60 dealers). Se cumple dentro del estudio | Si un dealer no comparte precios, se reporta la tasa de respuesta, no se reemplaza |
| 2b | ≥ 3 de 6–8 talleres comparten precios | ≈40–50 % de aceptación, bajo a propósito por los talleres llenos (29 días para entrar, proxy de autos asegurados) | Se ajusta en el siguiente estudio |
| 3 | 3–4 entrevistas a aseguradoras y 1 acuerdo de piloto | Pocos compradores y grandes (2,23M de autos asegurados): pocas entrevistas cubren buena parte del mercado. El acuerdo de piloto es la parte exigente | Si ninguna aseguradora acepta piloto, la meta pasa a “1 carta de interés” y la línea 3 se reevalúa en el mes 6 |
| 4 | 10 de 60 dealers del estudio en el plan mensual | Aritmética correcta: 10/487 = 2,05 % y 10/60 = 1 de cada 6. CLP 59.900 / 3 autos ≈ CLP 20.000 por auto. Es exigente para una marca nueva (W4) | Se fija con SO5: si menos de 10 dealers quedan en el Top-2 Box con el precio dentro de su rango Van Westendorp, la meta baja a ese número |

## Revisión y entrega

- Revisado en PowerPoint con Century Gothic: láminas 27, 28, 32, 35, 39 y 44–48. Ningún texto se sale de su cuadro. Las referencias (51–55) se revisaron con URW Gothic, de métricas parecidas.
- `global-sm_v14.pdf` exportado desde PowerPoint, con Century Gothic incrustada.

## Pendiente

- Confirmar el desempleo si el INE publica el trimestre agosto–octubre antes del examen.
- Ensayar con los oradores propuestos en el guion y ajustar si alguien cambia de lámina.
- Cerrar el issue #14 citando las láminas.
