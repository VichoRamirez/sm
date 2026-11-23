# Examen final — decisiones y cambios para el deck v13

Base: `global-sm_v12.pdf` y los issues #1–#13 (seguimiento en #13). Decisiones del equipo tomadas el 22-nov-2026.

## Decisiones

| Issue | Decisión | Consecuencia |
| --- | --- | --- |
| #2 Porter sin origen | **Opción A.** Todo nace del PESTEL descriptivo: los datos de industria se agregan al PESTEL. | Hecho en `research/pestel/` (T-11 a T-14, E-11, E-12). Falta el deck. |
| #4 Talleres y aseguradoras | **Opción B.** Las líneas 2 y 3 pasan a **siguiente estudio**: no se validan con SO del diseño actual. | Corregir láminas 40, 41 y 46 y W3. |
| #5 Precio B2B | B2B = **suscripción mensual** como primera idea (sin cambio en láminas 7 y 24). La forma de pago es algo que se **levanta en las entrevistas** (SO5): no se afirma en el FODA. | Reformular S3 y línea 4. |

## #2 — Hallazgos agregados al PESTEL (verificados el 22-nov-2026)

| ID | Dato | Lámina Porter que lo usa |
| --- | --- | --- |
| T-11 | Inchcape cotiza reparaciones desde fotos: **piloto** BMW en Chile y Perú (Inchcape, 2025) | 38, 42, T2 |
| T-12 | Tractable: USD 60M, valoración USD 1.000M, “más de 20 de las 100 mayores aseguradoras” según la empresa (Lunden, 2021) | 38 |
| T-13 | App AutoInspección de Mapfre (Mapfre Chile Seguros, s. f.); Kavak revisa 240 puntos (Emol, 2024) | 37, 40, O4, T2 |
| T-14 | Google Cloud Vision: USD 1,50 por 1.000 unidades (Google Cloud, s. f.) | 38, 41 |
| E-11 | Corfo: 145 emprendimientos (Emol, 2026d) | 38 |
| E-12 | 2,23M autos asegurados; 29 días hasta entrar al taller y 52,3 hasta la reparación (CMF, 2026b); 39 % de reclamos por negativa a pagar (G5 Noticias, 2026b) | 40, 41, O4 |

**Cambios en el deck:**
- Láminas 28 (E) y 30 (T): sumar los hallazgos nuevos como nivel *Industria*, o sumarlos al canvas (35).
- Láminas 37–41: chip de origen en cada fuerza, p. ej. `From PESTEL: T-11 · E-11`.

**Correcciones de cifras detectadas al verificar (aplicar en v13):**
- **38:** “145 startups selected by Corfo Semilla… From 3,586 applications” → los 145 son **50 de Semilla Inicia + 95 de Expande**; 3.586 es una suma propia (3.074 + 512), no un dato de la fuente. Texto sugerido: “145 startups selected by Corfo in 2026 (Semilla Inicia and Expande)”.
- **38:** Inchcape es un **piloto** con BMW (“more than 50 customers”); decirlo.
- **40:** “≈32% of the fleet” **no está en la fuente CMF**: quitarlo o buscar la cifra del parque con otra fuente verificada.
- Si se usa el desglose por gravedad del CMF: 43,6 días (leve) y 67 (grave), no “43”.
- **Lunden (2021)** ya tiene URL verificada → agregar a referencias (issue #11).

## #4 — Líneas 2 y 3 como siguiente estudio

- **41 (Fuerza 5):** “We test it: SO4: workshop experience…” → “Next study: interviews with workshops. SO4 only measures dealers' time to quote.”
- **40 (Fuerza 4):** mantener “Insurers are not in our sample yet” y agregar “→ next study”.
- **W3 (45):** quitar “We check it with SO2 · SO4” si se refiere a talleres; dejar “next study”.
- **46:** líneas 2 (Local data) y 3 (Insurers) marcadas con la etiqueta `Next study`; sin SO asignado.
- **#1 (metas):** las metas de las líneas 2 y 3 son metas de **siguiente etapa** (p. ej. “cerrar N entrevistas a talleres/aseguradoras antes de…”), no metas validadas por SO1–SO5.

## #5 — Precio y forma de pago

- **Láminas 7 y 24:** sin cambio (B2B = plan mensual).
- **S3 (45):** “≈CLP 20.000 por auto” vale solo para el dealer promedio (≈3 autos/mes). Texto sugerido: “Plan mensual de CLP 59.900: ≈CLP 20.000 por auto para el dealer promedio; para quien compra ≈1 auto al mes cuesta lo mismo que una inspección (CLP 59.990).”
- **Línea 4 (46):** “Pay by volume” deja de proponer el pago por reporte. Texto sugerido: “Suscripción como primera idea; la forma de pago por segmento se levanta en las entrevistas (SO5).”
- **40 (supuesto argumentado):** “dealers buying ≈1 car a month may prefer per-report” → presentarlo como pregunta abierta de SO5, no como postura.
- **SO5 (9 y 13):** agregar al instrumento B2B una pregunta abierta sobre la forma de pago preferida, sin cambiar el objetivo.
- **#6 M3:** la línea 4 se valida solo con SO5.
