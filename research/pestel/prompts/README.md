# Prompts de deep research — PESTEL

Un prompt autocontenido por tarea del bloque A del [plan](../../../deliverys/exam-2/PLAN_CERTAMEN_2.md). Se copia el archivo completo en el agente de deep research (Gemini, ChatGPT, Perplexity u otro); no hace falta agregar nada.

| Tarea | Prompt | Destino del resultado |
| --- | --- | --- |
| A1 | [`A1_politico.md`](./A1_politico.md) | [`../P_politico.md`](../P_politico.md) |
| A2 | [`A2_economico.md`](./A2_economico.md) | [`../E_economico.md`](../E_economico.md) |
| A3 | [`A3_social.md`](./A3_social.md) | [`../S_social.md`](../S_social.md) |
| A4 | [`A4_tecnologico.md`](./A4_tecnologico.md) | [`../T_tecnologico.md`](../T_tecnologico.md) |
| A5 | [`A5_ambiental.md`](./A5_ambiental.md) | [`../A_ambiental.md`](../A_ambiental.md) |
| A6 | [`A6_legal.md`](./A6_legal.md) | [`../L_legal.md`](../L_legal.md) |
| A7 | [`A7_transversales.md`](./A7_transversales.md) | [`../transversales.md`](../transversales.md) |

## Flujo

1. Lanzar el prompt y guardar la respuesta **completa y sin editar** en `research/pestel/raw/<tarea>_<agente>.md` (por ejemplo, `raw/A5_gemini.md`). Así queda la trazabilidad.
2. Revisarla con la lista de abajo (tarea A8).
3. Pasar a la tabla de la dimensión **solo los hallazgos aprobados**. Los dudosos van a "Preguntas abiertas".
4. Agregar las fuentes nuevas aprobadas a la sección "Fuentes verificadas" del [`README.md`](../../../README.md) raíz, con su URL exacta.

## Lista de revisión por hallazgo

Un hallazgo se aprueba solo si cumple todo:

- [ ] **La URL abre** y es el documento exacto, no la portada ni el dominio.
- [ ] **La cifra aparece en la fuente** tal como la cita el agente: buscar la cita textual con Ctrl+F. Los agentes de deep research suelen redondear, mezclar períodos o atribuir a un informe un dato que viene de otro.
- [ ] **El período está claro** (año o meses del dato) y es reciente, o se justifica por qué no lo es.
- [ ] **Si la fuente es una noticia que cita un estudio,** se citó el estudio original.
- [ ] **No hay juicio de valor:** no aparecen oportunidad, amenaza, favorable, desfavorable, positivo, negativo, riesgo ni recomendaciones.
- [ ] **Es específico para la industria de usados**, no un enunciado genérico.
- [ ] **La referencia está completa en APA 7.**

Por dimensión, antes de marcarla lista: al menos 6 hallazgos aprobados, al menos uno global y al menos un matiz o postura contraria.

## Para regenerarlos

Los prompts se ensamblaron a partir de una base común más un bloque por dimensión. Si cambia una regla, editar la misma sección en los 7 archivos.
