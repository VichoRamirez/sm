# Certamen 2 — Plan de trabajo

**Foco único del repositorio hasta la entrega.** Todo agente o integrante que trabaje en el repo parte leyendo este archivo. El análisis de la pauta y del estado del proyecto ya está hecho (abajo): no repetirlo, ejecutar las tareas.

- **Pauta oficial:** [`INSTRUCTIONS FOR CERTAMEN 2 (t) Strategic Marketing.pdf`](./INSTRUCTIONS%20FOR%20CERTAMEN%202%20(t)%20Strategic%20Marketing.pdf)
- **Clase de referencia:** [`class-to-add-0511.md`](./class-to-add-0511.md) (transcripción cruda, 05-nov-2026)
- **Fecha de entrega:** **martes 10-nov-2026, 13:40 h** (PDF en Canvas antes de esa hora).
- **Base acumulativa:** [`../workshop-3/global-sm_v6.pptx`](../workshop-3/global-sm_v6.pptx) (27 diapositivas: diagnóstico, objetivos, metodología, población y muestra, referencias).
- **Fase actual:** investigación (PESTEL) y gestión de tareas. El deck no se toca hasta cerrar los bloques A y B.

---

## 1. Qué exige la pauta

| Requisito | Detalle |
| --- | --- |
| Entrega | **Un solo PDF** con el proyecto completo, desde las primeras etapas hasta el PESTEL, con todas las correcciones y el feedback incorporados. |
| Plazo | Subido a Canvas **antes** del inicio de la evaluación. Si se sube después de ese momento, pero dentro del horario de la evaluación, la nota máxima es 5,0. |
| Presentación | Participan **los 7 integrantes**. Diapositivas **autoexplicativas**: deben entenderse sin la exposición oral. |
| Contenido nuevo | **Solo PESTEL** (político, económico, social, tecnológico, ambiental, legal). No piden Porter ni FODA. |
| Enfoque del PESTEL | Descriptivo y analítico. **Prohibido clasificar hallazgos como oportunidades o amenazas** y buscar información solo para confirmar supuestos. |
| Alcance | País, industria y, donde corresponda, global. Un mismo factor puede analizarse desde varias dimensiones. |
| Fuentes | Confiables, verificables y **visibles en la diapositiva donde está el dato**, para poder rastrear cada hallazgo. |
| Evaluación | Contenidos completos, profundidad analítica, consistencia metodológica, calidad de la evidencia y comunicación. |

### Lo que dijo la profesora en clase (05-nov) y no está en la pauta

Úsese como guía de estilo; la pauta manda si hay conflicto.

- El PESTEL es "la radiografía": todo lo relevante, a lo ancho y en profundidad, incluidas posturas y contraposturas. La selección viene después, en Porter y FODA.
- Nada de frases genéricas ("Chile es una democracia"): hay que darle sustancia al hallazgo para la industria automotriz.
- Mirar fuera de Chile. Ejemplo que dio: el fin de los subsidios de China a sus autos nuevos y la llegada masiva de autos chinos al mercado de usados (**verificar**).
- Fuente en letra pequeña **junto a cada idea**, no al pie ni al final.
- Formato ejecutivo: hallazgo + una línea de síntesis.
- Criticó una presentación de un "proyecto de compraventa automotriz" que mostraba toda la información de una vez. Probablemente era la nuestra: no saturar las diapositivas.
- Mencionó "una fuente, dos fuentes" de forma ambigua. **No es requisito de la pauta**; usar dos fuentes solo en datos discutibles.

---

## 2. Diagnóstico del estado actual (cerrado el 07-nov-2026)

Revisión hecha con `/code-review` y una lectura manual contrastada. No hace falta repetirla.

| Requisito | Estado | Detalle |
| --- | --- | --- |
| PESTEL | **No existe** | Estructura creada en [`research/pestel/`](../../research/pestel/) con el material ya verificado del repo. |
| Proyecto completo en un PDF | Casi listo | El v6 cubre las etapas previas. Falta: PESTEL, diapositiva de cambios tras el feedback, portada (dice "Workshop") y quitar la diapositiva 14 (repite la 3). |
| Fuentes verificables | **Riesgo alto** | El v6 cita fuentes que el [`README.md`](../../README.md) marca como no verificadas o que solo tienen el dominio. Hay cuatro citas sin referencia. Ver bloque B. |
| Correcciones previas | Pendiente | El feedback del certamen 1 sigue abierto (fuentes primarias) y hay cifras inconsistentes entre documentos. Ver bloques C y E. |
| Diapositivas autoexplicativas | Bien encaminado | El v6 usa títulos que dicen la conclusión. Las animaciones no se ven en el PDF: cada diapositiva debe estar completa. |
| Diseño muestral (v6) | **Correcto** | Cuentas verificadas: reparto 52/28/20, pesos, errores ±9,1/±5,7/±8,0/±11,3 % y cortes de 100 y 200 UTM. No rehacer. |

---

## 3. Reglas para agentes y colaboradores

