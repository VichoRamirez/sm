# Buyer persona and TAM SAM SOM

Status: Done

The buyer persona or potential buyer are both direct clients (b2c model) and small to medium car dealerships / compraventa business that do not have direct access to mechanics that might help with appraisals.

Todo:

- numbers about each of these clients:
    - Used car buyers
    - Small compraventa businesses
    - Medium dealerships
- Make a Tam Sam Som with this information (some of it can be taken from the market contexr)

---

## Ideal customer profile (draft v2)

<aside>
📌

Built from the problem, not from a character. We ask who has the problem most often and most costly. Items marked **[data]** are sourced (SII workbook and Market context); **[hypothesis]** items are assumptions to test in interviews. Peso conversions assume 1 UF ≈ CLP 39,000 and an average purchase of CLP 12M (both hypotheses).

</aside>

### The problem we solve

A dealer has to decide, car after car, how much to pay and what the car will cost to fix, without a reliable market price and without a mechanic to inspect it. Today they browse portals and keep spreadsheets **[data]**. A wrong call on one car can wipe out the margin on several others **[hypothesis]**.

### Who has it most: the target definition

| Criterion | Target | Why it matters |
| --- | --- | --- |
| Business type | Independent used-car dealer (compraventa / automotora) that buys cars to resell | Their margin depends on the purchase price and repair cost |
| Purchase volume | About 3 or more purchases a month (sales of roughly 10,000–100,000 UF a year) **[derived]** | Frequent buying makes a subscription worthwhile; low-volume dealers will not use it enough |
| Mechanic | No full-time mechanic or appraiser; relies on an outside workshop, a friend or their own eye **[hypothesis]** | This is the gap we fill |
| Where they source | Trade-ins, portals, auctions and private sellers **[hypothesis]** | Our deal feed and photo scan work on any of these |
| Digital habits | Already list on portals and use a phone daily; may use dealer software **[data: software prices]** | Needs no change of habits to adopt a mobile app |

**Not our target now:** large automotive groups and importers (250 companies; they have in-house appraisal and systems), micro and no-sales companies (2,966 companies; too little volume), and individual buyers (see the end of this page).

### Segment size by purchase volume

Estimated purchases per company come from sales brackets: sales ÷ (UF value × average purchase). Sales also include non-car revenue, so these are upper estimates.

| SII bracket (2024) | Sales per year | Companies | Est. purchases per month | Tier |  |
| --- | --- | --- | --- | --- | --- |
| Pequeña 1 | 2,400–5,000 UF | 281 | under 1.4 | Wide |  |
| Pequeña 2 | 5,000–10,000 UF | 271 | 1.4–2.7 | Extended |  |
| Pequeña 3 | 10,000–25,000 UF | 314 | 2.7–6.8 | **Core** |  |
| Mediana 1 | 25,000–50,000 UF | 149 | 6.8–13.5 | **Core** |  |
| Mediana 2 | 50,000–100,000 UF | 94 | 13.5–27 | **Core** |  |
| **Core** |  | **557** |  |  |  |
| **Core + Extended** |  | **828** |  |  |  |
| **Core + Extended + Wide** |  | **1,109** |  |  |  |

These counts are for activity 451 (new and used, all vehicle types), so the true number of used-car dealers is lower. Bracket limits still need checking on the SII site. For the TAM/SAM/SOM, 4,325 is the total, 1,109 is the serviceable group and 557 is the core.

### What the target looks like day to day

- **Who decides and who uses it:** the owner or manager decides and pays; the person who buys cars (often the owner) uses it, with salespeople as secondary users **[hypothesis]**
- **Moment of need:** the dealer is looking at a specific car, has minutes to decide, and cannot tell what it will cost to fix **[hypothesis]**
- **Current alternatives:** manual research, an outside mechanic, a gut feeling; or paid tools such as AutoGest (CLP 59,990 a month), Rodar and GoAuto **[data]**
- **What they want:** a maximum purchase price they can trust, a repair-cost estimate from photos or video, and alerts for cars priced below market **[matches Business Definition and Market context]**
- **What they would measure:** fewer overpaid cars, fewer repair surprises, and less time per appraisal **[hypothesis]**

### Value and price logic

