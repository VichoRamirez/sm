# Investigación de Competidores/Sustitutos

Status: In progress
Assign: Bruno Caro

<aside>
📌

**Draft v1.** Owner: Bruno (R). Sign-off: Joaquín (A). Consulted: Daniel (C). Built from two Gemini Deep Research reports, then checked against the competitors' own websites on 11 de octubre de 2026. Every claim tagged ✅ was confirmed on the source page.

</aside>

**Draft v1.** Owner: Bruno (R). Sign-off: Joaquín (A). Consulted: Daniel (C). Built from two Gemini Deep Research reports, then checked against the competitors' own websites on 11 de octubre de 2026. Every claim tagged ✅ was confirmed on the source page.

## 1. Key findings

- **Rodar is still the closest competitor, and it already shows a repair-cost range.** Its sample report shows a maximum purchase price, estimated margin, days to sale and "Repair CLP 50,000–350,000 · Medium impact". It gets condition data from an OBD2 device and legal records, and is still in early access with a waitlist. ✅
- **"Price + condition in one app" is not unique any more.** Our difference has to be *how* we read condition (phone photos plus a short questionnaire, with no hardware) and *what else* we add (a proactive deal feed and auction listings).
- **A deal feed exists, but it is thin.** Ofertautos sends email alerts for below-market cars at CLP 4,990/month. It is a consumer product that covers only Yapo and Mercado Libre (about 4,500–4,700 cars indexed), compared with about 70,000 listings on Chileautos. ✅
- **Nobody prices salvage-auction cars for dealers.** We found no tool that does this. Remates Reyco publishes 500+ vehicles a month. Autofact's Autopress lists "subastas" as a feature, so we need to check what that means.
- **Valuation alone is crowded and cheap.** AutoGest charges CLP 59,990/month and claims 200+ dealers. Autopress Lite (from Autofact) charges 6 UF + IVA/month for used-car prices by plate. GoAuto, OmniMotora and Rolav also value cars. ✅
- **The real substitute is the pre-purchase inspection.** It costs CLP 82,000–85,990 per car and takes 1–3 hours. At CLP 60,000/month, our app costs less than one inspection a month. But photos cannot see what a mechanic sees, such as engine, transmission and chassis problems. ✅
- **Data access is the shared bottleneck.** The deal feed and the valuation both depend on listings data, and Chileautos bans scraping. Whoever gets a data licence first has a moat.

## 2. Competitor map