1. **No re-investigar la pauta ni el estado del proyecto.** Están en las secciones 1 y 2.
2. **Solo se usan fuentes verificables.** Antes de citar, revisar el [`README.md`](../../README.md): las fuentes de "Fuentes verificadas" se pueden usar; las de "Fuentes pendientes de revisar" **no**, hasta resolverlas. Una fuente nueva se agrega al README con su URL exacta.
3. **El PESTEL es descriptivo.** No usar las palabras "oportunidad", "amenaza", "favorable" ni "riesgo para InfoCar" en los hallazgos. La columna de relevancia explica por qué el factor importa para la industria de autos usados, sin evaluarlo.
4. **Nada de cifras sin fuente ni cifras de memoria.** Si un dato no se encuentra, se registra como pregunta abierta, no como hallazgo.
5. **APA 7** en el texto `(Autor, Año)` y en las referencias, con la URL exacta del documento, no del dominio.
6. **Las cifras del proyecto se toman del deck v6**, no de los `.md` antiguos de workshop-3 ni de `context/` hasta que el bloque C esté cerrado.
7. **No editar el deck** hasta cerrar los bloques A y B. Cada tarea cerrada se marca en este archivo.

---

## 4. Tareas

Estados: `[ ]` pendiente · `[~]` en curso · `[x]` lista. Asignar responsables en la reunión del equipo: 6 dimensiones del PESTEL + 1 persona que integra y revisa fuentes.

### Bloque A — Investigación PESTEL (prioridad 1)

Método y plantilla en [`research/pestel/README.md`](../../research/pestel/README.md). La investigación se delega en agentes de deep research con los prompts de [`research/pestel/prompts/`](../../research/pestel/prompts/) (uno por tarea, de A1 a A7). Las respuestas en bruto se guardan en `research/pestel/raw/` y se revisan con la lista de ese README antes de pasar a las tablas (A8).

| ID | Tarea | Archivo | Responsable | Estado |
| --- | --- | --- | --- | --- |
| A1 | Político: país (gobierno 2026–2030, agenda), industria (política comercial, aranceles), global (EE.UU.–China) | [`P_politico.md`](../../research/pestel/P_politico.md) | — | [~] 4 hallazgos consolidados; falta el complemento `prompts/A1b_politico_complemento.md` |
| A2 | Económico: crecimiento, inflación, tasas, crédito automotriz, tipo de cambio, precios y volumen de usados | [`E_economico.md`](../../research/pestel/E_economico.md) | — | [x] 10 hallazgos |
| A3 | Social: confianza y fraude, hábitos de compra, digitalización, uso de IA por personas | [`S_social.md`](../../research/pestel/S_social.md) | — | [x] 10 hallazgos |
| A4 | Tecnológico: IA y visión computacional, adopción en pymes y automotoras, plataformas, acceso a datos | [`T_tecnologico.md`](../../research/pestel/T_tecnologico.md) | — | [x] 10 hallazgos |
| A5 | Ambiental: emisiones, electromovilidad, restricción vehicular, chatarrización y vida útil del parque | [`A_ambiental.md`](../../research/pestel/A_ambiental.md) | — | [x] 17 hallazgos (dos informes) |
| A6 | Legal: datos personales (Ley 21.719), consumidor (Ley 19.496), proyecto de ley de IA, transferencias e impuestos | [`L_legal.md`](../../research/pestel/L_legal.md) | — | [ ] **Falta.** El archivo recibido era Ambiental: relanzar `prompts/A6_legal.md` |
| A7 | Factores que cruzan varias dimensiones (autos chinos y otros) | [`transversales.md`](../../research/pestel/transversales.md) | Integrador | [x] 10 hallazgos sobre autos chinos, más un cruce con otros factores |
| A8 | Revisión cruzada: cada hallazgo tiene fuente exacta, nivel, relevancia y no lleva juicio de oportunidad o amenaza | todos | Integrador | [~] Revisión en [`REVISION_A8.md`](../../research/pestel/REVISION_A8.md) |

Criterio de término por dimensión: al menos 6 hallazgos con dato concreto, al menos uno de nivel global donde aplique, al menos una postura contraria o matiz, y todas las fuentes en "verificadas".

### Bloque B — Fuentes del deck (prioridad 1, en paralelo con A)

Resultado de la verificación y texto corregido para el deck: [`B_fuentes_deck.md`](./B_fuentes_deck.md).

