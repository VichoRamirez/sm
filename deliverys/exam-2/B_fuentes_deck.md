# Bloque B — Verificación de fuentes del deck v6

Revisión hecha el 07-nov-2026 sobre [`../workshop-3/global-sm_v6.pptx`](../workshop-3/global-sm_v6.pptx). Cada cifra se buscó en la fuente descargada (PDF o HTML), no en resúmenes. Los cambios **no se aplicaron al deck** (regla 7 del plan): este archivo trae el texto corregido para pegarlo en el bloque D.

> **Numeración:** la diapositiva física y el número impreso en ella difieren desde la 14 en adelante. Aquí se usa siempre la **física** (orden en el archivo), con el número impreso entre paréntesis cuando no coincide.

## Resumen

| Cita en el v6 | Cifra en el deck | ¿Está en la fuente? | Acción |
| --- | --- | --- | --- |
| Guzmán (2026) | F-150 a CLP 2,0–68,9M; precio medio de CLP 18,4M | ✅ Sí (Emol, tabla "Top 10" y texto) | Corregir la inicial y el título, y poner la URL exacta |
| Farías (2026) | 52,3 días en taller | ⚠️ La cifra está, pero **mide otra cosa** | Cambiar a la fuente Autocosmos y **reescribir la etiqueta** |
| Melelli Viveros (2026) | 41.700 causas por **fraude vehicular** | ❌ **No son de fraude vehicular**: son todas las causas por fraude ingresadas a tribunales | Cambiar la fuente a Pauta y **reescribir la etiqueta** |
| ANAC (2026) | 41,4 % de **marcas chinas** en nuevos | ❌ El 41,4 % es el **país de fabricación** China. Las marcas chinas son el 32,4 % | Reemplazar por CAVEM: 34,19 % entre enero y septiembre de 2026 |
| CAVEM (2026e) | 12,95 % de marcas chinas en usados | ⚠️ La nota de CAVEM dice 12,83 %. El 12,95 % está en el PDF de septiembre (p. 21) | Citar CAVEM (2026c) y corregir la fecha de 2026e |
| Hogale et al. (2026) | 78 % → 31 % de alucinaciones; 100 informes | ✅ Sí (abstract de arXiv) | Agregar la referencia |
| Cox Automotive (2025) | 74 % de los dealers de EE.UU. ponen la precisión como barrera principal | ✅ Sí (p. 7; n = 537 concesionarios franquiciados) | Agregar la referencia y precisar "franchise dealers" |
| Chileautos (n.d.) | Inspección a domicilio a CLP 59.990; más de 130 puntos | ✅ Sí | Agregar la referencia |
| Autofact (n.d.) | CLP 5.990–8.990 | ✅ Sí, en **dos páginas** (precio y tasación a 5.990; Informe Full a 8.990) | Agregar dos referencias (n.d.-a y n.d.-b) |
| CAVEM (2026), diapositiva 3 | 1.060.919 (+5,8 %); 15,3 %; 58 %; 3,4 | ✅ Sí, repartidas en tres informes | Cambiar a CAVEM (2026a, 2026b, 2026c) |

---

## B1 — Fuentes no verificadas

### Guzmán (2026) → Emol, 13-feb-2026 ✅

- **Evidencia:** "el precio promedio de publicación aumentó 5%, pasando de $17.527.519 en 2024 a $18.396.548 en 2025". En la tabla "Top 10 de vehículos más buscados en 2025": Ford F-150, precio mínimo $2.000.000 y máximo $68.900.000. Los datos son de Chileautos y los publica Emol.
- **Error en la referencia del v6:** el autor es **José Tomás** Guzmán, no "J. P.", y el título no coincide. El dato no cambia.
- **Precisión:** CLP 18,4M es el **precio promedio de publicación** en Chileautos, no el precio de transacción.
- **Referencia nueva:**
  > Guzmán, J. T. (2026, February 13). Precios de autos usados suben 5% en 2025: ¿Cuáles son las marcas y modelos más buscados? *Emol*. https://www.emol.com/noticias/Economia/2026/02/13/1191407/autos-usados-chile-2025.html

### Farías (2026) → Autocosmos, 30-abr-2026 ⚠️

