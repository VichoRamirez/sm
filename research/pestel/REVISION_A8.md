# Revisión A8 — Investigaciones de deep research (07-nov-2026)

Revisión de los 7 informes en [`raw/`](./raw/) con la lista de [`prompts/README.md`](./prompts/README.md).

## Método

1. Se descargaron las 132 URLs citadas. Las leyes se bajaron en XML desde LeyChile.
2. Un script buscó, dentro de cada documento, las citas textuales y las cifras de cada hallazgo.
3. Los casos dudosos se revisaron a mano, junto con el tono (sin juicios de valor) y la pertinencia.

Las fuentes que bloquean descargas automáticas (Reuters, Bloomberg, Consilium, Cox Europa, ResearchGate) quedan marcadas ⚠️ **revisar a mano**: no se pudieron comprobar, lo que no significa que estén mal.

**Leyenda:**

- ✅ Aprobado: la cifra está en la fuente.
- ✏️ Aprobado con corrección: la cifra está, pero hay que cambiar la redacción, el período o la fuente.
- ⚠️ No verificable automáticamente.
- ❌ Descartar.

## Resumen

| Dimensión | Archivo | Agente | Resultado | Aprobables |
| --- | --- | --- | --- | --- |
| P | `Análisis Político…` | Gemini | **Insuficiente.** Las cifras se perdieron al exportar (aparecen como `![][imageN]`), hay un hallazgo con la fuente mal atribuida y falta el gobierno 2026–2030 | 4 de 9 |
| E | `Análisis Económico…` | Gemini | Bueno, con correcciones. Dos fuentes no son aceptables | 8 de 10 |
| S | `Análisis Social…` | Gemini | Bueno. Un error de interpretación (S-02) | 10 de 10 (2 con corrección) |
| T | `Análisis Tecnológico…` | ChatGPT | Muy bueno | 10 de 10 (1 con corrección) |
| A | `Análisis Ambiental…` | ChatGPT | Muy bueno | 11 de 11 (2 por revisar a mano) |
| L | `Análisis Legal…` | ChatGPT | ❌ **No es Legal.** Es una segunda investigación Ambiental (título "PESTEL Ambiental", IDs A-xx). Sirve como complemento de A | — |
| X | `Análisis Transversal…` | ChatGPT | Muy bueno. Responde lo de los subsidios chinos | 10 de 10 (1 por revisar a mano) |

**Bloqueantes:**

1. **Falta la investigación Legal (A6).** Hay que relanzar `prompts/A6_legal.md`. Además, B4 (la cita de Mellado sobre la garantía de los usados) depende de ella.
2. **Político incompleto (A1).** Hay que relanzar con [`prompts/A1b_politico_complemento.md`](./prompts/A1b_politico_complemento.md).

**Problema de formato en Gemini:** al copiar la respuesta, las cifras que Gemini escribe en LaTeX se convierten en imágenes y se pierden. El complemento pide explícitamente no usar LaTeX. Si no, conviene exportar a Google Docs y descargar como `.md`.

## Cifras que hay que unificar entre dimensiones

| Dato | Versiones en los informes | Cifra a usar |
| --- | --- | --- |
| Marcas chinas en las transferencias de usados | 12,83 % (nota CAVEM, 2-oct) · 12,95 % · 13,07 % | **12,95 %, enero–septiembre de 2026** (CAVEM 2026c, PDF p. 21). Es la misma que se usa en el deck (bloque B). Si se quiere la más reciente: 13,07 % entre enero y octubre (The Clinic, 06-nov-2026, que cita a CAVEM) |
| Usados por cada nuevo | 3,38 · 3,4 · 3,5 | **3,4** (CAVEM, PDF). El 3,5 es de Nuevo Poder |
| Marcas chinas en nuevos | 32,4 % (ANAC, enero–noviembre 2025) · 31,62 % (CAVEM 2025) · 34,70 % (CAVEM, enero–junio 2026) | Según el período. Para el deck: **34,19 %, enero–septiembre de 2026** (CAVEM 2026c, p. 12), igual que en B |
| PIB 2026 (Banco Central) | 1,5–2,5 % (P-03, IPoM de marzo) · 0,25–0,75 % (E-01) | **0,25–0,75 %**, IPoM de septiembre 2026. La de P-03 está desactualizada |

---

## P — Político

