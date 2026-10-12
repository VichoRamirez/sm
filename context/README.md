# Estructura de Contexto y Flujo de Trabajo del Proyecto

Este documento establece la gobernanza de contexto, el ciclo de vida de tareas y la organización de las carpetas del repositorio para el proyecto **Strategic Marketing Proyect**.

---

## 1. Definición del Negocio y Problema

### 1.1 Business Definition
Plataforma móvil y web end-to-end orientada al mercado de compra y venta de autos usados, potenciada por un asistente de Inteligencia Artificial que:
- **Inspección y Diagnóstico con IA:** Mediante fotos, videos e información complementaria, escanea el vehículo y emite un diagnóstico preliminar identificando piezas con potencial necesidad de recambio y estimación de costos de reparación.
- **Scraping y Tasación de Mercado:** Levanta datos de mercado en tiempo real para determinar el valor comercial justo según marca, modelo, versión, año, kilometraje y estado.
- **Facilitación de Transacciones:** Reduce la asimetría de información entre compradores, vendedores y concesionarios.

### 1.2 Problema Central y Síntomas
Los concesionarios y dealers automotrices enfrentan la toma de decisiones compra tras compra (cuánto pagar y cuánto costará reacondicionar un vehículo) sin una referencia certera de precio de mercado y sin la presencia inmediata de un mecánico calificado:
- **Dispersión extrema de precios:** Un mismo modelo puede presentar variaciones abismales (ejemplo: Ford F-150 listada entre CLP 2.0M y CLP 68.9M en 2025).
- **Comportamiento heterogéneo por segmentos:** Distintas categorías evolucionan con tendencias dispares (ej. hatchbacks +5%, pickups +4%, sedans +3%, SUVs a la baja).
- **Procesos manuales e ineficientes:** Fijación de precios artesanal navegando múltiples portales y gestionando planillas Excel propensas a errores.

---

## 2. Bases de Conocimiento Metodológicas

El marco conceptual y la ruta de desarrollo del proyecto se sustentan en los lineamientos del curso:

### 2.1 Ruta de Desarrollo: Las 5 Fases del Proceso Estratégico
*(Referencia: `SM | Class 3 | Strategic Marketing`)*

1. **Fase 1: Background (Diagnóstico del Negocio):**
   - Comprensión de la categoría de negocio e historia (dinámicas internas, capacidad adaptativa).
   - Definición de visión, misión y propósito (triple impacto: financiero, ambiental, personas/comunidad).
   - Estructura (roles) e infraestructura (activos físicos/tecnológicos).
   - Alcance geográfico (local, nacional, global) y situación actual de marca/percepción.
2. **Fase 2: Client Profile & Market Research (Investigación de Mercado):**
   - Caracterización del Buyer Persona.
   - Distinción de fuentes: **Fuente primaria** = personas/clientes (entrevistas, encuestas, observaciones directas); **Fuente secundaria** = literatura, prensa, reportes y benchmarks.
3. **Fase 3: Context & SWOT Analysis (Síntesis Estratégica):**
   - Entorno macro (PESTEL) y micro (5 Fuerzas de Porter).
   - Consolidación en FODA como la herramienta de síntesis rigurosa basada en datos y evidencia (evitando sesgos intuitivos).
4. **Fase 4: Goals (Definición de Objetivos):**
   - Formulación de objetivos estratégicos derivados de las fases previas.
5. **Fase 5: Marketing Plan (Operacionalización):**
   - Plan de marketing ejecutable. El análisis sin operacionalización es estéril, y la ejecución sin dirección estratégica malgasta recursos.

### 2.2 Formulación de Objetivos de Investigación de Mercado
*(Referencia: `SM | Objective definition for market research`)*

- **Objetivo General:** 
  $$\text{Verbo en infinitivo} + \text{Fenómeno o variable de interés} \; (+\; \text{orientación analítica si aplica})$$
  - Delimita el foco conceptual del estudio (comprender, analizar, identificar, evaluar, explorar, describir).
  - **Regla:** No incorporar definiciones muestrales ("quiénes", "dónde") ni verbos metodológicos ("medir", "aplicar", "levantar").
- **Objetivos Específicos:**
  $$\text{Verbo en infinitivo} + \text{Dimensión o variable específica observable}$$
  - Descomposición operativa en componentes investigables (percepciones, barreras, atributos valorados, hábitos).

---

## 3. Protocolo de Revisión y Gobernanza de Contexto

Para garantizar coherencia y evitar contaminación de información, la ingesta de contexto se rige bajo las siguientes reglas:

### 3.1 Fuentes de Contexto (Base de Datos de Recursos - Notion)
El contexto externo e interno del proyecto proviene de la base de datos de recursos vinculada a `Strategic Marketing Proyect` en Notion (`c6bdedbd-9e0d-4094-9cc3-0d3095f81a4f`).
**Filtro estricto de tipos admitidos:**
Solo se considerarán como elementos de contexto aquellos recursos catalogados bajo los siguientes tipos:
1. `Articulo`: Artículos de prensa, análisis gremiales (ej. CAVEM) o publicaciones sectoriales.
2. `Minuta`: Acuerdos, observaciones de reuniones y feedback del profesor o stakeholders.
3. `Notas`: Apuntes conceptuales, reflexiones estructuradas y documentos de trabajo del equipo.
4. `team-research`: Investigaciones y levantamientos propios realizados por el equipo.

> *Nota:* Cualquier recurso descartado, en papelera (`in_trash`) o con tipos ajenos a estos cuatro queda excluido de la base activa de contexto.

### 3.2 Ciclo de Vida de las Tareas y su Conversión a Contexto
- Las tareas a ejecutar residen en la base de datos de tareas vinculadas al proyecto en Notion (`961bc1fb-56f8-4066-b7ac-b5f557c4507e`).
- **Desarrollo obligatorio:** Cada tarea debe documentar su desarrollo, entregables intermedios y conclusiones directamente dentro de su página asociada en Notion.
- **Regla de Promoción a Contexto:** Mientras una tarea esté en estado `Sin empezar` o `En curso`, se considera trabajo en progreso. **Únicamente cuando una tarea pasa a estado `Listo` (Finalizado), su contenido se consolida y pasa a formar parte del contexto oficial del proyecto**.

---

## 4. Estructura de Carpetas del Repositorio

El repositorio local se organiza en módulos especializados:

```
strategic-marketing/
├── context/
│   ├── README.md              # Este marco de gobernanza, contexto y workflow
│   ├── business_definition.md, market_context.md, buyer_persona_tam_sam_som.md   # Tareas Notion "Done"
│   ├── objectives_definition_framework.md                                        # Notas de clase
│   └── *_vg.md                # Informes de benchmarks, modalidades y objetivos
├── research/                  # Investigaciones en curso (competidores, disposición a pagar, IA)
├── team/                      # Matriz RACI, minuta y notas de reunión
├── data/
│   ├── technical-bases/       # Bases técnicas (papers, artículos científicos, Computer Vision/IA)
│   │   ├── damage-with-IA/
│   │   └── vehicule-damage-detection/
│   └── raw-data/              # Datos crudos (scrapes de mercado, reportes CAVEM, bases de precios)
├── analysis/                  # Procesamiento analítico, scripts de cálculo, modelos y síntesis
└── deliverys/                 # Instrucciones, pautas y rúbricas de los entregables
    ├── stage-1/               # Stage 1 Background: Market Research Report v2 e InfoCar Internal Analysis
    └── workshop-2/            # Pauta e instrucciones de Workshop 2 (Objetivos de Investigación)
```

- **`context/`**: Gobierna los marcos teóricos, acuerdos, minutas y síntesis de tareas finalizadas.
- **`data/technical-bases/`**: Aloja el sustento técnico de ingeniería e inteligencia artificial (papers de detección de daños en carrocería, modelos de clasificación, bibliografía científica).
- **`data/raw-data/`**: Depósito de materia prima para análisis (datasets de vehículos usados, estadísticas de ventas, reportes CAVEM).
- **`analysis/`**: Espacio donde se procesa la materia prima (`raw-data`) aplicando las bases técnicas y estratégicas.
- **`deliverys/`**: Reúne las instrucciones formales de cada entrega y taller evaluado.

---

## 5. Norma Transversal: Uso de Fuentes Reales y Formato APA-7

En concordancia con los estándares académicos y profesionales del proyecto:
1. **Fuentes Reales Obligatorias:** Todo dato, afirmación, recomendación o entregable debe fundamentarse en fuentes reales y verificables (`data/technical-bases/`, `data/raw-data/`, gremios automotrices como CAVEM, o la base de Recursos en Notion). Queda prohibido el uso de fuentes ficticias o datos inventados.
2. **Citado en Formato APA 7ª Edición (APA-7):** Todo entregable, informe, recomendación y documento de trabajo debe aplicar rigurosamente las normas APA-7:
   - **En el texto:** Citación parentética `(Autor, Año)` o narrativa `Autor (Año)`. Para tres o más autores, usar `(PrimerAutor et al., Año)`.
   - **Referencias:** Todo documento debe cerrar con una lista completa de referencias bibliográficas en formato APA-7 con DOI o URL activa según corresponda.