| Player | Type | Target | Status | Price | Threat |
| --- | --- | --- | --- | --- | --- |
| **Rodar** | Direct | Dealers | Early access, waitlist | Not public | **High** |
| **Autofact Pro / Autopress** | Direct + adjacent | Dealers, insurers, financiers | Live | Autopress Lite 6 UF + IVA/month; transfers CLP 28,000 + IVA each | **High** |
| **AutoGest** | Direct | Small and medium dealers | Live | CLP 59,990/month (CLP 49,998 if paid every six months) | **High** |
| **GoAuto** | Direct | Dealers | Live (no clients shown) | Not public; demo only | **Medium–High** |
| **Ofertautos** | Direct (feed) + adjacent | Consumers; dealers for listings | Live | Alerts CLP 4,990/month; dealer listing plan CLP 29,990/month | **Medium** |
| OmniMotora | Direct | Dealers | Live | Not public | Medium |
| Rolav | Adjacent (consumer) | Private sellers | Live | Free valuation and listing | Low (dealers); Medium (consumers) |
| Inspection services (Serviteca CyT, Ojo Mecánico, Bajo el Capot) | Substitute | Buyers and dealers | Live | CLP 82,000–85,990 per car | Medium |
| Kavak | Adjacent (instant buyer) | Consumers | Live in Chile | n/a | Low–Medium |
| Vendicar, Venpu, GENIO, Dily, dixAutos, GEMA | Adjacent (dealer software) | Dealers | Live | Vendicar 1.5–9 UF; Venpu from CLP 99,000; dixAutos from 2 UF; GEMA one-off CLP 1.69M–3.99M | Low (possible partners) |
| Bdeo, Tractable | Potential entrant / supplier | Insurers | Live (no Chilean dealer product found) | Enterprise | Low (possible API supplier) |
| ChatGPT / Gemini | Substitute | Anyone | Live | Free–USD 20/month | Medium (see Vicho's AI research) |
| Spreadsheets + portal browsing | Substitute (status quo) | Dealers | — | Staff time | Medium |

UF ≈ CLP 39,000. Prices as shown on each website on 11 Oct 2026.

## 3. Feature matrix

Columns: **(a)** maximum purchase price · **(b)** condition / repair cost · **(c)** proactive deal alerts · **(d)** salvage auctions · **(e)** margin or time to sale · **(f)** publishing / CRM

| Player | (a) | (b) | (c) | (d) | (e) | (f) |
| --- | --- | --- | --- | --- | --- | --- |
| **Our app (planned)** | Yes | Yes, photos + questionnaire | Yes | Yes | Yes | Not at first |
| Rodar | Yes | **Yes, OBD2 device + legal records** | No evidence | No evidence | Yes, both | Inventory tracking |
| Autopress (Autofact) | Partial (used prices, trade-in prices) | No | No | Unclear ("subastas" listed) | No | Stock |
| AutoGest | Partial (AI appraisal, manual input) | Manual "estado" field only | No | No | No | Yes |
| GoAuto | Partial ("tasación before offering") | No (deducts workshop costs after the fact) | Only for its own stock (aging alerts) | No | Profit per deal | Yes, 20+ portals |
| Ofertautos | Partial (market-value index) | No | **Yes, Yapo + Mercado Libre only** | No | No | Dealer listings + leads |
| OmniMotora | Partial (compares with Chileautos, Yapo, ANAC) | No | No | No | No | Website |
| Rolav | Price range (seller side) | No | No | No | Time to sale | Free listings |
| Inspection services | No | Yes, in person (160 points, scanner, paint gauge) | No | No | No | No |

## 4. Testing our three differentiators

| Idea | Who already does it | Verdict |
| --- | --- | --- |
| **Photo-based condition and repair cost** | Rodar gives a repair range from an OBD2 plug-in device. Bdeo and Tractable do photo damage assessment, but only for insurers. | **Partly open.** No Chilean dealer tool reads condition from photos. Photos see bodywork, paint and glass; OBD2 sees engine and electronics. Pitch it as "no hardware, works on any car, including ones you see on a listing," not as "more accurate than Rodar." |
| **Market-wide deal feed** | Ofertautos: CLP 4,990/month email alerts, consumer-oriented, Yapo + Mercado Libre only. GoAuto's alerts cover only the dealer's own stock. | **Partly open.** The idea is proven but the coverage is thin. To win, we need Chileautos data (a licence) and auction listings, plus push alerts that combine price with expected repair cost. |
| **Salvage auctions and scrapyards** | Nobody found. Autopress lists "subastas" as a feature (to check). | **Open, but niche.** Reyco publishes lots on Friday at 19:00, exhibits them Monday–Tuesday in Quilicura and runs the auction on Wednesday. Bidders put down a CLP 750,000–5M guarantee. Pricing these cars after repair is a real job to be done. We need interviews to see how many of our target dealers buy salvage. |

## 5. Positioning map

Two axes that separate the players better than "CRM vs. buying tool" (most CRMs now also value cars):

|  | **Price only** | **Price + condition** |
| --- | --- | --- |
| **Reactive** (you bring the car) | AutoGest, Autopress, GoAuto, OmniMotora, Rolav, Autofact reports, spreadsheets | Rodar (OBD2), inspection services (no price), ChatGPT (unreliable) |
| **Proactive** (the tool finds cars for you) | Ofertautos alerts | **Empty: our target position** |

## 6. Threat ranking

1. **Rodar:** same buyer, same job, and it already gives price + margin + days to sale + repair range. Watch its launch and pricing.
2. **Autofact (Autopress Lite):** already a partner to "70% of Chilean automotoras" for transfers. It sells used-car prices by plate at 6 UF/month and could add condition or alerts and sell to its existing base.
3. **AutoGest:** sets the price anchor (CLP 59,990) and claims 200+ dealers. That would be about 18% of our 1,109 serviceable companies, if the claim is true.
4. **GoAuto:** strong product story, but no prices or clients shown and its screenshots look like mock-ups. It could be early stage.
5. **Ofertautos:** owns the "below-market alert" idea at a very low price. Its dealer plan already exists, so it could point its alerts at dealers.
6. **Inspection services:** the trusted way to check condition today. They could become a partner (we flag the risk, and they confirm it in person).
7. **Kavak and dealer software (CRM/DMS):** low direct threat. The software firms are more useful as distribution partners.

## 7. Substitutes: what a dealer does today

| Substitute | Cost per car | Time | Weakness we exploit |
| --- | --- | --- | --- |
| Full pre-purchase inspection (Serviteca CyT) | CLP 85,990 | About 3 hours, including the report | Too slow for a fast deal; too expensive for every car the dealer looks at |
| Home inspection (Ojo Mecánico, Santiago) | CLP 82,000 (varies by comuna) | 1–2 hours | Same |
| Freelance mechanic ([2x3.cl](http://2x3.cl)) | About CLP 35,000–40,000 (Gemini figure, not checked) | Varies | Uneven quality, no written estimate |
| Autofact report | Per report | Minutes | Legal history only; says nothing about physical condition |
| Portal browsing + spreadsheet | Staff time | Long | Inconsistent between staff; misses deals |
| ChatGPT / Gemini with photos | Free | Minutes | Makes up repair costs; no local parts or labour prices |

## 8. Data access

- **Chileautos** (about 70,000 listings) bans scraping. It offers a stock API, but that API is for dealers to *publish* cars, not to read market data.
- **Ofertautos** scrapes Yapo and Mercado Libre, which shows the limit of a feed without Chileautos.
- **Autofact** has integrations with Registro Civil and toll data for legal history. That is a moat for reports, not for condition.
- **Implication:** plan a data partnership (Chileautos, Yapo or Reyco). Also ask dealers to log their final purchase prices in the app. That builds our own dataset of real transaction prices, rather than asking prices.

## 9. White space for us

> A no-hardware buying assistant for dealers: photo + questionnaire condition check, a maximum price that already subtracts expected repairs, and alerts for underpriced cars across portals **and salvage auctions**. Priced below Autopress Lite (6 UF) and close to AutoGest (about CLP 60,000).
> 

Be honest about the scope: photos cover bodywork, paint and glass; mechanical faults come from the questionnaire, or from a partner inspection when the app flags a risk.

## 10. Consumer side (if the team returns to B2C)

The business definition still says "users" in general. For individual buyers and sellers, the competitors are different: **Rolav** (free valuation with days to sale), **Ofertautos alerts** (CLP 4,990), **Kavak** (instant offer), **Autofact reports** and **inspection services**. A free valuation already exists, so a consumer version would have to charge for the photo condition check or the inspection referral.

## 11. Open questions and dealer interview questions

- [ ]  Rodar: launch date, pricing, and whether it will add photos or alerts (ask to join the waitlist as a dealer)
- [ ]  GoAuto: real client count and price (book a demo)
- [ ]  Autopress: what does "subastas" cover?
- [ ]  Can we get a Chileautos or Yapo data licence, and at what cost?
- [ ]  How many target dealers buy at Reyco or Vedisa?

**Interview questions**

1. Walk me through the last car you bought. How long from first seeing it to making an offer?
2. Do you use AutoGest, Autopress, GoAuto or Rodar? What do you pay, and what is missing?
3. How often do you pay for an inspection? What did your last surprise repair cost?
4. Would you trust a repair range from photos? What would it need to show?
5. Do you buy at salvage auctions? If not, is it the guarantee deposit or the repair risk?
6. Would alerts for underpriced cars change where you source cars? Which portals matter most?

## Sources

All checked 11 Oct 2026.

- Rodar: [rodar.cl](https://www.rodar.cl/) · [rodar.cl/en](https://www.rodar.cl/en)
- AutoGest: [autogest.cl](https://autogest.cl/)
- GoAuto: [goauto.cl](https://www.goauto.cl/)
- Ofertautos: [dealer plan](https://ofertautos.cl/automotoras) · [alerts](https://ofertautos.cl/alertas) · [market index](https://ofertautos.cl/autos-usados)
- Autofact: [Autopress pricing](https://precios.autofactpro.com/) · [transfers for dealers](https://www.autofact.cl/transferencias/automotoras)
- Rolav: [rolav.cl/tasacion](https://rolav.cl/tasacion)
- GEMA: [suite.go-gema.com](https://suite.go-gema.com/)
- Dealer software comparison, published by Venpu (a competitor): [empresas.venpu.cl](https://empresas.venpu.cl/software-para-automotoras/)
- Inspections: [Serviteca CyT](https://servitecacyt.cl/product/inspeccion-pre-compra-full/) · [Ojo Mecánico](https://www.revisionprecompra.cl/)
- Remates Reyco: [how auctions work](https://rematesreyco.cl/como-funciona-remates/)
- Kavak in Chile: [Bloomberg Línea, exit from Colombia and Peru](https://www.bloomberglinea.com/2023/11/03/kavak-anuncia-cierre-de-operaciones-en-colombia-y-peru-estas-son-las-razones/)
- Bdeo and Mapfre (Spain, 2022): [SegurosNews](https://segurosnews.com/ultimas-noticias/mapfre-apuesta-por-la-ia-de-bdeo-en-sus-procesos-de-verificacion-de-autos)
- Chileautos average price 2025: [Emol](https://www.emol.com/noticias/Economia/2026/02/13/1191407/autos-usados-chile-2025.html)
- CAVEM September 2026: [The Clinic](https://www.theclinic.cl/2026/10/06/ventas-de-vehiculos-en-chile-septiembre-2026-cavem/)
- Gemini Deep Research reports (competitors; benchmarks and market figures): held by Bruno.

[Chile Auto Dealer SaaS Analysis.docx](competidores_sustitutos/chile_auto_dealer_saas_analysis.docx)