| ID | Veredicto | Detalle |
| --- | --- | --- |
| P-01 | ✏️ | Correcto: la Ley 21.601 agrega al art. 62 el grabado de la patente en vidrios y espejos (LeyChile). **No se encontró en la ley** la prohibición de vender combustible ni las exenciones del matiz: quitar ambas |
| P-02 | ✏️ | Correcto: el Decreto 96 (Política Nacional de Seguridad Pública 2025–2031) incluye el robo de vehículos y la receptación. El matiz perdió la cifra (imagen): reescribirlo |
| P-03 | ❌ | Usa el IPoM de marzo. La proyección vigente es la de septiembre, ya incluida en E-01 |
| P-04 | ✏️ | La Cuenta Pública 2025 de MinCiencia menciona el Boletín 16821-19 ✅. No se verificó que "prohíba decisiones algorítmicas en créditos" y el matiz perdió la cifra. Pasarlo a Legal |
| P-05 | ✅ | Correcto: la Ley 21.601 agrega al art. 39 bis la nómina de emisores habilitados de facturas de primera venta; sin ella el Registro Civil no inscribe |
| P-06 | ❌ | Cifras perdidas y la página de Subrei descargada no las contiene. Usar **X-06** (TLC desde 2006, utilización de 79,3 %, arancel efectivo de 0,49 %), que está verificado |
| P-07 | ✏️ | Correcto: CAVEM (03-nov-2026) dice "salida de 800 modelos" por la ley de eficiencia energética 2027. Quitar "vía principal" de la relevancia: no está respaldado. El matiz perdió la cifra |
| P-08 | ❌ ⚠️ | Bloomberg (2024) no se pudo leer y la cita no es de esa nota. Usar **X-07** (aranceles UE, EE.UU. y Brasil), que está verificado |
| P-09 | ❌ | **Fuente mal atribuida.** La frase "waning government support… in the West" habla del apoyo estatal **en Occidente**, no en China. El dato correcto es **X-08** (IEA) |

**Falta:** el gobierno 2026–2030 y su agenda, estadísticas de robo de vehículos, y la relación del Estado con CAVEM, ANAC y CNC. Va en el complemento A1b.

## E — Económico

