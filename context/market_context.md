# Market context

Status: Done

<aside>
📌

Brief outline of the market. Sources: Stage 1 Market Research Report v2 (22 Sep 2026) and the competitor sites on the Sources → Links page (checked 26 Sep 2026).

</aside>

## 1. Market size

- **1,060,919 used-car transfers in 2025** (+5.8%). Jan–Aug 2026: 736,120 (+4.1% y/y). About 3.4 used cars are sold for every new one.
- **Businesses buy 16.2% of used cars** (Aug 2026): about 172,000 purchases a year, or 14,300 a month. This is the demand we serve.
- **Santiago is 58% of the market** (615,311 transfers in 2025). Next come Valparaíso (70,983) and Biobío (62,191).
- Average asking price on Chileautos: CLP 18.4M in 2025 (+5%).
- **July 2026 (CAVEM monthly report):** 92,734 used transfers (−4.8% y/y); January–July 674,160 (+4.3%). Of 88,957 light and medium used vehicles, companies bought 14,597 (16.4%) and individuals 74,360 (83.6%). "Companies" means all legal entities (fleets, rental firms, dealers), so it overstates dealer demand. [CAVEM Informe Mensual Julio 2026](https://cnc.cl/wp-content/uploads/2021/01/Informe-Mensual-Julio-2026.pdf)

## 2. The problem: prices are hard to judge

- The same model varies enormously: a Ford F-150 was listed at anywhere from CLP 2.0M to 68.9M in 2025.
- Segments move differently: hatchbacks +5%, pickups +4%, sedans +3%, SUVs slightly down.
- Today businesses price cars by hand: staff browse portals and keep spreadsheets.

## 3. Target customers

| Segment | How they buy | Market signal |
| --- | --- | --- |
| Compraventas / automotoras (used-car dealers) | Portals and trade-ins | Already pay for dealer software (1.5–9 UF a month) |
| Concesionarias (franchised dealers) | Trade-ins of newer cars | 25.7% of transferred cars are 0–5 years old |
| Desarmadurías (scrapyards) | Mostly salvage auctions, not classifieds | 23.8% of transferred cars are 16+ years old; Remates Reyco auctions 500+ vehicles a month |
- **Company counts (SII, activity 451 "Venta de vehículos automotores", commercial year 2024):** 4,325 companies, 660.1M UF in sales and 44,361 payroll employees. Activity 451 covers new and used vehicles of every type and includes importers and franchised groups, so this is a ceiling, not a count of used-car dealers. The count was about 6,000 in 2012–2014 (6,140 in 2007), fell to 3,439 in 2020 and has recovered since. Source: SII statistics file SIIVentaVehiculos.xlsx, sheets Region and Tamanio.

| Size (SII sales bracket, 2024) | Companies | % of companies | % of sales | Payroll employees per company |
| --- | --- | --- | --- | --- |
| Micro | 1,681 | 38.9% | 0.2% | 0.5 |
| **Pequeña (small)** | **866** | 20.0% | 1.2% | 2.7 |
| **Mediana (medium)** | **243** | 5.6% | 1.8% | 8.1 |
| Grande (large) | 250 | 5.8% | 96.8% | 157 |
| No sales / no data | 1,285 | 29.7% | 0% | 0.1 |
| **Total** | **4,325** | 100% | 100% | 10.3 |
- **Large firms are out of scope:** 83 companies above 1M UF a year make 88% of all sales (582.7M of 660.1M UF). They are likely importers and franchised groups.
- **Working assumption for the buyer personas:** small compraventas = Pequeña (866); medium dealerships = Mediana (243). Together **1,109 companies** (flat at about 1,000–1,200 since 2018; about 2,100 in 2013). Micro, large and no-sales companies are excluded. Micro 3 (644 companies, 600–2,400 UF a year) is a possible stretch segment. Bracket limits follow the standard SII scale and still need checking against the SII site.
- **By region (2024, all sizes):** Santiago 2,183 (50.5%), Valparaíso 301, Tarapacá 282, La Araucanía 210, Los Lagos 208, Maule 207, Biobío 200. The file does not cross region and size. If Santiago has the same 50.5% share of small and medium companies, that is about 560 (assumption).
- **Earlier base-case estimate** of about 1,430 professional buyers nationally and 830 in Santiago has no documented source. It is kept for reference; the SII small plus medium figure (1,109) is the same order of magnitude.

## 4. Where the data comes from

| Source | Size (22 Sep 2026) | Access |
| --- | --- | --- |
| Chileautos | 70,039 listings | Terms of use ban scraping; needs a data licence |
| [Yapo.cl](http://Yapo.cl) | 34,032 used-car listings | robots.txt allows listing pages; terms not yet reviewed |
| Mercado Libre Autos | Not verifiable | robots.txt blocks crawling; needs an API or partnership |
| Remates Reyco, Vedisa | Salvage auctions (Reyco: 500+ a month) | Terms to check, or approach as partners |

## 5. Competitive landscape

| Player | Type | Pricing feature | Price |
| --- | --- | --- | --- |
| **Rodar** | B2B dealer platform (waitlist) | Maximum purchase price, estimated margin and time to sale, from market comparables, legal records and OBD2 readings | On request |
| **GoAuto** | B2B dealer "operating system" | GAIA AI engine: real-time market pricing, lead scoring, price-cut suggestions. Publishes to 20+ portals | Not public |
| AutoGest | Dealer management software | AI appraiser (brand, model, year, mileage, condition, region) | CLP 59,990 a month |
| Ofertautos | Consumer deal finder | Market-value index over Yapo and Mercado Libre; daily alerts for below-market listings | CLP 4,990 a month |
| Autofact / Autofact Pro | Vehicle history and value lookup | Commercial value by plate or model; no deal scoring | Per report / B2B |
| Vendicar, GEMA | Dealer management and CRM | None | 1.5–9 UF; from CLP 99,900 |
| Manual research | Status quo | Staff time and spreadsheets | — |

<aside>
⚠️

**New finding, not in the research report:** GoAuto and Rodar both sell AI pricing to Chilean dealers. Rodar is the closest match to our idea: it tells a dealer the most it should pay for a car. Being "built for businesses" is no longer a differentiator on its own.

</aside>

## 6. Where we could still stand out

Differentiators to test against Rodar and GoAuto:

- **A market-wide deal feed:** proactive alerts across all sources, rather than valuing a car the dealer is already looking at. To verify: Rodar and GoAuto appear to focus on the dealer's own inventory.
- **Salvage auctions and scrapyards:** none of the competitors checked mention them.
- **Photo-based condition pricing** from client photos. Rodar reads condition from OBD2 data instead.

## 7. Trends and constraints

- **A digital market:** 96.5% of households are online (2024); e-commerce reached about USD 10 billion in 2025 (12.6% of retail).
- **AI for dealers is arriving: AutoGest, GoAuto, GEMA and Rodar all advertise AI features. The category is forming now.**
- **Data law:** Ley 21.719 takes effect on 1 Dec 2026, with fines up to 20,000 UTM. We collect vehicle data only, never seller names or phone numbers.
- **Data access is the main constraint:** the largest portal bans scraping.

## Open questions

- [x]  Count target businesses from SII company statistics: done for activity 451 (see section 3)
- [ ]  Narrow activity 451 to used-car dealers only, and cross region with size (Santiago small and medium count). Would need an SII transparency request (Ley 20.285) for codes 451001 and 451002
- [ ]  Check the SII sales-bracket limits against the SII site
- [ ]  Rodar: launch date, pricing, data sources, and whether it sends deal alerts
- [ ]  GoAuto: pricing and number of Chilean clients
- [ ]  Review Yapo's terms of use

Market size for dealerships (Of all sizes)