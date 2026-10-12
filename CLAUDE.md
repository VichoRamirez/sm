# Guía de Proyecto para Claude Code

Bienvenido al repositorio de **Strategic Marketing Proyect**. Este archivo define las directrices operativas para sesiones de trabajo con **Claude Code**.

---

## 1. Contexto del Negocio y Metodología
- **Negocio:** Plataforma móvil y web de compra-venta de autos usados asistida por IA (Computer Vision para escaneo/diagnóstico de daños e identificación de partes a reparar/costos estimados) y scraping de mercado para pricing justo en tiempo real.
- **Problema:** Concesionarios y dealers compran sin referencia confiable de precio ni mecánico en el lugar, navegando alta dispersión (ej. F-150 de CLP 2.0M a 68.9M), variación entre segmentos y planillas manuales.
- **Metodología:** 5 fases estratégicas (`SM | Class 3`) y formulación estricta de objetivos de investigación (`SM | Objective definition`). Consulta obligatoria de [`context/README.md`](./context/README.md) y [`AGENTS.md`](./AGENTS.md).

---

## 2. Escuadrón de Agentes Especializados
Cuando trabajes en este repositorio, opera bajo el perfil y las responsabilidades del agente que mejor corresponda a la tarea solicitada:

1. **`marketing-strategist`** (`.agents/marketing-strategist.md`):
   - Dirección estratégica, coherencia de las 5 fases y formulación de objetivos de investigación (Objetivo General sin cortes muestrales ni verbos de método; Objetivos Específicos como dimensiones observables).
2. **`market-researcher`** (`.agents/market-researcher.md`):
   - Benchmarking internacional (Kavak, Carvana, etc.), modalidades de compraventa en Chile y reportes sectoriales (CAVEM).
3. **`tech-architect`** (`.agents/tech-architect.md`):
   - Síntesis de papers en `data/technical-bases/` (Computer Vision para detección de daños), alcance del MVP y viabilidad técnica.
4. **`data-analyst`** (`.agents/data-analyst.md`):
   - Análisis empírico en `analysis/`, procesamiento de `data/raw-data/` y cuantificación de dispersión de precios.
5. **`delivery-manager`** (`.agents/delivery-manager.md`):
   - Compilación de entregables en `deliverys/`, control de calidad y sincronización de tareas.

Para asumir explícitamente un rol en Claude Code, puedes iniciar con la instrucción:
`Actúa como el agente <nombre-agente> según se define en AGENTS.md.`

---

## 3. Reglas Estrictas de Flujo y Repositorio
- **Fuentes Reales y Verificables (Obligatorio):** Prohibido el uso de fuentes inventadas o supuestos sin respaldo. Todo dato empírico, técnico o de mercado debe provenir de fuentes verificables (`data/technical-bases/`, `data/raw-data/`, CAVEM o recursos oficiales en Notion).
- **Citado en Formato APA-7 (Transversal):** Todo entregable, informe, recomendación y texto debe utilizar citación en el texto `(Autor, Año)` y lista final de referencias en estricto formato **APA 7ª edición**.
- **Contexto:** Solo se consideran recursos de tipo `Articulo`, `Minuta`, `Notas` y `team-research`.
- **Tareas y Contexto:** Las tareas en progreso no son contexto. Solo cuando una tarea está finalizada (`Listo`) se incorpora su desarrollo como contexto en `context/`.
- **Estructura de Carpetas:**
  - `context/`: Acuerdos, contexto consolidado y marcos teóricos.
  - `data/technical-bases/`: Papers científicos y arquitecturas de IA.
  - `data/raw-data/`: Datos crudos para análisis.
  - `analysis/`: Scripts y modelos cuantitativos en Python.
  - `deliverys/`: Pautas y entregables finales.
