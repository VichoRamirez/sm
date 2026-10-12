# InfoCar — Strategic Marketing Project (UDD)

## Por Caro B., Cuero D., León M., Marín G., Parraud J., Ramírez S., Ramírez V.

Repositorio del proyecto de Strategic Marketing: una app que, frente al auto y con fotos, le dice a un comprador de autos usados cuánto pagar como máximo y cuánto costará dejarlo listo para la venta.

---

## Estructura del repositorio

| Carpeta | Qué contiene |
| --- | --- |
| [`context/`](./context/) | Contexto oficial: tareas terminadas (`business_definition`, `market_context`, `buyer_persona_tam_sam_som`), marco de objetivos de la clase e informes `_vg` (benchmarks, modalidades de venta, objetivos de investigación). Las reglas están en [`context/README.md`](./context/README.md). |
| [`research/`](./research/) | Investigaciones en curso: competidores y sustitutos, disposición a pagar, IA (alucinaciones y adopción). |
| [`deliverys/`](./deliverys/) | Entregables: `stage-1/` (Market Research Report v2, InfoCar Internal Analysis) y `workshop-2/` (pauta y objetivos de investigación). |
| [`team/`](./team/) | Matriz RACI, minuta de reunión y notas sueltas de reuniones. |
| [`data/technical-bases/`](./data/technical-bases/) | Papers de detección de daños con IA (Hasan et al., 2025; Amodu et al., 2024). |
| `.agents/`, `AGENTS.md`, `CLAUDE.md`, `GEMINI.md` | Perfiles y reglas de los agentes de IA que trabajan en el repo. |

---

## Fuentes verificadas

Cada link se comprobó el 12 de octubre de 2026: la página responde y, en los informes generados por agentes, el título coincide con la cita. Esto no confirma que cada cifra citada aparezca en la fuente.

🔒 = el sitio bloquea la verificación automática (responde 403/422/429), pero la URL es específica y el sitio es conocido. Conviene abrirla a mano una vez.

### 1. IA: alucinaciones y confiabilidad de modelos de lenguaje