- **Price anchors:** Ofertautos CLP 4,990 a month, AutoGest CLP 59,990 a month, dealer software 1.5–9 UF a month **[data]**. Working range CLP 60,000–350,000 a month depending on team size **[hypothesis]**
- **Break-even:** at CLP 60,000 a month, the subscription pays for itself if it prevents one CLP 300,000 mistake every five months **[hypothesis; ask in interviews what a bad purchase costs]**

### Likely objections

- Is an AI diagnosis reliable enough to risk money on? Answer: show the estimate as a range and track accuracy against real repair bills **[hypothesis]**
    - Why not Rodar or GoAuto? Answer: our angle is the market-wide deal feed and photo-based condition pricing; to be verified against both **[data: Market context]**
- Will it fit how I already work? Answer: mobile first, no integration needed to start **[hypothesis]**
- Data privacy (Ley 21.719 from 1 Dec 2026). Answer: we collect vehicle data only, never seller names or phone numbers **[data]**

### How to reach them

They list cars on Chileautos and Yapo, buy at auctions such as Remates Reyco, and may use dealer software (Vendicar, GEMA, AutoGest). These are the places to find them and possible partners **[hypothesis]**.

### What to validate with real dealers

- How many cars do you buy a month, and how do you decide on a price?
- Who inspects the cars, and what does that cost or delay?
- What did your last bad purchase cost?
- Which tools do you pay for today, and what do you pay?
- Would you pay CLP 60,000 a month for this, and what would it need to do?

## Buyer persona: Camilo, owner of a mid-size compraventa

<aside>
⚠️

Camilo is an illustrative composite built on the core profile above, not a real person. Name, age and anecdotes are invented to make the profile concrete. Facts tagged **[data]** come from the SII workbook, CAVEM and Market context; everything else is **[hypothesis]** to validate in dealer interviews.

</aside>

### Snapshot