- **Evidencia:** "el tiempo promedio entre la denuncia del siniestro y la disponibilidad del vehículo para su retiro fue de 52,3 días corridos" (segundo semestre de 2025, informe semestral de la CMF).
- **Problema:** la diapositiva 2 dice "average time a car spends in an insured repair workshop". La cifra mide el tiempo **desde la denuncia del siniestro hasta que el auto está listo para retirarlo**, no la estadía en el taller. El autor es **Raúl** Farías, en Autocosmos (no "C. Farías" en La Tercera).
- **Texto nuevo para la diapositiva 2:**
  > **52.3 days** — average time from an insurance claim to the repaired car being ready, 2nd half of 2025. Hidden damage is expensive to fix.
- **Referencia nueva:**
  > Farías, R. (2026, April 30). Seguros automotrices: ¿Cuáles son los tiempos de reparación promedio en Chile? *Autocosmos*. https://noticias.autocosmos.cl/2026/04/30/seguros-automotrices-cuales-son-los-tiempos-de-reparacion-promedio-en-chile
- **Opcional:** la fuente primaria es el informe semestral de tiempos de reparación de la CMF. Si alguien lo encuentra, se cita la CMF en vez de la nota de prensa.

### Melelli Viveros (2026) → Pauta, 23-ago-2026 ❌ (la etiqueta está mal)

- **Evidencia:** "Durante 2025, las causas por fraude ingresadas a tribunales alcanzaron su nivel más alto en 12 años. Entre enero y septiembre se registraron más de 41.700 casos, un 64% más que el año anterior, según cifras del Poder Judicial recogidas en un informe de la plataforma Sheriff. Cerca del 69% corresponde a estafas y defraudaciones."
- **Problema:** son **todas las causas por fraude** del país, no las de compraventa de vehículos. La nota relaciona ese aumento con el auge de los usados, pero no da una cifra propia del sector. Las diapositivas 4 y 16 (impresa 14) dicen "vehicle-fraud cases". El mismo error está en `context/definicion_fenomeno_y_objetivos_vg.md`, `context/modalidades_venta_autos_chile_vg.md` y `deliverys/workshop-2/` (ver bloque C).
- **Errores en la referencia:** el autor es **Nicolás** Melelli Viveros y el medio es **Pauta**, el 23-ago-2026 (no The Clinic, 6-oct).
- **Texto nuevo para las diapositivas 4 y 16:**
  > **41,700** fraud cases filed in Chilean courts, Jan–Sep 2025, up 64%: a 12-year high, as used-car sales boom. *(all fraud types; no official figure isolates vehicle fraud)*
- **Si se busca un dato propio del sector,** queda como pregunta para la investigación Social (A3, pregunta 1).
- **Referencia nueva:**
  > Melelli Viveros, N. (2026, August 23). Fraudes en la compraventa de autos alcanzan cifras récord en Chile: Estas son las principales señales de alerta. *Pauta*. https://www.pauta.cl/tendencias/2026/08/23/fraudes-en-la-compraventa-de-autos-alcanzan-cifras-record-en-chile-estas-son-las-principales-senales-de-alerta.html

### ANAC (2026) → cifra equivocada en la diapositiva 4 ❌

- **Evidencia:** en el PDF de ANAC de diciembre de 2025, en "Orígenes de fabricación y marca, acumulado a noviembre 2025", China tiene **41,4 % como país de fabricación** y **32,4 % como país de la marca**.
- **Problema:** la diapositiva 4 dice "Chinese brands, share of sales: 41,4 %". Ese porcentaje incluye autos de marcas no chinas fabricados en China.
- **Recomendación:** usar la cifra de CAVEM de septiembre de 2026 para que nuevos y usados vengan de la **misma fuente y el mismo período**. Marcas chinas en primeras inscripciones, enero a septiembre de 2026: **34,19 %** (CAVEM 2026c, p. 12). En usados: **12,95 %** (p. 21).
- **Texto nuevo para la diapositiva 4:**
  > Chinese brands, share Jan–Sep 2026 · New cars **34.2%** · Used cars **13.0%** — CAVEM (2026c)
- **Con esto, ANAC (2026) desaparece del deck:** se saca de "Sources" en la diapositiva 4 y de las referencias. Si se prefiere mantenerla, usar 32,4 % (marca, enero a noviembre de 2025) con esta referencia:
  > Asociación Nacional Automotriz de Chile [ANAC]. (2026). *Informe sector automotor: Diciembre 2025*. https://www.anac.cl/wp-content/uploads/2026/01/12-ANAC-Mercado-Automotor-Diciembre-2025.pdf

### CAVEM (2026e) — fecha y cifra ⚠️

