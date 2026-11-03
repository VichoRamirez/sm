# Chilean used-car dealer ecosystem: B2B sampling frame and population estimate for InfoCar (validated as of 2 Nov 2026)

Scope note: all counts marked "computed" were calculated by me from official SII/UAF open data files downloaded on 2 Nov 2026 (method and filters are described under Q1 and Q2 so they can be reproduced). Anything labelled "UNVERIFIED" comes only from search snippets, blogs or self-descriptions and should not go on a slide as fact.

## Q1. SII company statistics: size brackets, sub-activity detail, region × size, latest year

### Takeaway
The SII publishes 13 sales brackets in UF. The latest commercial year is **2025** (Oct 2026 release), not 2024. The public files go down to the **6-digit CIIU4.CL activity**, and code **451002 is literally "Venta al por menor de vehículos automotores nuevos o usados (incluye compraventa)"**. The aggregate tables only cross two dimensions at a time (size × activity, or region × activity), so they never give region × size × activity. But the **SII "Nómina de Personas Jurídicas"** is a list of named firms (RUT, razón social, size bracket, main activity, region, comuna). It allows a **direct count with no regional-share assumption**, and it can serve as an actual list frame.

### Cited Findings
**Official bracket definitions (13 tramos, annual sales in UF)**, from the SII statistics page: Sin ventas = "no permite determinar un monto estimado de ventas"; Micro 1 = 0.01–200; Micro 2 = 200.01–600; Micro 3 = 600.01–2,400; Pequeña 1 = 2,400.01–5,000; Pequeña 2 = 5,000.01–10,000; Pequeña 3 = 10,000.01–25,000; Mediana 1 = 25,000.01–50,000; Mediana 2 = 50,000.01–100,000; Grande 1 = 100,000.01–200,000 (the page shows a typo, "100.00,01"); Grande 2 = 200,000.01–600,000; Grande 3 = 600,000.01–1,000,000; Grande 4 = >1,000,000 UF. Source: [SII, Estadísticas de Empresa](https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html). The 5-bracket version is Micro 0.01–2,400; Pequeña 2,400.01–25,000; Mediana 25,000.01–100,000; Grande >100,000. Sources: [SII distribución empresas 2017](https://www.sii.cl/destacados/ogp/distribucionempresas_estadisticas2017.html); [SII 2016](https://www.sii.cl/destacados/ogp/distribucionempresas_estadisticas2016.html).

**Latest year.** The page says the statistics cover "los años comerciales 2005 al 2025", last updated October 2026. The open-format file `EMPRESAS.zip` (310 MB) has files dated 29 Sep to 29 Oct 2026. Source: [SII, Estadísticas de Empresa](https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html); file at https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip.

**Definition of "empresa" and caveats.**
- "Un contribuyente se clasifica como empresa si cumple uno o más de los siguientes atributos": 1st-category taxpayer, files DJ 1887 or DJ 1827, or is an active VAT filer.
- Sales are estimated "mediante un algoritmo que utiliza códigos declarados en los Formularios 22 y 29" and may not reflect real economic value.
- "Cifras preliminares, las cuales podrían variar producto de rectificación".
- Cells with "10 o menos declarantes" are suppressed (*).
- Location is the tax domicile / casa matriz as of 31 Dec of each year.
- "su naturaleza es tributaria y no económica".
- Source: [SII, Estadísticas de Empresa](https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html).

**Available crossings.**
- There are files for tramo × {región, provincia, comuna, rubro, subrubro, actividad, tramo de trabajadores} and región/comuna × {rubro, subrubro, actividad}.
- **No file crosses región × tramo × actividad.** The open-format zip has only two-way tables (`PUB_TRAMACT`, `PUB_REGACT`, `PUB_COMUACT`, `PUB_TRAMSUBR`, `PUB_REGSUBR`, …). Source: [SII, Estadísticas de Empresa](https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html) (file listing inspected in EMPRESAS.zip).

**Activity granularity (computed from `PUB_ACT.txt`).**
- The "Actividad económica" field is the 6-digit CIIU4.CL code. "Subrubro" is the 3-digit group: "451 - Venta de vehículos automotores" is a *subrubro*, not an *actividad*.
- Group 451 contains exactly two codes: **451001 "Venta al por mayor de vehículos automotores"** and **451002 "Venta al por menor de vehículos automotores nuevos o usados (incluye compraventa)"**.
- No separate code exists for used cars only. New-car brand dealers and used-car compraventas share 451002.
- Source: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip).

**Firm counts, Oct 2026 release (computed from `PUB_ACT`, `PUB_SUBR`, `PUB_TRAMACT`, `PUB_TRAMSUBR`, `PUB_REGACT`, `PUB_REGSUBR`).** Source for all items: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip).
- **Subrubro 451, national:** 4,061 (2022); 4,193 (2023); **4,230 (2024)**; **4,627 (2025)**.
- **By code:** 451001 = 515 (2024), 511 (2025). 451002 = 3,715 (2024), **4,116 (2025)**.
- **Subrubro 451 by bracket, 2024:** P1 282, P2 266, P3 318, M1 149, M2 97, Gr1 65, Gr2 75, Gr3 26, Gr4 83.
- **Subrubro 451 by bracket, 2025:** P1 313, P2 294, P3 303, M1 182, M2 119, Gr1 62, Gr2 76, Gr3 28, Gr4 92.
- **451002 only, 2024:** P1 257, P2 238, P3 264, M1 118, M2 72.
- **451002 only, 2025:** P1 294, P2 267, P3 261, M1 154, M2 90. Also Micro 1 710, Micro 2 384, Micro 3 650, Sin ventas 1,151.
- **Subrubro 451 by region:**
  - 2024: RM 2,134; Valparaíso 292; Biobío 197, i.e. 2,623/4,230 = **62.0%**.
  - 2025: RM 2,316; Valparaíso 320; Biobío 230, i.e. 2,866/4,627 = **61.9%**.
- **451002 by region:**
  - 2024: RM 1,918; Valparaíso 265; Biobío 185, i.e. 63.7%.
  - 2025: RM 2,104; Valparaíso 294; Biobío 218, i.e. 2,616/4,116 = **63.6%**.
- **451001 is concentrated in Tarapacá:** 166 firms in 2024 and 163 in 2025, consistent with Zona Franca de Iquique importers.

**Concentration check of the draft's "83 firms >1M UF hold 88%" (computed, `PUB_TRAMSUBR`).** Confirmed for 2024: 83 Grande 4 firms had 582.9M of 660.2M UF, or **88.3%** of subrubro 451 sales. In 2025 it was 92 firms with 651.2M of 731.4M UF, or **89.0%**. Source: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip).