| ID | Veredicto | Detalle |
| --- | --- | --- |
| E-01 | ✏️ | Correcto: el IPoM de septiembre 2026 baja el PIB 2026 a 0,25–0,75 % y proyecta 2–3 % para 2027 ([Banco Central, 09-sep-2026](https://www.bcentral.cl/contenido/-/detalle/prensa/nota-de-prensa/bcch-publica-ipom-septiembre-2026); [Radio U. de Chile](https://radio.uchile.cl/2026/09/09/ipom-banco-central-recorta-proyeccion-de-crecimiento-2026-y-la-situa-bajo-el-1/)). La relevancia afirma causalidad ("postergando el recambio") sin respaldo: describir solo el mecanismo |
| E-02 | ✏️ | Correcto: INE, desocupación de 9,6 % en junio–agosto de 2026. Verificar a mano el 7,7 % del Índice de Remuneraciones |
| E-03 | ✏️ / ❌ | Morosidad de 90 días o más de 2,36 % (CMF) ✅, pero hay que confirmar si es la **cartera total** o la de **consumo**: el PDF da el indicador del sistema. ❌ "El 70 % de los usados se compra con crédito" sale de un **blog comercial (kmcheck)** sin metodología: pasarlo a preguntas abiertas |
| E-04 | ✏️ | Correcto: dólar a $970,46 al 30-sep-2026 (nota al pie de la CMF). Mejor citar al Banco Central. La relevancia ("desplaza la demanda hacia usados") no está respaldada |
| E-05 | ✏️ | Correcto: 736.120 entre enero y agosto (+4,1 %) y julio −4,7 % / agosto +2,9 % (Nuevo Poder). Cambiar 3,5 por **3,4** (CAVEM). Se puede actualizar a enero–octubre: **908.310 (+3,0 %)** ([The Clinic, 06-nov-2026](https://www.theclinic.cl/2026/11/06/ventas-de-vehiculos-usados-en-chile-el-mercado-secundario-mantiene-la-firmeza-con-mas-de-908-mil-transferencias-en-2026/)) |
| E-06 | ✅ | ANAC: SUV 51,1 %, marca china 32,4 %, pasajeros −11,8 % |
| E-07 | ✏️ | Correcto: CCS, cerca de USD 10.000 millones y penetración de 12,6 %. **Esto resuelve el dato sin fuente de `context/market_context.md`.** Quitar "persistencia ineludible" del matiz |
| E-08 | ✏️ | Correcto: el ICT de abril tiene repuestos +1,0 %. Verificar a mano el 0,8 % de mayo |
| E-09 | ✅ | Cox: Manheim 205,9 (−0,6 % anual); índice EV +4,3 % |
| E-10 | ❌ | Fuentes no aceptables: una nota "viral" de Debate (México) y una página de autor de JMC, que está caída. Usar **X-03** (CAVEM: usados chinos −4,5 % frente a −11,7 % de otros orígenes) |

**Sección 5 del informe:** el agente dice que no pudo abrir los PDF de CAVEM ni Emol. Están verificados en el bloque B ([`B_fuentes_deck.md`](../../deliverys/exam-2/B_fuentes_deck.md)).

## S — Social

| ID | Veredicto | Detalle |
| --- | --- | --- |
| S-01 | ✅ | Pauta: 41.700 causas por fraude **en general** y 69 % de estafas. Fiscalía: 67 % con imputado desconocido. En "Preguntas abiertas" el agente vuelve a llamarlos "fraudes automotores": corregir |
| S-02 | ✏️ | Correcto: 85,7 % personas y 14,3 % empresas en octubre de 2026 (The Clinic). **Error de interpretación:** que el comprador sea una persona **no** significa que la venta sea entre particulares, porque el vendedor puede ser una automotora. Reescribir la relevancia y la síntesis ("85,7 % entre personas naturales sin giro" es incorrecto) |
| S-03 | ✅ | BioBioChile: 40.344 reclamos; 10,9 % por usados. Ojo: el dato es de 2023, con período 2020–2023 |
| S-04 | ✅ | Cadem: 78 % ha usado IA; 43 % la usa para cotizar; solo 26 % la usa como fuente antes de comprar, contra 56 % que lee reseñas. La relevancia ("desplaza la tasación hacia la IA") exagera: reescribirla |
| S-05 | ✏️ | Correcto: Barómetro Digital, 59 % no se siente preparado para detectar errores. **No se encontró** el 93 % entre 18 y 34 años: quitarlo |
| S-06 | ✏️ | Correcto: Encuesta de Movilidad 2024, auto 31,7 % (6.164.667 viajes). Citar el [PDF de Cedeus](https://www.cedeus.cl/wp-content/uploads/2024/08/Informe-Encuesta-de-Movilidad-de-Santiago-2024.pdf) y no ResearchGate. Ojo: el 31,7 % es con la caminata corregida; sin corregir es 38,2 % |
| S-07 | ✅ | The Clinic: 13,07 % (118.688 transferencias) entre enero y octubre de 2026. Ver la tabla de unificación |
| S-08 | ✅ | Cox: 53 % hizo todo en el concesionario; 37 % quiere cerrar el precio en línea, pero solo 19 % lo hace |
| S-09 | ✏️ | Correcto: Deloitte, 86 % en EE.UU. **No se encontró** "41 minutos": quitarlo o verificarlo |
| S-10 | ✏️ | Correcto: Subtel, 96,5 % de hogares con internet. **Resuelve el dato sin fuente de `context/`.** Quitar el matiz sobre el tráfico de voz, que no es pertinente |

## T — Tecnológico

| ID | Veredicto | Detalle |
| --- | --- | --- |
| T-01 | ✅ | Chequeo Digital: 70 % en nivel inicial o novato. Bien matizado (es un autodiagnóstico voluntario) |
| T-02 | ✏️ | **La URL del PDF de Entel da 404.** Usar el [blog de Entel Digital](https://www.enteldigital.cl/blog/estudio-sobre-adopcion-de-ia-en-chile), que dice "el **70 %** de las pymes la ha incorporado", más de 80 % de las grandes y 40 % de falta de capacitación. Corregir "menos de 70 %" |
| T-03 | ✅ | Subtel: 10,8 millones de conexiones 5G |
| T-04 | ✅ | ChileAtiende: la transferencia es presencial. Autofact ofrece una "100 % online" |
| T-05 | ✅ | SII: tasación fiscal |
| T-06 | ✅ | Proveedores locales (Autofact, AutoGest, Rodar, Ofertautos). Bien matizado: su existencia no muestra su penetración |
| T-07 | ✅ | ANAC: 14.837 enchufables, 6,3 % |
| T-08 | ✅ | Hasan et al. (2025), verificado en la copia local: IoU de 0,463 y dificultades con daños menores. El DOI bloquea la descarga, pero el paper está en `data/technical-bases/` |
| T-09 | ✅ | GPT-4V en seguros e INS-MMBench (arXiv) |
| T-10 | ✅ | Cox: 14 % en etapas 3–4; barreras de 74 % (precisión), 69 % y 66 %. Coincide con el bloque B |

## A — Ambiental (dos informes)

**Informe 1** (`Análisis Ambiental…`):

| ID | Veredicto | Detalle |
| --- | --- | --- |
| A-01 a A-07 | ✅ | Todas las cifras y citas están en las fuentes: metas de electromovilidad, permisos de eléctricos, Euro 6c y eficiencia energética, GEC 2026, parque de CAVEM, REP e inventario de emisiones |
| A-08 | ⚠️ | Consilium bloquea la descarga. El informe 2 (A-10) da el mismo dato |
| A-09 | ⚠️ | Cox Europa bloquea la descarga. Se puede reemplazar por la IEA (informe 2, A-08), que está verificada |
| A-10, A-11 | ✅ | Geotab 2,3 % anual; pasaporte de baterías de la UE |

**Informe 2** (archivo mal llamado `Análisis Legal…`), con lo que aporta y no repite:

| ID | Veredicto | Detalle |
| --- | --- | --- |
| A-01 | ✅ | Agrega: 6,3 % de enchufables entre enero y septiembre de 2026, con el matiz de que incluye PHEV |
| A-04 | ✅ | Agrega un matiz: CAVEM (2018) midió −10 % en el valor de los usados de 2011 o anteriores. El dato es antiguo y el propio informe lo advierte |
| A-05 | ✅ | **23,8 % de las transferencias de 2025 son de autos de 16 años o más** (anuario CAVEM). La suma 252.405 la calculó el agente: indicarlo |
| A-06 | ✅ | Agrega: el decreto REP de baterías sigue pendiente, con plazo hasta el 29-ene-2027 |
| A-07 | ✅ | Agrega el RETC 2023: 53,4 % del NOx del transporte en ruta en la RM |
| A-08 | ✅ | IEA: retención de valor de los BEV de 35 % frente a ~50 % del mercado (Europa, 2025). Postura contraria: Recurrent registra +8 % en EE.UU. |
| A-11 | ✏️ | China produjo 16 millones de eléctricos, 75 % del total mundial (IEA) ✅. El "12,83 % a octubre de 2026" está mal fechado: la nota de CAVEM es del 2 de octubre. Ver la tabla de unificación |
| A-02, A-03, A-09, A-10 | — | Repiten el informe 1 |

## X — Transversales (autos de marcas chinas)

| ID | Veredicto | Detalle |
| --- | --- | --- |
| X-01 a X-07 | ✅ | Participación en nuevos y usados, depreciación por modelo (con buen matiz), encuesta Descifra (48 % "nunca compraría" frente a 49 % "precio/calidad"), salida de BAIC de Gildemeister, TLC y homologación, y aranceles de la UE, EE.UU. y Brasil |
| X-08 | ✅ | **Responde lo que dijo la profesora.** La IEA confirma que China terminó su subsidio nacional de compra de eléctricos en **diciembre de 2022**, después de 12 años. Mantuvo la exención del impuesto de compra y un subsidio de renovación desde 2024 (unos USD 2.700 millones en 2024), y el gasto por vehículo cayó 25 % entre 2022 y 2024. **Matiz para la presentación:** el subsidio terminó en 2022; lo que sigue en 2025–2026 es la guerra de precios ("involution") |
| X-09 | ✅ | ANAC: BYD 17,6 % de los enchufables en enero de 2026 |
| X-10 | ✏️ ⚠️ | IEA: más de 70 % de la producción mundial de eléctricos ✅. El 90 % de América Latina (Reuters, citando a Jefferies) no se pudo leer: revisar a mano o quitarlo |

## Siguientes pasos

1. **Relanzar A6 Legal** con `prompts/A6_legal.md` (bloqueante; también resuelve B4).
2. **Relanzar el complemento Político** con `prompts/A1b_politico_complemento.md`.
3. **Revisar a mano** las fuentes ⚠️: Consilium, Cox Europa y Reuters (X-10). Son 5 minutos en el navegador.
4. **Consolidar** los hallazgos ✅ y ✏️ en las tablas `P_…`, `E_…`, `S_…`, `T_…`, `A_…` y `transversales.md`, con las correcciones de arriba y las cifras unificadas.