| ID | Tarea | Responsable | Estado |
| --- | --- | --- | --- |
| B1 | Reemplazar las fuentes no verificadas del v6 por su equivalente verificado del README o eliminar el dato: Guzmán (2026) → Emol 13-feb-2026 (F-150, CLP 18,4M); Farías (2026) → Autocosmos 30-abr-2026 (52,3 días); Melelli Viveros (2026) → Pauta 23-ago-2026 (41.700 causas); ANAC (2026) → PDF de diciembre 2025. **Confirmar que cada cifra aparece en la fuente equivalente.** | — | [x] Verificado; 3 cifras mal etiquetadas. Texto corregido en `B_fuentes_deck.md`, se aplica en D |
| B2 | Agregar a las referencias las cuatro citas que faltan: Hogale et al. (2026) y Cox Automotive (2025) en la diapo 8, Chileautos (n.d.) y Autofact (n.d.) en la diapo 5 | — | [x] Referencias listas en `B_fuentes_deck.md`, se aplican en D |
| B3 | Poner la letra que corresponde a "CAVEM (2026)" en la diapo 3 (2026a, b, c o e) | — | [x] CAVEM (2026a, 2026b, 2026c), se aplica en D |
| B4 | Resolver los DOIs falsos (Hasan, Amodu) y Mellado (2026) en `context/definicion_fenomeno_y_objetivos_vg.md` y `deliverys/workshop-2/`, según la sección A de pendientes del README | — | [~] DOIs corregidos en context/ y workshop-2/. Mellado depende de A6 |
| B5 | Si el ~3 autos al mes por dealer (diapo 18) depende del precio de Guzmán, recalcularlo con la fuente que quede en B1 | — | [x] No se recalcula; solo se precisa la etiqueta |

### Bloque C — Coherencia entre documentos (prioridad 2)

| ID | Tarea | Responsable | Estado |
| --- | --- | --- | --- |
| C1 | Fijar una sola cifra de compras B2C en Santiago (la diapo 17 dice ≈485.000; el guion dice 521.000) | — | [ ] |
| C2 | Fijar un solo precio del plan B2B (la diapo 5 dice CLP 59.990; la diapo 7 dice 59.900–149.900) | — | [ ] |
| C3 | Agregar el SO4 al guion de la diapo 24 | — | [ ] |
| C4 | Marcar como superados `workshop-3/03_diseno_muestral_infocar.md` y `03_slides_presentacion_muestreo.md` (N≈1.200–1.500, n=60/80 y 230/300) o reescribirlos según el v6 | — | [ ] |
| C5 | Actualizar `context/market_context.md` y `context/buyer_persona_tam_sam_som.md` a las cifras del v6 (451002: 4.116 / 1.066 / 487; ~3 autos al mes) | — | [ ] |
| C6 | Limpiar `exam-1/propuesta_consolidada_certamen1.md`: 10 enlaces `file:///home/dacmxo/...` y texto corrupto en la línea 124 | — | [ ] |

### Bloque D — Armado del PDF (después de A, B y C)

| ID | Tarea | Responsable | Estado |
| --- | --- | --- | --- |
| D1 | Portada "Certamen 2" y orden: diagnóstico → objetivos → metodología → población y muestra → PESTEL → referencias | — | [ ] |
| D2 | Quitar la diapositiva 14 ("The story so far"), que repite la 3 | — | [ ] |
| D3 | Diapositiva "Qué cambió tras el feedback" (feedback → cambio → dónde está) | — | [ ] |
| D4 | Diapositivas PESTEL: hallazgo + una línea de síntesis + fuente pequeña junto a cada idea; sin etiquetas de oportunidad o amenaza | — | [ ] |
| D5 | Cada diapositiva completa y autoexplicativa en el PDF (sin depender de animaciones) | — | [ ] |
| D6 | Referencias APA 7 completas y exportación a un solo PDF | — | [ ] |
| D7 | Guion con los 7 integrantes y ensayo con tiempo | — | [ ] |

### Bloque E — Fuentes primarias (pendiente del certamen 1)

| ID | Tarea | Responsable | Estado |
| --- | --- | --- | --- |
| E1 | 3 a 5 llamadas cortas a compraventas con `data/Contactos Automotrices en Chile.docx`; registrar fecha, cargo y citas textuales en `research/` | — | [ ] |
| E2 | Escribir a CAVEM, ANAC o CNC pidiendo un dato o una conversación breve | — | [ ] |

---

## 5. Registro de avance

| Fecha | Qué se hizo | Quién |
| --- | --- | --- |
| 2026-11-07 | Análisis de la pauta, diagnóstico del repo y creación de este plan y de `research/pestel/` | Bruno (con Claude Code) |
| 2026-11-07 | Hallazgos aprobados consolidados en `research/pestel/` (E, S, T, A y transversales completos; P parcial). Cifras unificadas: 12,95 % de marcas chinas en usados y 3,4 usados por nuevo | Bruno (con Claude Code) |
| 2026-11-07 | Revisión A8 de los 7 informes de deep research (132 URLs descargadas): P insuficiente, L faltante, E/S/T/A/X aprobables con correcciones. Fecha corregida a martes 10-nov | Bruno (con Claude Code) |
| 2026-11-07 | Bloque B verificado (B1–B3 y B5 listos para aplicar en D; B4 parcial). Errores: 41,4 % ANAC es país de fabricación, 41.700 causas son de fraude en general y el 52,3 días mide desde la denuncia del siniestro | Bruno (con Claude Code) |
| 2026-11-07 | Fecha de entrega fijada (martes 10-nov, 13:40). Prompts de deep research para A1–A7 y lista de revisión en `research/pestel/prompts/` | Bruno (con Claude Code) |