- La nota de CAVEM sobre marcas chinas se publicó el **2 de octubre de 2026** (no el 11) y dice **12,83 %** "del total acumulado de transferencias en el año". El 12,95 % del deck sale del PDF de septiembre (CAVEM 2026c, p. 21, fila "PARTICIPACIÓN", 95.353 unidades).
- **Acción:** en la diapositiva 4, el 12,95 % se cita como CAVEM (2026c). Si 2026e ya no sostiene ninguna cifra, se elimina de "Sources" y de las referencias. Si se mantiene, se corrige la fecha a October 2.

## B2 — Citas sin referencia

Agregar a las referencias (diapositiva 15):

> Autofact. (n.d.-a). *Informe Full*. Retrieved November 7, 2026, from https://www.autofact.cl/servicios/informe-full
>
> Autofact. (n.d.-b). *Informe de precio y tasación de autos usados*. Retrieved November 7, 2026, from https://autofact.cl/precio-autos-usados
>
> Chileautos. (n.d.). *Vehículo inspeccionado: Inspección profesional CertifyCar*. Retrieved November 7, 2026, from https://www.chileautos.cl/vehiculo-inspeccionado
>
> Cox Automotive. (2025, October 13). *Driving AI readiness in auto retailing* [Media summary]. https://www.coxautoinc.com/wp-content/uploads/2025/10/Cox-Automotive-AI-Readiness-media-summary-FINAL.pdf
>
> Hogale, V. S., Pai, A., & Ravi, N. (2026). *Grounding agentic VLMs with dedicated segmentation for fine-grained vehicle damage assessment* (arXiv:2608.02470). arXiv. https://doi.org/10.48550/arXiv.2608.02470

- **Diapositiva 5:** cambiar "Autofact (n.d.)" por "Autofact (n.d.-a, n.d.-b)".
- **Diapositiva 8:** en el texto, "74% of US franchise dealers" (la encuesta es solo a concesionarios franquiciados, n = 537).
- **Evidencia de Hogale:** el abstract dice "reduces the report hallucination rate from 92% (text-only) and 78% (image-only) to 31% in a controlled evaluation on 100 human-verified reports".

## B3 — Letra de "CAVEM (2026)" en la diapositiva 3

| Cifra | Dónde está |
| --- | --- |
| 1.060.919 transferencias en 2025, +5,8 % | 2026a (diciembre 2025) y 2026b (anuario) |
| 15,3 % comprado por empresas (13.094), septiembre 2026 | 2026c, p. 3 |
| 58 % de las transferencias en Santiago | 2026b, p. 10: RM 615.311 de 1.060.919 = 58,0 % |
| 3,4 usados por cada nuevo | 2026a y 2026c |

**Texto nuevo:** "Sources: CAVEM (2026a, 2026b, 2026c); SII (2026)…".

Nota: la diapositiva 3 debería tener el mismo ajuste de ANAC que la 4 si muestra la participación china. Hoy no la muestra.

## B4 — DOIs falsos y Mellado (2026)

- **Hasan y Amodu:** las referencias se reemplazaron por las correctas (sección 2 del `README.md`) en `context/definicion_fenomeno_y_objetivos_vg.md` y `deliverys/workshop-2/workshop_2_objetivos_investigacion.md`. Las citas falsas siguen en documentos superados de `exam-1/` y `workshop-3/`, que quedan para C4 y C6.
- **Pendiente:** la afirmación "el 75 % de las soluciones de CV se concentran en aseguradoras (Hasan et al., 2025)" no está verificada en el paper. Revisar la copia local antes de volver a usarla. **El v6 no la usa.**
- **Mellado (2026):** sigue abierto. Depende de la investigación Legal (A6, pregunta 1: qué dice la Ley 19.496 sobre la garantía de los usados). Afecta al texto de las diapositivas 4 ("No legal warranty on used cars, but consumer law applies") y 16 ("Used cars carry no legal warranty, even from a dealer"). **No modificar esas frases hasta tener el artículo de la ley.**

## B5 — ~3 autos al mes por dealer

No hace falta recalcular. El divisor de CLP 18,4M está confirmado en la fuente (CLP 18.396.548). Solo se precisa la etiqueta en las diapositivas 16 y 18 (impresas 14 y 16): "SII sales ÷ CLP 18.4M average **asking** price (Guzmán, 2026)". El precio de transacción suele ser menor que el de publicación, así que la cifra es una referencia conservadora del número de autos.