- **Role:** owner and main buyer of a used-car dealership in Greater Santiago (about half of the sector's companies are in Santiago) **[data]**
- **Business:** about 7 purchases and sales a month, roughly 25,000 UF in yearly sales (Pequeña 3 / Mediana 1 boundary), with a team of about 6 **[data: bracket averages; Mediana averages 8 payroll employees]**
- **Age and background:** mid-40s, has sold cars for 15+ years, learned the trade on the lot rather than in a workshop **[hypothesis]**
- **Mechanic:** none on payroll. Uses a trusted outside workshop, paid per inspection, and often cannot get the car in before the seller moves on **[hypothesis]**

> "I know a good car when I see one, but I can't open every hood. When someone else gets there first, I lose the deal. When I'm wrong, I eat the repair." *(illustrative quote)*
> 

### A typical week

- Scans Chileautos and Yapo for cars priced below market, and calls sellers **[data: portals; Market context]**
- Keeps prices in a spreadsheet and checks them against similar listings by hand **[data: Market context]**
- Takes trade-ins from customers and has to price them on the spot **[data: Market context]**
- Goes to an auction when stock is low (for example Remates Reyco) **[hypothesis]**
- Pays for dealer software to publish listings and manage customers, probably at 1.5–9 UF a month **[data: software prices]**

### Goals

- Buy at a price that leaves a reliable margin
- Turn stock quickly, without cars sitting for months
- Avoid surprises after purchase (engine, transmission, accident history)
- Look professional and trustworthy to customers

### Frustrations

- Cannot tell what a car will cost to fix before buying
- Price research takes hours and is inconsistent from day to day
- Competitors with better information outbid on good cars
- Staff price cars differently, so margins vary
- One bad car can erase the profit from several good ones

### How Camilo decides

- **Trigger:** gets burned by a car with a hidden fault, or loses several good deals in a row
- **Evaluation:** asks other dealers, tries a free trial on the next purchase, and compares it with what they pay now
- **Decision:** decides alone, pays by card or transfer, and expects to cancel anytime
- **Proof needed:** the estimate has to match what a workshop later charges; a few wrong calls end the trial

### What would make Camilo adopt, and what would stop them

| Adopts if | Rejects if |
| --- | --- |
| Gives a clear maximum price and repair range in under two minutes, on a phone, in front of the car | Takes long to set up or needs staff training |
| Estimates match real workshop bills in the first trial | Estimates are far off, even once or twice |
| Costs less than one mistake a quarter (about CLP 60,000 a month) | Costs as much as the dealer software they already pay for |
| Alerts surface good deals they would miss | Alerts are noisy or point to cars already sold |

### Messages that should land

- "Know what to pay, and what it will cost to fix, before you shake hands."
- "Your own mechanic in your pocket, for the price of one fewer mistake a quarter."
- "Every car priced the same way, whoever on your team is buying."

### Not targeted now

- **Individual used-car buyers (B2C):** 83.6% of used purchases in July 2026, about 74,000 a month **[data: CAVEM]**. They buy once every few years, so subscriptions are hard and each customer is costly to acquire **[hypothesis]**. Revisit after the dealer product works.
- **Large groups and importers:** in-house appraisal; out of scope.

---

## TAM / SAM / SOM (draft v1)

<aside>
📌

Bottom-up: number of companies × yearly subscription price, in three scenarios (low, base, high). Company counts are **[data]** (SII workbook, activity 451, 2024). Prices, penetration and the UF value are **[hypothesis]**. All amounts are in CLP per year and are revenue from subscriptions only.

</aside>

### Price assumptions (per company, per month)

| Company size | Low | Base | High | Anchor |
| --- | --- | --- | --- | --- |
| Pequeña (small), also used for micro and no-sales | CLP 30,000 | CLP 60,000 | CLP 90,000 | AutoGest AI appraiser at CLP 59,990 a month **[data]** |
| Mediana (medium), also used for large | CLP 60,000 | CLP 150,000 | CLP 350,000 | Dealer software at 1.5–9 UF a month, about CLP 59,000–351,000 **[data]** |

### The funnel

| Layer | Who is in it | Companies | Low (CLP M a year) | Base (CLP M a year) | High (CLP M a year) |
| --- | --- | --- | --- | --- | --- |
| **TAM** | Every company in activity 451 (ceiling) | 4,325 | 1,734 | **3,646** | 6,209 |
| **SAM** | Small and medium dealers (Pequeña and Mediana) | 1,109 | 487 | **1,061** | 1,956 |
| **SOM** (3 years) | Share won of the core: at least about 3 purchases a month (557 companies) | 28 / 56 / 111 | 14 | **66** | 272 |
- **TAM** prices micro, no-sales and small companies at the small price (3,832 companies), and medium and large companies at the medium price (493). The large groups would likely build in-house, so this is a theoretical ceiling.
- **SAM:** 866 small × small price + 243 medium × medium price.
- **SOM:** we win 5% (low), 10% (base) or 20% (high) of the 557 core companies within three years. Core = Pequeña 3 (314, small price) + Mediana 1 and 2 (243, medium price). Low and high combine the low or high penetration with the matching price scenario, so they are the extremes, not likely outcomes.
- **Base SOM in plain terms:** about 56 paying dealers and CLP 66M a year (roughly 1,700 UF), which is about 6% of the SAM and under 2% of the TAM.

### Sanity check against CAVEM

Using the purchase estimates from the sales brackets, the 557 core companies buy about 4,900 cars a month (Pequeña 3 about 1,500, Mediana 1 about 1,500, Mediana 2 about 1,900). Companies bought 14,597 used light and medium vehicles in July 2026 **[data: CAVEM]**, so the core would account for about a third of company purchases. That is plausible but not proof, because the sales figures also include non-car revenue and new vehicles.

### Sensitivity

- If only 70% of SAM companies buy used cars, the base SAM falls from CLP 1,061M to about CLP 743M. The SII request for codes 451001 and 451002 would settle this.
- Every CLP 10,000 on the base small price moves the base SAM by about CLP 104M and the base SOM by about CLP 3.8M.

### What this means

- **High:** at these prices, the dealer niche in Chile is small. Even the base TAM is under CLP 4 billion a year, and the base SOM is about CLP 66M a year. That may not cover the cost of building and running an AI product. The numbers argue for one or more of: higher revenue per dealer, extra revenue lines (selling reports was on your meeting notes), the consumer segment later, or markets beyond Chile.
- **High:** the penetration rates (5 / 10 / 20%) are my guesses. We have no conversion data yet.
- **Medium:** all prices are hypotheses until dealers are interviewed.
- **Medium:** activity 451 includes new-vehicle dealers, so SAM and SOM are probably overstated.
- **Low:** the UF value and the average purchase price used for the core cut are assumptions.