**The draft's 2024 figures do not exactly match the current release.**
- Draft: 4,325 / P1 281 / P2 271 / P3 314 / Mediana 243 / RM 2,183 / V 301 / B 200.
- Oct 2026 release for año comercial 2024: 4,230 / 282 / 266 / 318 / 246 / 2,134 / 292 / 197.
- The 62.1% share is essentially unchanged (62.0%).
- Most likely explanation: the draft used an earlier, preliminary release, which SII says can be revised. Source: [SII, Estadísticas de Empresa](https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html).

**SII Nómina de Personas Jurídicas: a firm-level list frame.**
- The page offers `PUB_EMPRESAS_PJ_2020_A_2024.zip` (company files updated "Noviembre 2025").
- It also offers `PUB_NOM_ACTECOS.zip` (all active registered activities per RUT), `PUB_NOM_DIRECCIONES.zip` (casa matriz and branch addresses) and `PUB_NOMBRES_PJ.zip` (razón social). These three were updated "Agosto 2026".
- Source: [SII, Personas Jurídicas y Empresas](https://www.sii.cl/sobre_el_sii/nominapersonasjuridicas.html); files at https://www.sii.cl/estadisticas/nominas/.
- The 2024 company file has these columns: Año comercial, **RUT, DV, Razón social, Tramo según ventas (codes 1–13)**, Número de trabajadores, fecha inicio, fecha término de giro, tipo/subtipo contribuyente, tramo capital propio, rubro, subrubro, **actividad económica (main), región, provincia, comuna**, régimen tributario. Source: [SII nómina file PUB_EMPRESAS_PJ_2024.txt](https://www.sii.cl/estadisticas/nominas/PUB_EMPRESAS_PJ_2020_A_2024.zip).
- **It covers legal persons only.** Empresarios individuales (personas naturales con giro) are not included. Source: [SII, Personas Jurídicas y Empresas](https://www.sii.cl/sobre_el_sii/nominapersonasjuridicas.html).

**Direct count from the Nómina (computed, año comercial 2024).** Source for all items: [SII nómina PJ 2020–2024](https://www.sii.cl/estadisticas/nominas/PUB_EMPRESAS_PJ_2020_A_2024.zip).
- Legal persons whose **main activity = 451002**: 3,226 nationally (3,047 in 2023). 44 have a termination-of-business date.
- **In RM + Valparaíso + Biobío, by bracket:**
  - Pequeña 1–3: 156 + 155 + 150 = **461**.
  - Mediana 1–2: 67 + 44 = **111**.
  - **Pequeña 1 to Mediana 2 total: 572** (544 in 2023).
- **By region (P1–M2):** RM 487 (P1 124, P2 131, P3 136, M1 60, M2 36); Valparaíso 53 (14, 18, 8, 7, 6); Biobío 32 (18, 6, 6, 0, 2).
- For comparison in the three regions: Micro 3 = 322 and Grande 1 = 28.
- The Pequeña–Mediana dealers in the three regions are tiny employers: **median 2 dependent workers, mean 4.0**.
- **Bracket-code mapping check.** I inferred 1 = Sin ventas … 13 = Grande 4. Every national 451002 count in the Nómina is ≤ the aggregate count (e.g. P1 218 ≤ 257, M2 69 ≤ 72), and the Grande counts are identical (Gr2 58 = 58, Gr4 37 = 37). That supports the mapping.
- **Non-legal-person share of P1–M2 firms nationally (2024):** 949 (aggregate) − 861 (Nómina) = 88 firms, or 9.3%. These are mostly personas naturales. Sources: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip); [SII nómina](https://www.sii.cl/estadisticas/nominas/PUB_EMPRESAS_PJ_2020_A_2024.zip).
- **Legal persons with 451002 among any of their active activities: 12,130** (ACTECOS file, Aug 2026). This is about 3.8× the number with 451002 as *main* activity, meaning many firms list "compraventa de vehículos" as a secondary activity. Source: [SII PUB_NOM_ACTECOS.zip](https://www.sii.cl/estadisticas/nominas/PUB_NOM_ACTECOS.zip).

**How the counts were computed (reproducible).**
- Files were downloaded from the URLs above and are tab-separated UTF-8.
- Activity filter: exact text "VENTA AL POR MENOR DE VEHICULOS AUTOMOTORES NUEVOS O USADOS (INCLUYE COMPRAVENTA)".
- Region filter: "XIII REGION METROPOLITANA", "V REGION VALPARAISO", "VIII REGION DEL BIO BIO".
- Bracket codes 5–9 = Pequeña 1 to Mediana 2.

### Inferences
- **Use 451002, not subrubro 451.** 451001 is wholesale/importers: 163 of 511 firms are in Tarapacá, and 46 are in Grande 4. Including it adds about 71 Pequeña–Mediana firms to the three-region estimate (2025) that are mostly not compraventas.
- **Update to año comercial 2025** (Oct 2026 release) and state the release date. SII revises earlier years.
- **The draft's equal-regional-share assumption slightly understates N.** Among legal persons, 66.4% of 451002 P1–M2 firms are in the three regions (572/861), versus 63.7% for all 451002 firms of all sizes.
- **Bracket edges are approximate.** The SII bracket is the *tax-estimated* annual sales, and a firm can move between brackets from year to year. The 2023→2024 movement of 544→572 shows the frame drifts by about 5% a year.

### Gaps
- No public SII crossing of region × size × 6-digit activity for *all* firms (including personas naturales). It could be requested from SII under Ley 20.285 (Transparencia), but I did not verify that SII will provide it.
- I did not download `PUB_NOM_DIRECCIONES` (95 MB), so I could not verify which branch-address fields it holds (street/number vs. comuna only).
- No contact data (phone/email) is in any SII file.
- I did not verify in this session whether the SII brackets match the Ley 20.416 (Estatuto PYME) limits.

## Q2. Is there an official registry of used-car dealers? (UAF, municipal patentes, Registro Civil, CAVEM)

### Takeaway
Yes, partly. Since **Ley 21.575 (May 2023)**, "automotoras y comercializadoras de vehículos nuevos o usados" are UAF reporting entities and must register. **The UAF publishes the names and RUTs of registered entities every six months** (latest list: 30 Jun 2026). It contains **538 comercializadoras + 20 automotoras**, but it under-covers SMEs: only about 25% of the SII Pequeña–Mediana dealers in the three regions appear. CAVEM's public member list (~105 firms) is mostly brand dealers and groups. I found no Registro Civil or consolidated municipal registry.

### Cited Findings
**Legal basis.** The UAF itself writes: "los nuevos sujetos obligados que la Ley N°21.575, de mayo de 2023, incluyó en el artículo 3° de la Ley N°19.913". Source: [UAF, Informe Estadístico 2025](https://www.uaf.cl/media/documentos/Informe_Estadistico_2025.pdf). The new subjects include "Las automotoras y comercializadoras de vehículos nuevos o usados" and "Empresas de arriendo de vehículos". Source: [AZ, 10 May 2023](https://www.az.cl/nuevos-sujetos-obligados-ante-la-unidad-de-analisis-financiero/). Ley 21.575 was published in the Diario Oficial on 23 May 2023 (search snippet). Source: [Transtecnia](https://transtecnia.cl/noticias/obligacion-de-informar-de-automotoras/).

**UAF categories.** The UAF list of obligated activities includes "53. Vehículos: Automotoras", "54. Vehículos: Comercializadoras de Vehículos Nuevos o Usados" and "55. Vehículos: Empresas de Arriendo de Vehículos". Source: [UAF, Quiénes deben reportar](https://www.uaf.cl/es-cl/sujetos-obligados/sector-privado/quienes-deben-reportar).

**Registration is mandatory and the list is public.**
- Art. 40 of Ley 19.913: obligated persons "deberán inscribirse en un registro que la Unidad mantendrá".
- "la UAF actualiza y publica semestralmente (en los meses de enero y julio de cada año) la lista de los sujetos obligados inscritos en su Registro de Entidades Reportantes".
- "Si una persona natural o jurídica no está registrada en la UAF y, por ende, no se encuentra en la lista publicada más abajo, está incurriendo en una ilegalidad."
- Source: [UAF, Inscritos en la UAF](https://www.uaf.cl/es-cl/sujetos-obligados/sector-privado/inscritos-en-la-uaf).

**Counts at 31 Dec 2025 (UAF annual report).** "Vehículos: Comercializadoras de vehículos nuevos o usados" **413** (4.2% of registrants); "Vehículos: Automotoras" **17**; "Vehículos: Empresas de arriendo de vehículos" **41**. The total registry is 9,911, of which 9,403 are private. Source: [UAF, Informe Estadístico 2025](https://www.uaf.cl/media/documentos/Informe_Estadistico_2025.pdf). 413 + 17 + 41 = **471**, which matches the press figure "la autoridad reguladora identificó a 471 entidades automotrices como sujetos obligados". Source: [G5 Noticias, 22 Oct 2026](https://g5noticias.cl/?p=926479).

**Latest list, 30 Jun 2026 (computed from the UAF xlsx).**
- 538 "Comercializadoras de Vehículos Nuevos o Usados", 20 "Automotoras" and 48 "Arriendo de Vehículos".
- Columns: N°, actividad, name, RUT. **No address or comuna.**
- Source: [UAF, Lista sujetos obligados inscritos al 30/06/2026 (xlsx)](https://www.uaf.cl/media/documentos/Sujetos_Obligados_inscritos_en_la_UAF_al_30.06.2026.xlsx).

**Join of UAF and SII by RUT (computed).**
- Of 558 UAF dealer RUTs, 480 match the SII PJ 2024 Nómina. 354 of those have main activity 451002 and 46 have 451001.
- By SII bracket: Grande 164 (Gr4 alone 63), Mediana 63, Pequeña 132, Micro 102, Sin ventas 19.
- In RM/Valparaíso/Biobío at Pequeña 1–Mediana 2 there are **146 UAF registrants** (124 with main activity 451002). That compares with **572** SII legal persons in that cell, so roughly **22–25% coverage**.
- Sources: [UAF xlsx](https://www.uaf.cl/media/documentos/Sujetos_Obligados_inscritos_en_la_UAF_al_30.06.2026.xlsx); [SII nómina](https://www.sii.cl/estadisticas/nominas/PUB_EMPRESAS_PJ_2020_A_2024.zip).

**Registration is growing.**
- "en 2025, la UAF recibió 289 solicitudes de inscripción (+45,2% respecto de 2024 …), siendo aprobadas 211" (all new Ley 21.575 sectors).
- In 2025 the UAF supervised "14 a comercializadoras de vehículos nuevos o usados (8,1%)".
- Suspicious-operation reports (ROS) from comercializadoras rose from 10 (2023) to 52 (2024) to 101 (2025).
- Source: [UAF, Informe Estadístico 2025](https://www.uaf.cl/media/documentos/Informe_Estadistico_2025.pdf).

**Compliance burden.** The UAF's consolidated rulebook, Circular N°62 (RAN), has been in force since 1 Jun 2025. It requires a compliance officer, a prevention manual, customer due diligence from USD 3,000, half-yearly cash-operation reports (ROE) for operations ≥ USD 10,000, and fines up to UF 5,000. Sources: [UAF Cartilla Circular 62](https://www.uaf.cl/media/documentos/Cartilla_Circular_62_NdbXfz7.pdf); [G5 Noticias, 22 Oct 2026](https://g5noticias.cl/?p=926479). In 2021 the then-UAF director estimated that adding automotoras would raise the number of reporting entities by almost 30% (search snippet only). Source: [DF](https://www.df.cl/economia-y-politica/pais/supervision-de-la-uaf-de-automotoras-avanza-en-el-congreso-y-pone).

**CAVEM members (computed from the public pages).**
- Zona Norte 12, Zona Centro 75, Zona Sur 18, about **105 listed members**.
- They are mostly brand concesionarios and groups: Dumay, Inalco, Rosselot, Bruno Fritsch, Gildemeister usados, Salfa Sur. The list also includes non-dealers such as Chileautos SpA, Banco Falabella and Ayvens.
- Centre members sit in Providencia 19, Vitacura 10, Las Condes 10, Ñuñoa 8, Santiago 7.
- Sources: [CAVEM Socios Zona Centro](https://www.cavem.cl/socios_centro); [Zona Norte](https://www.cavem.cl/socios_norte); [Zona Sur](https://www.cavem.cl/socios_sur).
- A claim that CAVEM groups "more than 90%" of the sector is UNVERIFIED (personal LinkedIn self-description). Source: [LinkedIn, M. Bresciani](https://cl.linkedin.com/in/martinbresciani).

### Inferences
- **The UAF list is a usable secondary list frame** (name + RUT, joinable to SII bracket and comuna), and it is current to Jun 2026. Its coverage is biased toward larger and more formal dealers, so it should not be the only frame. Non-registration is itself illegal, so a dealer's UAF status could be a sensitive question; do not ask it in the survey.
- **CAVEM is a gatekeeper and endorsement channel, not a frame** for independent compraventas.

### Gaps
- **Municipal patentes comerciales:** I found no consolidated public list. Each municipality keeps its own roll; some may be obtainable under Transparencia. Not verified.
- **Registro Civil:** I found no "compraventa habitual" or dealer registry. The Registro de Vehículos Motorizados records owners, not dealers.
- CAVEM's total membership (including non-listed members) and its member-only directory (`/directoriocavem`) were not accessible.

## Q3. Platform-based counts (Chileautos, Yapo, Mercado Libre, Facebook Marketplace, Kavak and others)

### Takeaway
No platform publishes its number of dealer accounts. Chileautos defines a dealer account operationally (lead-management subscriber or more than 5 active listings), which is useful as a screening criterion, but there is no published count.

### Cited Findings
- Chileautos' terms and conditions:
  - An automotora user is a client "suscribiendo un sistema de gestión de leads" or "aquel usuario que mantiene más de 5 publicaciones vigentes en el sitio web".
  - Particulares have "un límite de cinco publicaciones vigentes"; users who exceed it move to dealer mode.
  - Source: [Chileautos, Términos y condiciones](https://www.chileautos.cl/staticpages/terminoscondiciones).
- Chileautos describes itself as having the largest number of concesionarias and automotoras in Chile, with no figure (self-promotion). Chileautos was acquired by carsales in 2016 (dealroom). Sources: [Get on Board, carsales profile](https://www.getonbrd.com/companies/carsales-com); [dealroom](https://app.dealroom.co/companies/chileautos).
- Chileautos SpA is itself a CAVEM member (Vitacura). Source: [CAVEM Socios Zona Centro](https://www.cavem.cl/socios_centro).
- Mercado Libre Autos Chile has seller-type URL filters ("particular", "concesionaria", "_Tienda_all"), but no published dealer counts. Source: [Mercado Libre Autos, Huechuraba particular](https://autos.mercadolibre.cl/automatica/usado/rm-metropolitana/huechuraba/particular/).
- Autofact: "casi un cuarto" of used-vehicle transfers in 1H2025 were processed on its online platform (528,568 transfers in 1H2025). This is UNVERIFIED: secondary blog, low-quality source. Source: [Academia XRAY blog](https://academiaxray.cl/blog/cuanto-cuesta-un-coche-de-segunda-mano/).

### Inferences
- A **platform frame** is buildable by scraping the dealer pages on Chileautos, Yapo and Mercado Libre in the three regions and de-duplicating by RUT or name against the SII Nómina. It should be treated as a *recruitment list*, not as a probability frame. It is biased toward digitally active dealers, who are also the most likely SaaS adopters.

### Gaps
- No count found for Chileautos, Yapo, Mercado Libre or Facebook Marketplace dealer accounts, nor for Kavak, Clicar or Autofact Pro dealer clients.

## Q4. Where used-car dealers concentrate (Santiago hubs, Valparaíso/Viña, Concepción)

### Takeaway
The SII comuna counts are the best hard evidence. 451002 firms cluster in **Las Condes, Santiago, Maipú, Providencia, Vitacura, Lo Barnechea, Cerrillos, La Florida, Puente Alto and La Cisterna**, plus **Viña del Mar** and **Concepción**. However, these counts use the *tax domicile*, which inflates wealthy residential comunas. Specific corridors (Bilbao, Gran Avenida, Vicuña Mackenna) are supported only weakly or are unverified.

### Cited Findings
**451002 firms, all sizes, 2025, by comuna (computed, `PUB_COMUACT`).**
- RM: Las Condes 284, Santiago 173, Maipú 157, Providencia 150, Vitacura 112, Lo Barnechea 94, Cerrillos 73, La Florida 71, Puente Alto 68, La Cisterna 67, Macul 54, Ñuñoa 53, San Bernardo 49, La Reina 49, Pudahuel 48, Colina 47, San Miguel 27.
- Valparaíso region: Viña del Mar 78, Valparaíso 37, Quilpué 34.
- Biobío: Concepción 85, Los Ángeles 49.
- Source: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip).

**Pequeña–Mediana legal persons only, 2024 (computed, Nómina).**
- RM: Las Condes 76, Maipú 36, Cerrillos 36, Santiago 27, Vitacura 26, Lo Barnechea 26, Providencia 24, Macul 21, La Cisterna 16, La Florida 15, San Bernardo 14, Pudahuel 14.
- Valparaíso region: Viña 11, Valparaíso 9, Quilpué 8, Villa Alemana 6, Concón 5.
- Biobío: Concepción 15, Los Ángeles 7.
- Source: [SII nómina](https://www.sii.cl/estadisticas/nominas/PUB_EMPRESAS_PJ_2020_A_2024.zip).

**Av. Francisco Bilbao.** "Desde Román Díaz hasta Manquehue, en las comunas de Providencia y Las Condes, esta avenida alberga numerosos locales de venta de autos nuevos y usados". This is a low-quality blog, so treat it as UNVERIFIED. Source: [Academia XRAY](https://academiaxray.cl/blog/automotora-guillermo-morales-bilbao/). CAVEM member Automotora Bilbao S.A. is at Av. Francisco Bilbao 2285, Providencia. Source: [Mercantil](https://mercantil.com/empresa/automotora-bilbao-sa/providencia/300074548/eng).

**Movicenter (Huechuraba).** "más de 140 mil m2", "más de 55 marcas de vehículos nuevos bajo un mismo techo" and "una amplia oferta de usados". It reports used-car sales up 23.4% Jan–Aug 2026 vs 4.1% for the market. Source: [G5 Noticias, 23 Sep 2026](https://g5noticias.cl/2026/09/23/movicenter-multiplica-por-diez-el-crecimiento-en-ventas-del-mercado-automotriz-en-chile/). A 2024 statement that "more than 10 automotoras" offer used cars there comes from a search summary only and is UNVERIFIED.

**Gran Avenida, Vicuña Mackenna, Irarrázaval, Av. Las Condes:** **no source found** in this session.

### Inferences
- **Domicile bias.** The SII comuna is the casa matriz *tax* address. Many SpAs are registered at an owner's or accountant's address, which likely explains Las Condes, Vitacura and Lo Barnechea ranking first. Lot locations should be mapped from the branch addresses (`PUB_NOM_DIRECCIONES`), Google Maps or the Chileautos dealer pages.
- **Plausible but unverified corridors:**
  - The La Cisterna (67) and San Miguel/San Ramón counts fit a Gran Avenida corridor.
  - Macul, La Florida and Puente Alto fit Vicuña Mackenna.
  - Cerrillos and Maipú could reflect lots on the western access roads.
- **For the field plan**, cite "SII comuna counts" rather than named avenues unless a site visit or map count verifies them.

### Gaps
- No published census of lots per avenue. Regional hub streets in Viña or Concepción were not verified.

## Q5. Average used-car price and recalculated purchases-per-month thresholds

### Takeaway
The best available number is **Chileautos' 2025 average *asking* price of CLP 18,396,548**. No transaction-price average (CAVEM, Autofact, SII) was found. At that price and UF ≈ CLP 39,157 (2025 average), the Pequeña 1–Mediana 2 band means about **0.4 to 18 cars per month**, not 1–27. The 1–27 range only holds at CLP 12M. Either redefine the band in UF/size-bracket terms, or keep "≥1 car/month" and accept that it starts mid-Pequeña 2 (about 5,600 UF).

### Cited Findings
- **Chileautos average asking price:** "El precio promedio de publicación aumentó 5%, pasando de $17.527.519 en 2024 a $18.396.548 en 2025". By segment: hatchbacks about +5%, pickups +4%, sedans +3%, SUVs −1%. Sources: [Emol, Guzmán, 13 Feb 2026](https://www.emol.com/noticias/Economia/2026/02/13/1191407/autos-usados-chile-2025.html); [Chileautos, Radiografía autos usados 2025](https://www.chileautos.cl/noticias/detalle/radiografia-autos-usados-2025-mas-busquedas-precios-al-alza-y-un-comprador-cada-vez-mas-decidido--30162/) (direct fetch blocked, HTTP 403). The 2023 average was $17,876,585 (secondary). Source: [Unidad Créditos](https://www.unidadcreditos.cl/post/autos-usados-en-chile-los-mas-buscados-en-2025).
- The fiscal valuation (tasación fiscal) is set by the SII and is "not a market price"; the 1.5% transfer tax is charged on the higher of price and fiscal valuation. Sources: [SII FAQ, impuesto ventas vehículos usados](https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/001_130_0706.htm); [Academia XRAY](https://academiaxray.cl/blog/cuanto-cuesta-un-coche-de-segunda-mano/).
- **UF values:**
  - **CLP 41,258.26 on 2 Nov 2026.** Sources: [CAVEM homepage indicator](https://www.cavem.cl/socios); [Rankia](https://www.rankia.cl/noticias/fiscalidad/7531547-valor-uf-hoy-30-octubre-2026-41-242-32). The maximum published value is 41,295.46 (9 Nov 2026).
  - **2025 average ≈ CLP 39,157** (range 38,362–39,728), computed from the SII table.
  - 2026 year-to-date average ≈ 40,448.
  - Sources: [SII UF 2025](https://www.sii.cl/valores_y_fechas/uf/uf2025.htm); [SII UF 2026](https://www.sii.cl/valores_y_fechas/uf/uf2026.htm).
  - The draft's "UF 39,000–40,000" fits 2025 (the SII year being measured), not Nov 2026.

**Thresholds, computed as cars/month = bracket UF × UF value ÷ 12 ÷ average price.** Rows are bracket lower edges.

| Bracket edge (UF/yr) | P = 12M, UF 39,157 | P = 15M, UF 39,157 | **P = 18.4M, UF 39,157** | P = 18.4M, UF 41,258 |
|---|---|---|---|---|
| Pequeña 1 low (2,400) | 0.65 | 0.52 | **0.43** | 0.45 |
| Pequeña 2 low (5,000) | 1.36 | 1.09 | **0.89** | 0.93 |
| Pequeña 3 low (10,000) | 2.72 | 2.18 | **1.77** | 1.87 |
| Mediana 1 low (25,000) | 6.80 | 5.44 | **4.43** | 4.67 |
| Mediana 2 low (50,000) | 13.6 | 10.9 | **8.87** | 9.34 |
| Mediana 2 high (100,000) | 27.2 | 21.8 | **17.7** | 18.7 |
| Grande 1 high (200,000) | 54.4 | 43.5 | **35.5** | 37.4 |

**Inverse: the UF sales that correspond to 1 and 27 cars/month (computed).**
- P = 12M: 3,678 and 99,293 UF.
- P = 15M: 4,597 and 124,116 UF.
- **P = 18.4M: 5,639 and 152,249 UF** (UF 39,157).

### Inferences
- **Divide by the resale price, not the purchase price.** SII "ventas" is revenue, so revenue ÷ average *sale* price = cars sold, and cars sold ≈ cars bought in steady state. Dividing by a purchase price (resale minus about 10–20% margin, an unverified range) would overstate units. CLP 12M is closer to a dealer *purchase* price than a sale price, which makes the draft's divisor inconsistent with its numerator.
- **Asking prices overstate transaction prices.** Chileautos averages are list prices, and dealer stock skews newer than private listings. A defensible central value for dealer resale price is **about CLP 15–18M**, with sensitivity at 12M and 18.4M. Label it a hypothesis.
- **Draft inconsistency.** At CLP 12M, Pequeña 1's lower edge is 0.65 cars/month, not 1. The draft's "1–27" is a rounded description of "Pequeña 1–Mediana 2".
- **Recommended wording:** define the population by **SII bracket (Pequeña 1–Mediana 2, 2,400–100,000 UF/yr)**. Report "≈0.4–18 cars/month at CLP 18.4M (≈0.7–27 at CLP 12M)" as an illustration, and use self-reported purchases in the last 3 months only as a screener band (e.g. 1–30).
- **Consignment.** Sales booked as commissions (consignment) make SII revenue understate the cars a dealer handles. Consignment-heavy dealers could sit in a lower bracket than their volume suggests. Add a screener question on consignment share.

### Gaps
- No CAVEM, Autofact or SII average *transaction* value for used cars in 2025–2026 was found.
- No public average dealer *purchase* price or margin data for Chile.

## Q6. Evidence on dealer purchase volume

### Takeaway
The CAVEM figures in the draft are confirmed: companies bought **14,597** used light/medium vehicles in Jul 2026 and **13,094** in Sep 2026. "Empresas" means *all* legal-entity buyers (rent-a-car, leasing, fleets, dealers), not dealers alone. SII revenue implies the average Pequeña–Mediana 451002 firm sells about **3 cars/month** at CLP 18.4M.

### Cited Findings
- **Jul 2026:** 88,957 light/medium used transfers (−4.7% y/y). "Personas naturales: 74.360 vehículos, el 83,6%"; "Empresas: 14.597 vehículos, el 16,4%". Source: [La Tercera / Pulso, Nogales, 5 Aug 2026](https://www.latercera.com/pulso/noticia/venta-de-autos-usados-roza-las-650-mil-unidades-a-julio-el-segundo-mejor-registro-de-la-historia/).
- **Sep 2026:** used light-vehicle transfers 85,661 (+4.7%); "84,7% (72.567 unidades) a personas naturales y 15,3% (13.094 unidades) a empresas". Year to date: 821,781 used transfers and 3.4 used per new vehicle. Source: [The Clinic, Mellado, 6 Oct 2026](https://www.theclinic.cl/2026/10/06/ventas-de-vehiculos-en-chile-septiembre-2026-cavem/).
- **1H 2026:** 559,415 light/medium used transfers (+5.8%); Jun 2026: 90,299. Source: [El Rancagüino, CAVEM](https://www.elrancaguino.cl/?p=348185).
- **Aug 2026:** 87,748 used light/medium transfers. Source: [Emol, 4 Sep 2026](https://www.emol.com/noticias/Autos/2026/09/04/1210584/autos-usados-cavem-agosto-2026.html).
- **Nov 2024 benchmark:** "las empresas alcanzan el 13,7% de todos los adquirentes" (secondary). Source: [Radio Agricultura, 12 Dec 2024](https://www.radioagricultura.cl/noticias/economia/cavem-venta-de-autos-usados-en-2024-crece-un-34-versus-2023-y-representan-al-765-del-segmento_20241212/).
- **SII-implied volume (computed).** 451002 Pequeña 1–Mediana 2 firms in 2025 had total sales of 18.92M UF across 1,066 firms nationally. At UF 39,157 that is CLP 741 bn. At CLP 18.4M per car it implies about 40,300 cars/yr, or **~3,356 cars/month nationally, ≈3.1 per firm per month**. Source: [SII EMPRESAS.zip](https://www.sii.cl/sobre_el_sii/empresas/EMPRESAS.zip).

### Inferences
- About 3,400 cars/month bought by SME dealers would be roughly 23–26% of the 13–15k monthly company purchases. That fits with rent-a-car firms, leasing firms and large groups taking the rest.
- If dealers do not transfer stock into their own name (resale "en consignación" or with notarized mandates, an unverified practice), CAVEM's "empresas" figure understates dealer buying.
- The SME dealer is a very small business: median 2 employees and ~3 cars/month. This supports an **owner = price-setter** informant design and a low-priced SaaS tier.

### Gaps
- No Chilean source (CAVEM, press interview, Autofact Pro, consignment platforms) gives the cars bought or sold per month by a typical compraventa. No public CAVEM split of "empresas" by type.

## Q7. Informal sector / flippers (habitual sellers who are not registered)

### Takeaway
No official or credible estimate of informal flippers exists. The tax rules do not create a frame. Used-car sales generally carry the 1.5% municipal tax rather than IVA, and the new 2024 "vendedor habitual de bienes muebles usados" rule covers parts, electronics and luxury goods, **not whole vehicles**. Keeping flippers in qualitative work only is justified.

### Cited Findings
- **SII FAQ:** used-vehicle sales "están gravadas con el Impuesto de Beneficio Municipal con tasa 1,5%", on the higher of price or fiscal valuation. Exceptions include imports and fixed assets acquired with VAT credit (Ley 20.780, with the 36-month rule for 14 D firms). The FAQ does not mention habitualidad or compraventas. Source: [SII FAQ 001_130_0706](https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/001_130_0706.htm).
- **SII Ordinario N° 53 (5 Jan 2022)** addressed a firm engaged in habitual compraventa of new and used cars. The snippet reads "si el bien pertenece al activo realizable del enajenante, este será vendedor habitual, por lo que debe recargar IVA en la venta". This is UNVERIFIED: snippet only, full text not read. Source: [vLex](https://vlex.cl/vid/ordinario-n-53-servicio-883587229).
- **Ley 21.713** (DO 24 Oct 2024) added art. 88 bis to the Código Tributario, obliging "vendedores habituales de bienes muebles usados" to issue a document identifying their supplier. **SII Res. Ex. N°117 (12 Dec 2024)** applies it to: "a) Repuestos, piezas o partes de vehículos usados … b) … artículos tecnológicos usados … c) Artículos usados de uso personal de alto valor o de lujo". Whole vehicles are not listed. Source: [SII Res. Ex. 117/2024](https://www.sii.cl/normativa_legislacion/resoluciones/2024/reso117.pdf).
- A 2014 SII pilot detected risky tax operations in car buying and selling. It is old. Source: [La Tercera](https://www.latercera.com/pulso-pm/noticia/sii-realiza-piloto-para-detectar-operaciones-tributarias-riesgosas-en-compra-y-venta-de-autos/HI5YCGF3UNDIPJCMB3VEE646YQ/).
- A blog claim that private sellers must declare above CLP 30M/yr is UNVERIFIED. Source: [Academia XRAY](https://academiaxray.cl/blog/los-vehiculos-usados-pagan-iva/).
- **Related formal-side signal:** "el 73,9% de las condenas por lavado de activos entre 2019 y 2023 involucraron la compraventa de vehículos". Source: [G5 Noticias, 22 Oct 2026](https://g5noticias.cl/?p=926479).

### Inferences
- **The informal segment cannot be framed or counted with public data.** Recruit flippers qualitatively through snowball sampling: workshops, Facebook Marketplace and Yapo sellers with many listings, and Chileautos accounts near the 5-listing limit.
- **Micro 1–3 firms with 451002** (1,744 nationally in 2025) are the *formal* edge of this segment. They could be a secondary qualitative stratum.

### Gaps
- No estimate of the number of informal habitual car resellers in Chile. No official "habitualidad" threshold for natural persons selling vehicles was found.

## Q8. Feasibility: B2B/SME response rates and Chilean SME survey practice (ELE)

### Takeaway
Chilean business web/email surveys typically get about **1–6%** response. The ELE, the reference survey, stratifies by activity × sales bracket using an SII-based frame, and its documentation is on economia.gob.cl. With N ≈ 600–700, expect few completes from cold email. Plan multi-mode contact: visits to lots, phone, and gatekeeper introductions.

### Cited Findings
- **ELE purpose:** "caracterizar la heterogénea realidad empresarial del país según sector de actividad económica y tamaño de las empresas", run "bienalmente" by INE and the Ministerio de Economía. Source: [INE, Encuesta Longitudinal de Empresas](https://www.ine.gob.cl/estadisticas/economia/ciencia-y-tecnologia/encuesta-longitudinal-de-empresas).
- **ELE design** (snippet-level, documents not read in full):
  - The frame comes from SII records plus the INE business directory, stratified by economic activity and size (ELE1).
  - The population is "empresas formales que desarrollan actividad productiva, comercial o de servicio". Very small units are excluded because they are hard to follow and unstable (ELE3).
  - About 30% of the sample was drawn as replacements (ELE1).
  - ELE5 reports a table "Número de empresas logradas y tasa de respuesta del corte longitudinal panel fijo".
  - Sources: [ELE1 Informe Metodológico](https://www.economia.gob.cl/wp-content/uploads/2012/03/Informe-Metodológico-ELE1.pdf); [ELE3 Informe metodológico](https://www.economia.gob.cl/wp-content/uploads/2015/07/Informe-metodologico-ELE3.pdf); [ELE5 Informe Diseño Muestral](https://www.economia.gob.cl/wp-content/uploads/2019/03/Informe-Diseño-Muestral-ELE-5.pdf).
- **Response rates** (search-snippet level):
  - UDD online B2B survey: 2,220 contacts, **5.8%**. Source: [UDD repository](https://repositorio.udd.cl/bitstreams/7937bbcf-d7ba-4653-9cdf-744a1b8094a6/download).
  - Universidad de Chile thesis, web survey of Santiago firms: **5%**. Source: [Repositorio U. de Chile](https://repositorio.uchile.cl/handle/2250/112469).
  - CORFO climate-adaptation survey 2023: **1.1%** (2,745 responses). Source: [CORFO](https://wapp4.corfo.cl/archivos/encuesta_adaptacion_cambio_climatico_2023.pdf).
  - General B2B phone surveys: 5–10% (consultancy blog, not Chile-specific). Source: [IntoTheMinds](https://www.intotheminds.com/blog/es/tasa-respuesta-encuesta-telefonica/).

### Inferences
- **Sample-size arithmetic** (computed; p = 0.5, 95% confidence, finite-population correction):
  - N = 600: ±10% needs n ≈ 83; ±8% needs n ≈ 120; ±5% needs n ≈ 235.
  - N = 690: ±10% needs n ≈ 84; ±5% needs n ≈ 247.
  - At a 5% cold-contact response rate, n ≈ 85 needs about 1,700 contacts. That exceeds N, so the plan must rely on higher-yield modes (in-person at lots and clusters, warm intros via CAVEM or platforms, CATI with appointment setting).
  - A realistic student target is **n ≈ 60–100 completes**. Report the margin of error honestly (±10–13%).
- **Copy ELE practice:** stratify by size (Pequeña vs Mediana) and region (RM vs V + Biobío), use proportional or Neyman allocation, and keep about 30% replacement units.

### Gaps
- Latest ELE edition (ELE7/ELE8) design and response rates not verified. No Chile-specific response rate for used-car dealers was found.

## Q9. Synthesis: best available sampling frames and revised population estimate

### Takeaway
The best frame is the **SII Nómina de Personas Jurídicas 2024**, filtered to main activity 451002, brackets Pequeña 1–Mediana 2, and RM/Valparaíso/Biobío. It gives **572 named firms** (RUT + razón social + comuna). Add an estimated ~56 personas naturales, for **N ≈ 630**. The draft's method rerun on the newest data gives **N ≈ 678** (451002, 2025) or **≈ 750** (subrubro 451, 2025). Report **N ≈ 630–680** and drop 451001 wholesalers. Use the UAF list, platform dealer pages and the team directory as recruitment and contact supplements.

### Cited Findings
**Population estimates (computed from the SII files cited under Q1).**

| Variant | Data | N (3 regions, Pequeña 1–Mediana 2) |
|---|---|---|
| Draft, as written | Subrubro 451, 2024 (earlier release), 62.1% share | 689 (1,109 × 0.621) |
| Draft method, current release | Subrubro 451, 2024, 62.0% | 690 |
| Draft method, newest year | Subrubro 451, 2025, 61.9% | **750** |
| Corrected activity, newest year | **451002 only, 2025, 63.6%** | **678** |
| Corrected activity, 2024 | 451002 only, 2024, 63.7% | 605 |
| **Direct count, no share assumption** | **SII Nómina PJ 2024, 451002 main activity** | **572 legal persons** (RM 487, V 53, B 32) |
| Direct count + personas naturales | 572 + 88 non-PJ × 63.7% | **≈ 628** |

**Candidate frames and coverage.**
- **F1, SII Nómina PJ** (named, RUT, comuna, size, activity; year 2024). About 91% of P1–M2 451002 firms. It misses personas naturales and firms whose main activity is not 451002 but that resell cars. Contact details must be found separately. Source: [SII nómina](https://www.sii.cl/sobre_el_sii/nominapersonasjuridicas.html).
- **F2, UAF registered list** (Jun 2026). 558 vehicle sellers nationally; 146 in the three-region SME cell (~25% of F1). Biased toward large and formal firms. Source: [UAF xlsx](https://www.uaf.cl/media/documentos/Sujetos_Obligados_inscritos_en_la_UAF_al_30.06.2026.xlsx).
- **F3, SII ACTECOS** (any registered activity 451002): 12,130 legal persons nationally. Strong over-coverage, so useful only as a screening universe. Source: [SII ACTECOS](https://www.sii.cl/estadisticas/nominas/PUB_NOM_ACTECOS.zip).
- **F4, CAVEM members:** ~105 firms, mostly brand dealers. Gatekeeper, not a frame. Source: [CAVEM socios](https://www.cavem.cl/socios_centro).
- **F5, platform dealer accounts** (Chileautos accounts with >5 listings or lead management). Size unknown; recruitment list only. Source: [Chileautos T&C](https://www.chileautos.cl/staticpages/terminoscondiciones).

### Inferences
**Recommended design wording.**
- Target population: "legal or natural persons whose main SII activity is 451002 (venta al por menor de vehículos nuevos o usados, incluye compraventa), with annual sales of 2,400–100,000 UF (SII Pequeña 1–Mediana 2), domiciled in RM, Valparaíso or Biobío, that bought at least one used light/medium vehicle for resale in the last 3 months".
- Frame: F1, with F2 and F5 matched in for contact details.
- Exclude brand-franchise new-car dealers through a screener: share of used cars in sales, e.g. ≥50%. The SII code mixes new-car and used-car dealers.

**Stratify by region × size.**
- RM-Pequeña 391, RM-Mediana 96, V+B-Pequeña 70, V+B-Mediana 15 (legal persons, 2024).
- The V+B Mediana cell is tiny (15), so a census-like approach (contact everyone) is needed there if regional comparison matters.

**Recruitment channels.**
- The team directory of 20 Santiago independents, CAVEM, the car hubs and platforms remain valid *contact routes*. They should be checked against F1 (by RUT or name) so that each respondent can be placed in its SII stratum.
- CATI for the regions is sensible given the small regional counts.

**Over-coverage warning.** 451002 includes new-car brand dealers. Some Mediana firms will screen out, so the effective N of *used-car* dealers is probably lower than 572–678. The size of that reduction is unknown.

### Gaps
- Share of 451002 SME firms that are mainly *used*-car dealers (vs franchised new-car dealers): no source.
- Contact data (phones/emails) for F1 firms: not public. It must be built from F2, F5, web searches or site visits.

### APA 7 reference list (all sections)
- AZ. (2023, May 10). *Nuevos sujetos obligados ante la Unidad de Análisis Financiero*. https://www.az.cl/nuevos-sujetos-obligados-ante-la-unidad-de-analisis-financiero/
- Cámara Nacional de Comercio Automotriz de Chile [CAVEM]. (n.d.). *Socios Zona Centro*; *Socios Zona Norte*; *Socios Zona Sur*. Retrieved November 2, 2026, from https://www.cavem.cl/socios_centro, https://www.cavem.cl/socios_norte, https://www.cavem.cl/socios_sur
- Chileautos. (n.d.). *Términos y condiciones*. Retrieved November 2, 2026, from https://www.chileautos.cl/staticpages/terminoscondiciones
- Chileautos. (2026). *Radiografía autos usados 2025: más búsquedas, precios al alza y un comprador cada vez más decidido*. https://www.chileautos.cl/noticias/detalle/radiografia-autos-usados-2025-mas-busquedas-precios-al-alza-y-un-comprador-cada-vez-mas-decidido--30162/
- El Rancagüino. (2026). *CAVEM: Crecimiento de 5,6% en las operaciones del mercado automotor en primer semestre de 2026*. https://www.elrancaguino.cl/?p=348185
- G5 Noticias. (2026, September 23). *Movicenter multiplica por diez el crecimiento en ventas del mercado automotriz en Chile*. https://g5noticias.cl/2026/09/23/movicenter-multiplica-por-diez-el-crecimiento-en-ventas-del-mercado-automotriz-en-chile/
- G5 Noticias. (2026, October 22). *CAVEM e iCompliance capacitan al sector automotor sobre las nuevas exigencias de la UAF y la Ley de Delitos Económicos*. https://g5noticias.cl/?p=926479
- Guzmán, J. T. (2026, February 13). Precios de autos usados suben 5% en 2025: ¿Cuáles son las marcas y modelos más buscados? *Emol*. https://www.emol.com/noticias/Economia/2026/02/13/1191407/autos-usados-chile-2025.html
- Instituto Nacional de Estadísticas [INE]. (n.d.). *Encuesta Longitudinal de Empresas*. https://www.ine.gob.cl/estadisticas/economia/ciencia-y-tecnologia/encuesta-longitudinal-de-empresas
- Mellado, L. (2026, October 6). [Ventas de vehículos en Chile, septiembre 2026, CAVEM]. *The Clinic*. https://www.theclinic.cl/2026/10/06/ventas-de-vehiculos-en-chile-septiembre-2026-cavem/ (exact headline not captured; bracketed description used)
- Ministerio de Economía, Fomento y Turismo & INE. (2019). *Informe de diseño muestral ELE 5*. https://www.economia.gob.cl/wp-content/uploads/2019/03/Informe-Diseño-Muestral-ELE-5.pdf
- Nogales, D. (2026, August 5). Venta de autos usados roza las 650 mil unidades a julio, el segundo mejor registro de la historia. *La Tercera (Pulso)*. https://www.latercera.com/pulso/noticia/venta-de-autos-usados-roza-las-650-mil-unidades-a-julio-el-segundo-mejor-registro-de-la-historia/
- Servicio de Impuestos Internos [SII]. (2024). *Resolución Ex. SII N°117: Fija documentos tributarios que deben emitirse por los vendedores de bienes muebles usados para identificar a su proveedor conforme al artículo 88 bis del Código Tributario* (December 12, 2024). https://www.sii.cl/normativa_legislacion/resoluciones/2024/reso117.pdf
- Servicio de Impuestos Internos [SII]. (2025). *Nómina de personas jurídicas y empresas: Empresas personas jurídicas años comerciales 2020 a 2024* [Data set]. https://www.sii.cl/sobre_el_sii/nominapersonasjuridicas.html
- Servicio de Impuestos Internos [SII]. (2026). *Estadísticas de empresas, años comerciales 2005–2025* [Data set, updated October 2026]. https://www.sii.cl/sobre_el_sii/estadisticas_de_empresas.html
- Servicio de Impuestos Internos [SII]. (2026). *Unidad de Fomento (UF) 2026*. https://www.sii.cl/valores_y_fechas/uf/uf2026.htm
- Servicio de Impuestos Internos [SII]. (n.d.). *¿Qué impuesto afecta a las ventas de vehículos usados?* https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/001_130_0706.htm
- Unidad de Análisis Financiero [UAF]. (2026a). *Informe estadístico 2025*. https://www.uaf.cl/media/documentos/Informe_Estadistico_2025.pdf
- Unidad de Análisis Financiero [UAF]. (2026b). *Lista sujetos obligados inscritos en la UAF al 30/06/2026* [Data set]. https://www.uaf.cl/media/documentos/Sujetos_Obligados_inscritos_en_la_UAF_al_30.06.2026.xlsx
- Unidad de Análisis Financiero [UAF]. (n.d.). *Inscritos en la UAF*; *Quiénes deben reportar*. https://www.uaf.cl/es-cl/sujetos-obligados/sector-privado/inscritos-en-la-uaf ; https://www.uaf.cl/es-cl/sujetos-obligados/sector-privado/quienes-deben-reportar