1. [Why language models hallucinate — OpenAI](https://openai.com/index/why-language-models-hallucinate/) 🔒
2. [Kalai et al. (2025). Why Language Models Hallucinate — arXiv 2509.04664](https://arxiv.org/html/2509.04664v1)
3. [Introducing the next generation of Vectara's Hallucination Leaderboard](https://www.vectara.com/blog/introducing-the-next-generation-of-vectaras-hallucination-leaderboard)
4. [Vectara's Hallucination Leaderboard — Emergent Mind](https://www.emergentmind.com/topics/vectara-s-hallucination-leaderboard)
5. [Which AI Has the Lowest Hallucination Rate? Why Benchmarks Don't Tell the Full Story — Seekr](https://www.seekr.com/resource/ai-lowest-hallucination-rate/)
6. [Latest AI Hallucination Rates, Benchmarks and Leaderboards 2026 — Suprmind](https://suprmind.ai/hub/ai-hallucination-rates-and-benchmarks/)
7. [AI Hallucination in May 2026: The Complete Data Report — Multi AI News](https://multiai.news/ai-hallucination-in-2026/)
8. [Benchmarking LLM Faithfulness in RAG with Evolving Leaderboards — arXiv 2505.04847](https://arxiv.org/html/2505.04847v2)

### 2. IA: visión computacional y detección de daños (papers)

1. Hasan, M. J., Nguyen, C. K., Boo, Y. L., Jahani, H., & Ong, K.-L. (2025). Vehicle damage detection using artificial intelligence: A systematic literature review. *WIREs Data Mining and Knowledge Discovery*. [doi:10.1002/widm.70027](https://doi.org/10.1002/widm.70027) 🔒 — copia local en [`data/technical-bases/damage-with-IA/`](./data/technical-bases/damage-with-IA/)
2. Amodu, O. D., Shaban, A., & Akinade, G. (2024). Revolutionizing vehicle damage inspection: A deep learning approach for automated detection and classification. *IoTBDS 2024*, SciTePress. [doi:10.5220/0012630700003705](https://doi.org/10.5220/0012630700003705) — copia local en [`data/technical-bases/vehicule-damage-detection/`](./data/technical-bases/vehicule-damage-detection/)
3. [Grounding Agentic VLMs with Dedicated Segmentation for Fine-Grained Vehicle Damage Assessment — arXiv 2608.02470](https://arxiv.org/html/2608.02470)
4. [CarDD: Car Damage Detection Dataset — Emergent Mind](https://www.emergentmind.com/topics/cardd)
5. [Harnessing GPT-4V(ision) for Insurance: A Preliminary Exploration — arXiv 2404.09690](https://arxiv.org/html/2404.09690v1)
6. [INS-MMBench: A Comprehensive Benchmark for Evaluating LVLMs' Performance in Insurance — arXiv 2406.09105](https://arxiv.org/pdf/2406.09105)
7. [Benchmarking Large and Small MLLMs — arXiv 2501.04150](https://arxiv.org/pdf/2501.04150)
8. [The Dawn of LMMs: Preliminary Explorations with GPT-4V(ision) — arXiv 2309.17421](https://arxiv.org/pdf/2309.17421)
9. [Gemini vs GPT-4V: A Preliminary Comparison and Combination of Vision-Language Models Through Qualitative Cases — arXiv 2312.15011](https://arxiv.org/pdf/2312.15011)

### 3. IA: modelos de precio de autos usados

1. [Machine learning for predicting used car resale prices using granular vehicle equipment information — ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0957417424025077) 🔒
2. [Semantic Feature Engineering: Predicting Used Car Prices by Modeling Multi-criteria Human Decisions with LLMs — Springer](https://link.springer.com/article/10.1007/s43069-025-00600-3)

### 4. IA: proveedores comerciales de inspección vehicular (referentes internacionales)

- **Tractable:** [sitio](https://tractable.ai/) · [solución para aseguradoras](https://tractable.ai/insurers/) · [New AI solution accurately assesses vehicle condition in minutes (2021)](https://tractable.ai/en/resources/new-ai-solution-accurately-assesses-vehicle-condition-in-minutes) · [Beesafe to use AI to assess car damage (2022)](https://tractable.ai/beesafe-to-use-ai-to-assess-car-damage-and-settle-claims-in-minutes/) · [TechCrunch: Tractable snaps up $65M led by SoftBank (2023)](https://techcrunch.com/2023/07/18/tractable-snaps-up-65m-led-by-softbank-for-car-and-property-damage-appraisals-using-ai/) · [Tractable Review — Smarterway](https://smarterway.ai/tools/tractable)
- **Ravin AI:** [Ravin AI en los medios](https://www.ravin.ai/media) · [Insurance News: IAG to integrate AI-powered vehicle inspection (2023)](https://insurancenews.com.au/daily/iag-to-integrate-ai-powered-vehicle-inspection-in-some-brands)
- **Monk AI / ACV Auctions:** [ACV acquires Monk SAS (2022)](https://investors.acvauto.com/news-events/press-releases/detail/52/acv-acquires-monk-sas-a-leading-ai-powered-imaging-and-vehicle-inspection-platform) · [Monk tapped by Toyota Financial Services France (2023)](https://investors.acvauto.com/news-events/press-releases/detail/23/acvs-ai-powered-monk-technology-tapped-by-toyota-financial-services-france-for-off-lease-vehicle-inspections) · [ACV Monk](https://www.acvauto.com/monk)
- **UVeye:** [sitio](https://www.uveye.com/) · [Fleet Maintenance: UVeye receives $191M (2025)](https://fleetmaintenance.com/equipment/safety-and-technology/article/55263987/uveye-uveye-receives-191m-for-ai-powered-vehicle-inspection-systems)
- **ProovStation:** [Tech.eu: ProovStation raises €10.4 million (2023)](https://tech.eu/2023/01/25/proovstation-raises-eur104-million-continues-to-scan-for-damage/) · [Repairer Driven News: rollout en Europa (2020)](https://www.repairerdrivennews.com/2020/01/28/proovstation-ai-vehicle-inspection-stations-coming-to-europe-uveye-works-with-oems/) 🔒
- **Fyusion / Cox Automotive:** [VentureBeat: Cox acquires AI 3D scanner maker Fyusion (2021)](https://venturebeat.com/ai/cox-acquires-ai-3d-scanner-maker-fyusion-to-aid-used-car-dealerships) 🔒
- **CCC Estimate-STP:** [Repairer Driven News: CCC launches AI-driven estimating (2021)](https://www.repairerdrivennews.com/2021/11/04/ccc-launches-ai-driven-estimating-process-that-eliminates-need-for-human-interaction/) 🔒
- **Solera Qapter:** [Qapter Intelligent Estimating](https://www.solera.com/solutions/claims/qapter/) · [Repairer Driven News: nueva versión de Qapter (2020)](https://www.repairerdrivennews.com/2020/07/10/solera-new-version-of-qapter-allows-ai-photo-estimating/) 🔒
- **DeGould:** [Automotive Logistics: DeGould secures funding (2021)](https://www.automotivelogistics.media/finished-vehicle-logistics/degould-secures-funding-for-vehicle-inspection-future/42439.article)
- **Inspección por IA en seguros (India):** [Outlook Money: Kotak General Insurance launches AI-based vehicle inspection (2022)](https://www.outlookmoney.com/news/kotak-general-insurance-launches-ai-based-vehicle-inspection-for-motor-insurance-renewals-news-210018)
- **Bdeo:** [SegurosNews: Mapfre apuesta por la IA de Bdeo (2022)](https://segurosnews.com/ultimas-noticias/mapfre-apuesta-por-la-ia-de-bdeo-en-sus-procesos-de-verificacion-de-autos)
- **IA en siniestros, general:** [AI for Insurance Claims: Automation and Processing Playbook — Kanopy Labs](https://kanopylabs.com/blog/ai-for-insurance-claims-processing-automation)

### 5. Plataformas internacionales de compraventa de usados

- **Kavak:** [Kavak Chile](https://www.kavak.com/cl) · [Garantía Kavak](https://www.kavak.com/cl/blog/compra-autos-con-la-garantia-kavak) · [Vender tu auto en Kavak Chile](https://www.kavak.com/cl/blog/quieres-vender-tu-auto-lo-compramos-en-kavak-chile) · [Bloomberg Línea: serie E de US$700M (2021)](https://www.bloomberglinea.com/2021/09/22/kavak-recauda-serie-e-de-us700-millones-y-queda-detras-de-nubank-en-valor/) · [Bloomberg Línea: despidos y recortes en Chile (2022)](https://www.bloomberglinea.com/2022/11/19/kavak-realiza-nueva-ola-de-despidos-en-mexico-y-brasil-inicia-recortes-en-chile/) · [Bloomberg Línea: cierre en Colombia y Perú (2023)](https://www.bloomberglinea.com/2023/11/03/kavak-anuncia-cierre-de-operaciones-en-colombia-y-peru-estas-son-las-razones/) · [Bloomberg Línea: valoración baja US$6.500M (2025)](https://www.bloomberglinea.com/latinoamerica/mexico/valoracion-de-kavak-baja-en-us6500-millones-en-ultima-ronda-de-financiamiento/) · [Chócale: Serie F de US$300M (2026)](https://chocale.cl/2026/02/kavak-levanta-us300-millones-en-ronda-serie-f/) · [DF: planes de Kavak en Chile (2023)](https://www.df.cl/df-lab/transformacion-digital/los-planes-del-unicornio-mexicano-kavak-para-duplicar-su-operacion-en-chile)
- **Carvana:** [Resultados récord 2025](https://press.carvana.com/carvana-announce-record-fourth-quarter-and-full-year-2025-results/) 🔒 · [Inspección de 150 puntos](https://www.carvana.com/certified-program) 🔒 · [Sell or trade](https://www.carvana.com/trades) 🔒
- **AUTO1 Group / Autohero / wirkaufendeinauto.de:** [AUTO1: resultados récord 2025](https://www.auto1-group.com/press/pressrelease/auto1-group-achieves-record-breaking-2025-results/) · [Autohero: standard qualité](https://www.autohero.com/fr/pourquoi-choisir-autohero/standard-qualite/) · [Monsterdealz: wirkaufendeinauto.de Erfahrungen 2026](https://www.monsterdealz.de/magazin/auto-kaufen-und-verkaufen-bei-wirkaufendeinauto-de)
- **Shift Technologies:** [Financier Worldwide: Chapter 11 (2023)](https://www.financierworldwide.com/fw-news/2023/10/12/shift-technologies-files-for-chapter-11-bankruptcy)
- **Cazoo:** [Retail Insight Network: Cazoo enters administration (2024)](https://www.retail-insight-network.com/news/cazoo-administration-uk-car-online/) 🔒

### 6. IA: adopción en Chile, en pymes y en automotoras

- **Chile, personas:** [Cadem: 48% usa IA en su trabajo — Emol](https://www.emol.com/noticias/Nacional/2026/04/15/1197157/cadem-inteligencia-artificial-encuesta-chile.html) · [La irrupción de la IA en el mercado laboral — La Tercera](https://www.latercera.com/pulso/noticia/la-irrupcion-de-la-ia-en-el-mercado-laboral-casi-la-mitad-de-los-trabajadores-dice-ocuparla/) · [La misma nota en el sitio de Cadem](https://cadem.cl/la-tercera-la-irrupcion-de-la-ia-en-el-mercado-laboral-casi-la-mitad-de-los-trabajadores-dice-ocuparla/) · [Cadem: 78% ha usado IA generativa — The Clinic](https://www.theclinic.cl/2026/09/03/estudio-de-cadem-el-78-de-los-chilenos-ha-usado-ia-generativa-y-casi-la-mitad-descubre-nuevas-marcas-con-ella/) · [Barómetro Digital 2025–2026 — Diario USACH](https://www.diariousach.cl/barometro-digital-de-chile-2025-2026-76-de-los-chilenos-usa-inteligencia) · [El 76% de los chilenos ya usa IA — Poder y Liderazgo](https://www.poderyliderazgo.cl/el-76-de-los-chilenos-ya-usa-inteligencia-artificial-y-crece-alerta-por-alfabetizacion-digital/) · [ILIA 2025: Chile lidera en Latinoamérica — La Tercera](https://www.latercera.com/nacional/noticia/ilia-2025-chile-se-ubica-como-el-pais-que-mas-y-mejor-usa-la-inteligencia-artificial-en-latinoamerica/) · [Chile juega en otra liga de IA — República](https://republica.com/economia/chile-juega-en-otra-liga-de-ia-y-anthropic-valida-su-ecosistema-202651610031)
- **Chile, empresas:** [IA en Chile: crece su uso en empresas — Entel Digital](https://www.enteldigital.cl/blog/estudio-sobre-adopcion-de-ia-en-chile) · [Seis de cada diez empresas usan IA en el Biobío — Irade](https://irade.cl/estudio-sobre-adopcion-de-ia-en-chile/) · [73% de las empresas en Chile adopta IA — TrendTIC](https://www.trendtic.cl/2024/11/73-de-las-empresas-en-chile-adopta-inteligencia-artificial-pero-en-distintas-etapas-desde-exploracion-a-uso-integral/) · [La IA acelera su entrada al comercio — DF](https://www.df.cl/economia-y-politica/laboral-personas/la-inteligencia-artificial-acelera-su-entrada-al-comercio-en-chile-pero) · [Estudio SAP: pymes en Chile apuestan por la IA](https://news.sap.com/latinamerica/2025/05/estudio-sap-pequenas-y-medianas-empresas-en-chile-apuestan-por-la-ia/) · [Encuesta de Acceso y Uso TIC — Ministerio de Economía (PDF)](https://www.economia.gob.cl/wp-content/uploads/2020/07/Informe-de-Resultados-Encuesta-TIC.pdf)
- **OCDE, pymes:** [AI adoption by SMEs (PDF)](https://www.oecd.org/content/dam/oecd/en/publications/reports/2025/12/ai-adoption-by-small-and-medium-sized-enterprises_9c48eae6/426399c1-en.pdf) · [AI adoption by SMEs (página)](https://www.oecd.org/en/publications/ai-adoption-by-small-and-medium-sized-enterprises_426399c1-en.html) 🔒 · [Resumen interactivo — Libertify](https://www.libertify.com/interactive-library/oecd-ai-adoption-smes/) · [Empowering SMEs in the age of AI, encuesta D4SME 2025 (PDF)](https://www.oecd.org/content/dam/oecd/en/publications/reports/2026/04/empowering-smes-in-the-age-of-ai_7f58652c/bf5a9816-en.pdf)
- **Automotoras:** [Cox Automotive: AI Readiness, resumen de prensa (PDF)](https://www.coxautoinc.com/wp-content/uploads/2025/10/Cox-Automotive-AI-Readiness-media-summary-FINAL.pdf) · [CDK Global: la IA mejora la conversión de leads — Automotive News](https://www.autonews.com/retail/an-cdk-data-box-retal-tech-trends-0303/) 🔒 · [CDK Global: AI Gains Ground at the Dealership (video)](https://www.cdkglobal.com/insights/video-ai-gains-ground-dealership)

### 7. Legal y regulación

- **Responsabilidad por chatbots:** [Air Canada responsable por su chatbot — DWW](https://www.dww.com/articles/bc-tribunal-finds-air-canada-liable-for-inaccurate-advice-given-by-website-chatbot) · [American Bar Association](https://www.americanbar.org/groups/business_law/resources/business-law-today/2024-february/bc-tribunal-confirms-companies-remain-liable-information-provided-ai-chatbot/) 🔒 · [Center Consulting](https://www.centerconsulting.com/ai-library/facts/air-canada-chatbot-separate-entity-rejected) · [Are Chatbot Promises Legally Binding? — Agent Torture](https://www.agenttorture.com/resources/are-chatbot-promises-legally-binding) · [Chevrolet of Watsonville — AI Incident Database](https://incidentdatabase.ai/entities/chevrolet-of-watsonville/) · [Chevy Tahoe por $1 — Cut The SaaS](https://cut-the-saas.com/ai/chatbot-case-study-purchasing-a-chevrolet-tahoe-for-dollar-1) · [Chevy Tahoe por $1 — Agent Kits](https://www.agent-kits.com/postmortem/library/chevrolet-watsonville-chatbot-one-dollar-tahoe)
- **Proyecto de ley de IA en Chile (Boletín 16821-19):** [IAPP](https://iapp.org/news/a/se-aprueba-en-primer-tr-mite-constitucional-el-proyecto-que-regula-los-sistemas-de-ia-en-chile) · [TI Chile](https://www.tichile.cl/ley-ia-chile-asistente-virtual-legal/) · [Cooperativa](https://cooperativa.cl/noticias/pais/politica/camara-baja/diputados-aprobaron-proyecto-para-regular-la-inteligencia-artificial-en/2025-10-13/213644.html) · [MinCiencia](https://www.minciencia.gob.cl/noticias/proyecto-que-regula-usos-de-la-inteligencia-artificial-avanza-al-senado/) · [AI Policy Tracker](https://aipolicytracker.org/policies/chile-proyecto-de-ley-que-regula-los-sistemas-de-inteligencia-artificial-boletin-16821-19) · [Neuronet](https://neuronet.cl/ley-inteligencia-artificial-chile/)
- **Ley 21.719 de datos personales (vigente desde el 1 de diciembre de 2026):** [Anguita Osorio](https://www.anguitaosorio.cl/es/ley-datos-diciembre-2026/) · [Surtika](https://surtika.cl/ley-21719) · [eCertify Academy](https://ecertifyacademy.com/ley-21719-proteccion-datos-cuenta-regresiva/) · [YourDevs](https://www.yourdevs.cl/blog/ley-21719-proteccion-datos-chile) · [LexAlert](https://www.lexalert.cl/recursos/ley-21719-datos-personales)
- **Trámites e impuestos de la compraventa:** [Transferencia de dominio — ChileAtiende](https://www.chileatiende.gob.cl/fichas/3409-transferencia-de-dominio-de-vehiculos-motorizados) · [Certificado de anotaciones vigentes — ChileAtiende](https://www.chileatiende.gob.cl/fichas/3370-certificado-de-anotaciones-vigentes-de-vehiculos-motorizados) · [Ficha PDF del mismo certificado](https://www.chileatiende.gob.cl/fichas/3370/1/pdf) · [Certificado de multas no pagadas — ChileAtiende](https://www.chileatiende.gob.cl/fichas/3439-certificado-de-multas-de-transito-no-pagadas) · [Permiso de circulación — ChileAtiende](https://www.chileatiende.gob.cl/fichas/9611-permiso-de-circulacion) · [Tasación fiscal del SII — ChileAtiende (PDF)](https://www.chileatiende.gob.cl/fichas/13438/1/pdf) · [¿Qué impuesto afecta a la venta de usados? — SII](https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/001_130_0706.htm)
- **Fraude, reclamos y derechos del consumidor:** [SERNAC denunció a Automotora Autal — Chócale (2025)](https://chocale.cl/2025/01/sernac-denuncio-a-automotora-autal-por-eventual-delito-de-estafa/) · [Fraudes en la compraventa de autos alcanzan cifras récord — Pauta (2026)](https://www.pauta.cl/tendencias/2026/08/23/fraudes-en-la-compraventa-de-autos-alcanzan-cifras-record-en-chile-estas-son-las-principales-senales-de-alerta.html) · [Cómo comprar un auto usado sin llevarse sorpresas — The Clinic (2026)](https://www.theclinic.cl/2026/09/01/comprar-auto-usado-chile/) · [Automotoras con más reclamos — BioBioChile (2023)](https://www.biobiochile.cl/noticias/economia/mercado-automotriz/2023/12/06/revelan-las-automotoras-con-mas-reclamos-en-chile-y-pais-de-donde-vienen-autos-con-alta-tasa-de-quejas.shtml) · [Cae banda que estafaba con autos en redes sociales — 24horas (2026)](https://www.24horas.cl/actualidad/nacional/cae-banda-que-estafaba-con-autos-en-redes-sociales-38-victimas) · [Chileautos: cobro 1% engañoso — Reclamos.cl](https://www.reclamos.cl/chileautoscl/reclamo/2024/oct/chileautoscl-cobro-1-enga-oso-por-venta-de-auto) 🔒

### 8. Mercado automotriz chileno: cifras

- **CAVEM (informes oficiales):** [Informe mensual, diciembre 2025 (PDF)](https://www.cavem.cl/informes/6981f16e190e9.pdf) · [Anuario automotor 2025 (PDF)](https://www.cavem.cl/informes/6a7c9bdb0cbc1.pdf) · [Informe mensual, septiembre 2026 (PDF)](https://www.cavem.cl/informes/6ac52d8391f8d.pdf) · [Informe mensual, julio 2026 (PDF, alojado en cnc.cl)](https://cnc.cl/wp-content/uploads/2021/01/Informe-Mensual-Julio-2026.pdf) · [Marcas chinas de autos usados en Chile](https://www.cavem.cl/noticias/marcas-chinas-de-autos-usados-en-chile-cuntas-se-transfieren-y-qu-buscan-los-compradores-segn-cavem) · [Historial de un vehículo usado](https://www.cavem.cl/noticias/historial-de-un-vehculo-usado-la-clave-para-comprar-con-confianza) · [El mercado de usados se digitaliza (cuarentena)](https://www.cavem.cl/noticias/por-efecto-cuarentena-mercado-de-autos-usados-se-digitaliza-y-logra-frenar-la-cada-de-su-oferta)
- **ANAC:** [Mercado automotor, diciembre 2025 (PDF)](https://www.anac.cl/wp-content/uploads/2026/01/12-ANAC-Mercado-Automotor-Diciembre-2025.pdf)
- **Prensa sobre transferencias y precios:** [Venta de autos usados crece 4,1% a agosto — Nuevo Poder](https://www.nuevopoder.cl/venta-de-autos-usados-crece-41-y-alcanza-su-segundo-mejor-registro-historico-a-agosto/) · [736.120 transferencias en 2026 — REDIMIN](https://www.redimin.cl/camara-de-comercio-automotriz-reporta-736-120-transferencias-de-autos-usados-en-2026) · [CAVEM: los usados impulsan el sector — PressLatam](https://presslatam.cl/2026/09/cavem-el-mercado-de-vehiculos-usados-impulsa-el-dinamismo-del-sector-automotor-en-agosto-con-mas-de-91-mil-transferencias/) · [Usados superan las 100.000 unidades en marzo — La Tercera](https://www.latercera.com/pulso/noticia/venta-de-autos-usados-100-mil-mejor-nivel-en-cuatro-anos/) · [Usados superan los 900 mil en 2025 — La Tercera](https://www.latercera.com/mtonline/noticia/venta-de-vehiculos-usados-crece-en-octubre-y-supera-los-900-mil-en-2025-que-marcas-lideran/) · [Precios de usados suben 5% en 2025; F-150 lidera búsquedas — Emol](https://www.emol.com/noticias/Economia/2026/02/13/1191407/autos-usados-chile-2025.html) · [Radiografía del mercado automotor, agosto 2026 — Emol](https://www.emol.com/noticias/Autos/2026/09/04/1210584/autos-usados-cavem-agosto-2026.html) · [Ventas de vehículos, septiembre 2026 (CAVEM) — The Clinic](https://www.theclinic.cl/2026/10/06/ventas-de-vehiculos-en-chile-septiembre-2026-cavem/) · [Balance del mercado automotor — Autofact](https://www.autofact.cl/blog/comprar-auto/mercado/mercado-automotor-chile) · [CAVEM llama a verificar el historial — G5 Noticias](https://g5noticias.cl/2026/08/31/cavem-llama-a-verificar-el-historial-de-los-vehiculos-usados-antes-de-comprar/)
- **Talleres y reparación:** [Tiempos de reparación promedio en Chile — Autocosmos (2026)](https://noticias.autocosmos.cl/2026/04/30/seguros-automotrices-cuales-son-los-tiempos-de-reparacion-promedio-en-chile)
- **Datos internos (no son links):** archivo SII `SIIVentaVehiculos.xlsx` (actividad 451, año comercial 2024), usado en [`context/market_context.md`](./context/market_context.md) y [`context/buyer_persona_tam_sam_som.md`](./context/buyer_persona_tam_sam_som.md).

### 9. Modalidades de venta y actores locales

- **Portales y clasificados:** [Chileautos: quiénes somos](https://www.chileautos.cl/quienessomos/) · [Yapo.cl](http://Yapo.cl) · [Vende tu auto en Mercado Libre](https://www.mercadolibre.cl/l/vende-tu-auto)
- **Retoma, iBuyers y consignación:** [Clicar](https://www.clicar.cl/) · [FNE aprueba compra de OLX Autos Chile por Grupo Salazar Israel — DF (2023)](https://www.df.cl/empresas/industria/fne-da-luz-verde-y-grupo-salazar-israel-compra-toda-la-operacion-de-olx) · [Te Vendemos el Auto](https://tevendemoselauto.cl/) · [Te Vendemos el Auto: el sitio que la rompe — Radio Agricultura (2023)](https://www.radioagricultura.cl/motor/2023/11/21/te-vendemos-el-auto-el-sitio-que-la-rompe-en-el-mercado-automotriz/) · Kavak (ver sección 5)
- **Transferencias:** [Requisitos de transferencia — Autofact](https://www.autofact.cl/blog/comprar-auto/tramites/requisitos-transferencia-autofact) · [Transferencias para automotoras — Autofact](https://www.autofact.cl/transferencias/automotoras)

### 10. Competidores y sustitutos en Chile

- **Competidores directos:** [Rodar](https://www.rodar.cl/) · [Rodar (EN)](https://www.rodar.cl/en/) · [AutoGest](https://autogest.cl/) · [GoAuto](https://www.goauto.cl/) · [GEMA](https://suite.go-gema.com/) · [Rolav: tasación](https://rolav.cl/tasacion)
- **Ofertautos:** [índice de mercado](https://ofertautos.cl/autos-usados) · [plan automotoras](https://ofertautos.cl/automotoras) · [alertas](https://ofertautos.cl/alertas)
- **Autofact:** [sitio](https://www.autofact.cl/) · [Autopress, precios](https://precios.autofactpro.com/) · [precio y tasación](https://autofact.cl/precio-autos-usados) · [Informe Full](https://www.autofact.cl/servicios/informe-full)
- **Software para automotoras:** [comparativa publicada por Venpu (también competidor)](https://empresas.venpu.cl/software-para-automotoras/)
- **Inspección precompra (sustitutos):** [Serviteca CyT](https://servitecacyt.cl/product/inspeccion-pre-compra-full/) · [Ojo Mecánico](https://www.revisionprecompra.cl/) · [Chileautos: vehículo inspeccionado](https://www.chileautos.cl/vehiculo-inspeccionado) · [2x3.cl: revisión precompra](https://www.2x3.cl/servicios/revision-precompra-vehiculos) 🔒
- **Historial y tasación:** [Comparativa iCarCheck, Autofact y AutoCheck — Unidad Créditos](https://www.unidadcreditos.cl/post/icarcheck-autofact-autocheck-diferencias) · [Tasación online (OLX Autos) — 24horas](https://www.24horas.cl/motores-24/tasacion-online-de-autos-descubre-como-hacerlo-de-forma-rapida-y-sencilla)
- **Remates:** [Remates Reyco: cómo funciona](https://rematesreyco.cl/como-funciona-remates/)
- **Costos de referencia:** [Sueldo de un mecánico en Chile — Cazvid](https://cazvid.com/es/blog/cuanto-gana-un-mecanico-en-chile)

### 11. Economía de la información

1. Akerlof, G. A. (1970). The market for "lemons": Quality uncertainty and the market mechanism. *The Quarterly Journal of Economics, 84*(3), 488–500. [doi:10.2307/1879431](https://doi.org/10.2307/1879431) 🔒

---

## Fuentes pendientes de revisar

Estas fuentes están citadas en el repo, pero no se pudieron verificar. **No usarlas en un entregable hasta resolverlas.** Al revisar una, muévela a la sección de arriba o bórrala de los documentos que la citan.

### A. Referencias con errores confirmados (corregir primero)

Aparecen en [`context/definicion_fenomeno_y_objetivos_vg.md`](./context/definicion_fenomeno_y_objetivos_vg.md) y en [`deliverys/workshop-2/workshop_2_objetivos_investigacion.md`](./deliverys/workshop-2/workshop_2_objetivos_investigacion.md).

- [ ] **Hasan, M. A., Rahman, M. M., & Siddique, A. (2025)**, *IEEE Trans. ITS*, doi:10.1109/TITS.2024.3412098. **El DOI no existe (404).** Los autores, la revista y el DOI están mal. Reemplazar por la cita correcta de la sección 2.1.
- [ ] **Amodu, O., Habaebi, M. H., Abdullah, K. A., & Agbede, M. O. (2024)**, *Journal of AI and Technology*, doi:10.37965/jait.2024.0389. **El DOI no existe (404).** Los coautores y la revista están mal. Reemplazar por la cita correcta de la sección 2.2.
- [ ] **Mellado, R. (2026)**, *Revista Chilena de Derecho y Comercio Automotriz*, 12(1), 34–49. No tiene URL y no se encontró la revista. Sostiene la afirmación de que "los usados no tienen garantía legal". Buscar la fuente real (Ley 19.496 / SERNAC) o usar la de The Clinic (sección 7).

### B. Referencias con URL genérica (solo el dominio)

Mismos dos documentos que en A. Hay que buscar el link exacto de cada artículo. Donde existe, se indica un posible equivalente ya verificado. Ojo: en varios casos la fecha o el título del equivalente no calzan exacto con la cita, así que hay que confirmar que es el mismo artículo.

- [ ] ANAC (2026). *Informe del Sector Automotor: Cierre 2025 y Evolución Acumulada 2026*. https://www.anac.cl. Posible equivalente: el PDF de ANAC de diciembre 2025 (sección 8).
- [ ] Autofact (s. f.-a). *Informe Full Autofact: Historial legal y mecánico de vehículos en Chile*. https://www.autofact.cl. Posible equivalente: Informe Full (sección 10).
- [ ] Autofact (s. f.-b). *Informe de Precio y Tasación de Autos Usados*. https://precios.autofactpro.com. Posible equivalente: precio y tasación (sección 10).
- [ ] Bloomberg Línea (2023, 3 de noviembre). *Kavak anuncia cierre de operaciones en Colombia y Perú*. Equivalente verificado en la sección 5.
- [ ] Bloomberg Línea (2025, 14 de marzo). *La reestructuración de Kavak y su camino hacia la rentabilidad en América Latina*. https://www.bloomberglinea.com. Sin link exacto.
- [ ] CAVEM (2026a). *Informe del Mercado Automotor Diciembre 2025*. Posible equivalente: el PDF de diciembre 2025 (sección 8).
- [ ] CAVEM (2026b). *Anuario Automotor 2025*. Posible equivalente: el PDF del anuario (sección 8).
- [ ] CAVEM (2026c). *Informe Estadístico Septiembre 2026*. Posible equivalente: el PDF de septiembre 2026 (sección 8).
- [ ] CAVEM (2026d). *Guía de Buenas Prácticas para la Compra y Venta Segura de Vehículos Usados*. https://www.cavem.cl. Sin link exacto.
- [ ] Chócale (2025, 18 de agosto). *SERNAC oficia a automotoras por denuncias de retención de pagos en consignaciones*. https://chocale.cl. Sin link exacto.
- [ ] Chócale (2026, 20 de febrero). *Kavak levanta ronda de financiamiento por US$300 millones y reporta balance operativo positivo*. Posible equivalente: Serie F (sección 5).
- [ ] Farías, C. (2026, 8 de mayo). *El dolor de cabeza tras chocar: Reparaciones de vehículos en talleres asegurados promedian 52 días*. La Tercera. Es la fuente del dato de **52,3 días**. Posible equivalente: Autocosmos, Farías R. (sección 8).
- [ ] Financier Worldwide (2023, diciembre). *Shift Technologies files for Chapter 11 bankruptcy liquidation*. Posible equivalente (12 de octubre de 2023) en la sección 5.
- [ ] Fleet Maintenance (2025, 22 de enero). *UVeye secures $191M in funding…*. Posible equivalente (29 de enero de 2025) en la sección 4.
- [ ] Guzmán, J. P. (2026, 13 de febrero). *Radiografía al mercado de autos usados en Chile 2025*. Emol. Es la fuente del dato de la **F-150**. Posible equivalente: Emol, 13 de febrero de 2026 (sección 8).
- [ ] LaChance, K. (2021, 10 de noviembre). *CCC launches Estimate-STP…*. Posible equivalente (4 de noviembre de 2021) en la sección 4.
- [ ] Melelli Viveros, A. (2026, 6 de octubre). *Récord de fraudes vehiculares en Chile: Causas judiciales ingresadas suben 64% en 2025*. The Clinic. Es la fuente del dato de **41.700 causas**. Posible equivalente: Pauta, Melelli Viveros N. (sección 7).
- [ ] Retail Insight Network (2024, 22 de mayo). *Online car retailer Cazoo collapses into administration in the UK*. Posible equivalente en la sección 5.
- [ ] Solera (2024). *Qapter: AI-powered visual damage intelligence and automated estimating suite*. Posible equivalente en la sección 4.
- [ ] TechCrunch (2023, 18 de julio). *Tractable raises $65M to accelerate AI…*. Posible equivalente (mismo día, otro título) en la sección 4.
- [ ] VentureBeat (2021, 12 de enero). *Cox Automotive acquires 3D imaging company Fyusion…*. Posible equivalente (5 de enero de 2021) en la sección 4.

### C. Links que no responden

- [ ] [Transferencia online en Autofact 2026](https://mkt.autofact.cl/blog/comprar-auto/tramites/autofact-transferencias): el dominio no responde.
- [ ] [Índice Latinoamericano de IA, ILIA 2025 — CEPAL](https://desarrollodigital.cepal.org/es/datos-y-hechos/indice-latinoamericano-de-inteligencia-artificial-ilia-2025): no respondió; reintentar.

### D. Datos sin fuente documentada

- [ ] Precio de un mecánico freelance en 2x3.cl (CLP 35.000–40.000): "Gemini figure, not checked" ([`research/competidores_sustitutos.md`](./research/competidores_sustitutos.md)).
- [ ] Informes de Gemini Deep Research (competidores, benchmarks y cifras de mercado): los tiene Bruno; no están en el repo.
- [ ] Estimación previa de ~1.430 compradores profesionales (830 en Santiago): "no documented source" ([`context/market_context.md`](./context/market_context.md)).
- [ ] Cifras del Workshop 2 sin fuente propia: "75% de las soluciones de CV se concentran en aseguradoras" (atribuido a Hasan et al., revisar en el paper), "84,7% de compradores particulares" y precios SaaS de $59.990 / $4.990 (son hipótesis de precio, no datos).
