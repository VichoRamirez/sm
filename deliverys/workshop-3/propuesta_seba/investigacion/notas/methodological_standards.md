# Methodological standards for population and sample definition in mixed-method (qual → quant) market research, contrasted with the InfoCar design

Notes compiled 2026-11-02. Verification legend used throughout:
- **[V]** = verified in this session against the primary source, its official abstract, or its bibliographic record (Semantic Scholar / OpenAlex metadata, publisher page, or the PDF text itself).
- **[S]** = verified only through a search-result excerpt or a secondary or vendor source. Usable, but weaker.
- **[NV]** = from background knowledge, NOT verified in this session. Every [NV] item sits in a Gaps list and must be checked before it is cited in the final document.
- "Own calc." = arithmetic I did in this session (Python) from the draft's own parameters, using standard formulas.

---

## 1. Qualitative sample size: individual in-depth interviews (IDIs) and focus groups (FGs)

### Takeaway
Empirical saturation studies converge on **~9–17 IDIs** and **~4–8 FGs** for *code* saturation in fairly homogeneous populations with narrow aims. *Meaning* saturation needs more (16–24 IDIs). For FGs stratified by segment, the evidence says **1 group per stratum surfaces the issues and 2 per stratum give a fuller understanding**. InfoCar's 10 dealer IDIs are **consistent, but at the low end**. Its 2 FGs (1 per seller type) are **weaker than the standard**: aim for at least 2 per stratum, so 4 groups.

### Cited Findings
- **Hennink & Kaiser (2022), systematic review [V].** They found 23 articles that assessed saturation, 17 with empirical data and 6 with statistical modelling. "Studies using empirical data reached saturation within a narrow range of interviews (9–17) or focus group discussions (4–8), particularly those with relatively homogenous study populations and narrowly defined objectives." Outliers needed larger samples: multi-country research, meta-themes and "code meaning" saturation. The authors say these results "apply to certain types of studies (e.g., those with homogenous study populations)." — [Hennink & Kaiser, 2022, *Social Science & Medicine*, 292, 114523](https://doi.org/10.1016/j.socscimed.2021.114523)
- **Guest, Bunce & Johnson (2006) [V].** The data were 60 IDIs with women in two West African countries. "Saturation occurred within the first twelve interviews, although basic elements for metathemes were present as early as six interviews." — [Guest et al., 2006, *Field Methods*, 18(1), 59–82](https://doi.org/10.1177/1525822X05279903)
- **Hennink, Kaiser & Marconi (2017), code vs. meaning saturation [V, abstract].** From 25 IDIs, "code saturation was reached at nine interviews… However, 16 to 24 interviews were needed to reach meaning saturation." In their words, code saturation means you have "heard it all" and meaning saturation means you "understand it all." — [Hennink et al., 2017, *Qualitative Health Research*](https://doi.org/10.1177/1049732316665344)
- **Malterud, Siersma & Guassora (2016), "information power" [V, abstract].** "The more information the sample holds, relevant for the actual study, the lower amount of participants is needed." The sample size needed depends on (a) the study aim (narrow or broad), (b) sample specificity, (c) use of established theory, (d) quality of dialogue and (e) analysis strategy (single-case or cross-case). — [Malterud et al., 2016, *Qualitative Health Research*, 26(13), 1753–1760](https://doi.org/10.1177/1049732315617444)
- **Guest, Namey & McKenna (2017), focus groups [V, abstract].** In 40 FGs, "more than 80% of all themes were discoverable within two to three focus groups, and 90% were discoverable within three to six focus groups. Three focus groups were also enough to identify all of the most prevalent themes." The authors note that these figures differ from many "rule of thumb" recommendations. — [Guest et al., 2017, *Field Methods*, 29(1), 3–22](https://doi.org/10.1177/1525822X16639015)
- **Hennink, Kaiser & Weber (2019), stratified focus groups [V, abstract].** "Four focus groups were sufficient to identify a range of new issues (code saturation), but more groups were needed to fully understand these issues (meaning saturation)." On stratification: "one focus group per stratum was needed to identify issues; two groups per stratum provided a more comprehensive understanding of issues, but more groups per stratum provided little additional benefit." The six parameters they list are study purpose, type of codes, group stratification, number of groups per stratum, and type and degree of saturation. — [Hennink et al., 2019, *Qualitative Health Research*](https://doi.org/10.1177/1049732318821692)
- **Guest, Namey & Chen (2020), reporting saturation [V, abstract].** They propose an *a priori* stopping rule with three elements: **Base Size**, **Run Length** and **New Information Threshold**. They validate it by bootstrapping three IDI datasets. — [Guest et al., 2020, *PLOS ONE*, 15(5), e0232076](https://doi.org/10.1371/journal.pone.0232076)
- **AAPOR Task Force (2013) [V, PDF text]**, on small quota samples in pretesting. It cites Blair & Conrad (2011): quota samples of "as few as 5 to as many as 90" are needed to observe different outcomes, and "small samples sizes may miss a substantial percentage of problems." — [Baker et al., 2013, AAPOR report, p. ~81](https://aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13-2.pdf)

### Inferences
- **10 dealer IDIs (5 profiles × 2). Consistent but at the low end.** Ten interviews sit inside the 9–17 empirical range and near Guest et al.'s 12. They match *code* saturation, not *meaning* saturation (16–24). Information power favours InfoCar in several ways: the aim is narrow (appraisal and reconditioning cost practices), dealers are expert informants (high specificity), and the design uses established frameworks. That makes 10 defensible for the **pooled** dealer population.
- **2 per profile is only enough to *identify* issues within a profile, not to *compare* profiles.** Malterud's "cross-case analysis" dimension raises the number needed. By analogy with Hennink et al. (2019), where 1 unit per stratum identifies issues and 2 per stratum give comprehensive understanding, 2 per profile is the evidence-based **minimum** for cross-profile comparison. The course's "optimized" alternative of 1 per profile would sit below it. Suggested wording: plan 10, budget 2 reserve interviews, and apply a stopping rule (Guest et al., 2020): base of the first 6, run length of 2 more, and stop when new codes are ≤5% (the threshold values are illustrative, [NV], see Gaps). Report how many new codes the last interviews added.
- **2 FGs (1 private-seller group + 1 company-seller group). Weaker than the evidence.** One group per stratum only "identifies issues" (Hennink et al., 2019). Two to three groups in total reach about 80% of themes (Guest et al., 2017), and the systematic review range is 4–8 (Hennink & Kaiser, 2022). The minimal upgrade is **4 FGs (2 per seller type)**. If the budget allows only 2, label the FG stage "exploratory / input to questionnaire design," not "saturation."
- **A strength to state explicitly.** The qualitative stage feeds questionnaire design (sequential exploratory design). The bar for that use is lower than for stand-alone qualitative findings. Say so in the methods text.

### Gaps
- **Krueger & Casey [NV].** Commonly quoted guidance is to "plan three or four focus groups with each type or category of individual," with 5–8 participants per group in the 5th ed. and 6–10 in earlier editions. Not verified this session. Citation to check: Krueger, R. A., & Casey, M. A. (2015). *Focus groups: A practical guide for applied research* (5th ed.). SAGE. If confirmed, the draft's 6–8 per group is consistent, and 1 group per type is below the 3–4 rule.
- **Morgan [NV].** Commonly cited for "3–5 groups per project" (Morgan, D. L., 1997, *Focus groups as qualitative research*, 2nd ed., SAGE). Not verified.
- **Volume and pages [NV].** Not seen in this session for Hennink et al. 2017 (believed *QHR* 27(4), 591–608) or Hennink et al. 2019 (believed *QHR* 29(10), 1483–1496). The DOIs are verified.
- **Guest et al. 2020 thresholds [NV].** The exact recommended values (e.g., base 4–6, run 2–3, threshold ≤5%) were not confirmed in the full text.
- **Chilean dealers.** I found no evidence on saturation specific to B2B owner-managers or to Chilean SMEs.

---

## 2. Quantitative sample size: the "30 per cell" rule, subgroup minimums, finite population correction (FPC), and design effect from weighting

### Takeaway
"30 per cell" is a normal-approximation heuristic, not a precision standard. At p = 0.5, n = 30 gives about ±18 pp. Practitioner floors for *reported* subgroups are typically 100 per segment (pricing) or 200 per subgroup (conjoint). The B2B FPC is justified, since n/N = 14.5% overall and 9.6–22.7% per cell. But the disproportionate weights give a **Kish design effect of about 1.14 (n_eff ≈ 88)**. The honest total margin is therefore **about ±9.8% with FPC, not ±9.1%**. Per-cell margins of ±15–16% are confirmed.

### Cited Findings
- **Origin of n ≥ 30.** I found no documented original source. A practitioner account traces it to *t*-to-*z* convergence at about 30 degrees of freedom: "a statistical footnote that hardened into a general-purpose sample size rule" [S]. — [MeasuringU, "Do Statistics Really Require 30 Participants?"](https://measuringu.com/do-statistics-really-require-30-participants/). A simulation preprint on ten distributions concludes the "n ≥ 30" rule is "both an over simplification and frequently wrong" [S, preprint, not peer-reviewed]. — [arXiv 2409.06413](https://arxiv.org/pdf/2409.06413)
- **Subgroup floors used by practitioners.**
  - Sawtooth Software, for conjoint: "300 respondents per study, 200 per subgroup" [V]. — [Halversen, 2020, Sawtooth blog](https://www.sawtoothsoftware.com/resources/blog/posts/sample-size-rules-of-thumb)
  - QuestionPro, for Van Westendorp and Gabor-Granger: at least 100 completes, or "at least 100 completes per segment" when comparing segments [S]. — [QuestionPro webinar page](https://info.questionpro.com/pricing-research-webinar-van-westendorp-gabor-granger)
  - An SPSS survey-tips document: "many analysts suggest that there should be at least 100 cases in each subgroup," and sample size should be based on "the minimum adequate sample size of the important subgroups" [S]. — [SPSS tips, ucema.edu.ar](https://ucema.edu.ar/~jd/Metodos/Clases/Tips.pdf)
  - A Q Research Software summary shows how widely minimums vary: "some… 25 or 30, some 100, and others suggest 200" [S]. — [Bock, 2019, Q Research Software](https://www.qresearchsoftware.com/what-sample-sizes-do-you-need-for-conjoint-analysis)
- **Sudman (1976) [V, as described by AAPOR].** Sudman tied required precision to how the data will be used. "Exploratory data gathering," which generates hypotheses, needs less precision than large policy data collections: a "fitness for use" test. — [Baker et al., 2013, AAPOR report, §8](https://aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13-2.pdf)
- **Own calc., from the draft's parameters (95%, p = 0.5, z = 1.96):**
  - **Cochran sample size with FPC:** n₀ = z²pq/e², then n = n₀ / [1 + (n₀ − 1)/N]. For N = 689: e = ±5% needs n = 247; e = ±8% needs 123; **e = ±9% needs 101**; e = ±10% needs 84. The draft's n = 100 matches a ±9% target.
  - **Sampling fractions:** overall n/N = 100/689 = **14.5%**. The draft's weights imply cell population shares of 49.8% / 28.4% / 21.8% (≈343 / 196 / 150 firms). Per-cell sampling fractions are then **9.6%, 16.9% and 22.7%**, all above the 5% threshold, so the FPC is warranted at both levels.
  - **Per-cell margins with FPC:** ±16.2% (1–2 purchases/month), ±15.6% (3–6), ±14.8% (7–27). Without FPC: ±17.1%, ±17.1% and ±16.8%. The draft's "±15–16%" is **confirmed**.
  - **Kish design effect from weighting** (weights 1.51 / 0.86 / 0.64 on n = 33 / 33 / 34): deff = n·Σw²/(Σw)² = 1 + CV²(w) = **1.136**, so **n_eff = 88**.
  - **Correct stratified margin for the total** (Σ W_h² · pq/n_h · (1 − f_h)): **±9.76%** with FPC and ±10.45% without. The draft's ±9.07% is the SRS-with-FPC figure, which ignores the weighting loss. Applying deff to that figure gives a similar result: 9.07% × √1.136 ≈ ±9.7%.
  - **B2C, n = 300:** ±5.66% if SRS and self-weighting. Per cell, n = 37–38 gives ±15.9% to ±16.1%. The **design effect depends on true cell shares**, which the draft does not give, so only illustrative values are possible. Equal allocation across 8 cells implies deff = H·ΣW_h². If the true mix is 70/30 private/company with even age bands, deff = 1.16, n_eff = 259 and the margin is ±6.1%. If it is 80/20 with age shares 40/30/20/10, deff = 1.63, n_eff = 184 and the margin is ±7.2%.
  - **Margin by cell size (p = 0.5, no FPC):** n = 30 → ±17.9%; n = 37 → ±16.1%; n = 50 → ±13.9%; n = 100 → ±9.8%; n = 200 → ±6.9%.

### Inferences
- **"≥30 per cell" (course rule).** The draft meets it, with 33–34 B2B and 37–38 B2C per cell. But the rule only makes the normal approximation reasonable. It says nothing about whether cell estimates are precise enough to rank or compare cells. At about ±16 pp per cell, only large differences between cells (roughly ≥ 20–25 pp for proportions) will be distinguishable. **Present cell-level results as directional and total-level results as the main estimates.** Relative to professional practice (100+ per reported segment), the draft is **weaker** at cell level and **acceptable** at total level.
- **Recommended honest wording for B2B (if firms are drawn at random within strata):** "n = 100 (33/33/34), disproportionate stratified allocation, weighted to the frame. Design effect from weighting ≈ 1.14 (effective n ≈ 88). Margin of error for a total proportion ±9.8 pp at 95% (with FPC, p = 0.5); ±15–16 pp within each stratum."
- **FPC is a strength only if the design is probabilistic.** It applies to sampling without replacement from an enumerated frame. If dealers are recruited by convenience or quota rather than drawn at random from the 689-firm list, the FPC and margin are *nominal* (see §3). Because a list frame exists, InfoCar could do a **random draw within each stratum, with documented replacements**. That would make its B2B margin of error legitimate, apart from nonresponse bias, and would be a real strength over most student projects.
- **B2C.** Equal cells (37–38) across unequal population shares will produce a design effect above 1 once results are weighted. Report effective n, or report unweighted cell results and a weighted total separately.

### Gaps
- **Sudman (1976), *Applied Sampling* (Academic Press) [NV].** The widely quoted rule is "100 or more units in each category of the major breakdowns and a minimum of 20 to 50 in the minor breakdowns." I could not verify the wording or page. Only catalog records confirmed the book.
- **Cochran (1977), *Sampling Techniques* (3rd ed., Wiley) [NV].** The statement that the FPC "can be ignored whenever the sampling fraction does not exceed 5 per cent and for many purposes even if it is as high as 10 per cent" (often cited as p. 25) was not verified online.
- **Kish (1965), *Survey Sampling* (Wiley), and Kish (1992), "Weighting for unequal Pᵢ," *Journal of Official Statistics*, 8(2), 183–200 [NV for volume and pages].** OpenAlex confirms the 1992 paper is reprinted in *Leslie Kish: Selected Papers* (Wiley, 2003). The formula deff ≈ 1 + CV²(w) is standard but was not read from the original.
- **Malhotra, *Marketing Research: An Applied Orientation* [NV].** It has a table of "usual sample sizes used in marketing research studies." From memory, problem-solving and pricing research uses a minimum of 200 and a typical 300–500, and focus groups a minimum of 6 groups and a typical 10–15. Not verified, and the figures may vary by edition.
- **Hair et al.** No specific subgroup rule was retrieved.
- **Agency reporting conventions [NV, no source found].** Examples are "do not report n < 30; flag n < 50" or "n ≥ 100 per subgroup."

---

## 3. Non-probability and quota sampling: can you report a "margin of error"?

### Takeaway
AAPOR's position is that a margin of *sampling* error is **not valid** for opt-in or non-probability samples. It encourages a model-based precision measure under **distinct terminology**, such as a credibility interval or model-based standard error, with stated assumptions. The ICC/ESOMAR Code (2025) requires disclosure of limitations, including gaps in population representation. InfoCar's B2C quota/CAWI sample should therefore not present "±5.7%" as a margin of error without heavy qualification.

### Cited Findings
- **AAPOR (2012) [V].** "It is impossible to develop statistically valid margins of sampling error from nonprobability surveys" such as opt-in online polls. A credibility interval "reflects the statistical uncertainty generated by a statistical model," and "if the underlying assumed model fails to hold, so too does the validity of the credibility interval." The public "should not rely on the credibility interval in the same way that it can with the margin of sampling error." The statement is dated 10/07/2012 on AAPOR's site. — [AAPOR statement on credibility intervals](https://aapor.org/statements/understanding-a-credibility-interval-and-how-it-differs-from-the-margin-of-sampling-error-in-a-public-opinion-poll/)
- **AAPOR Task Force on Non-Probability Sampling (2013) [V, PDF text].**
  - It quotes AAPOR's long-standing position that "reporting margin of sampling error with opt-in or self-identified samples is misleading," and agrees that this measure "is not appropriate for non-probability samples."
  - It still says users of non-probability samples "should be encouraged to report measures of the precision of their estimates, but… the set of terms be distinct from those currently used in probability sample surveys." Such precision "is a model-based measure."
  - It suggests replicate or pseudo-replicate samples, while noting that this approach "only estimates variance; biases in the estimates cannot be measured."
  - It also says researchers "should avoid the term 'response rate'." ISO 20252:2008 recommends **"participation rate"** instead.
  - The report devotes a full chapter to "fit for purpose."
  - Sources: [Baker et al., 2013, full report, June 2013](https://aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13-2.pdf); journal summary: [Baker et al., 2013, *Journal of Survey Statistics and Methodology*, 1(2), 90–143](https://doi.org/10.1093/jssam/smt008)
- **Quota sampling is "sample matching."** In the Task Force's words, "Quota sampling is one well-known and widely used method of sample matching." Quota cells "represent a model, a proxy" for the population, and calibration weighting is traditionally applied to quota samples [V]. — [Baker et al., 2013](https://aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13-2.pdf)
- **ICC/ESOMAR International Code (2025 revision; previous update 2016) [V, PDF text].**
  - Article 7 (Fit for Purpose): researchers "must design research that is fit for purpose." They must be "transparent about any limitations — such as potential gaps in data sources or population representation."
  - Researchers must "clearly distinguish between the findings, the researchers' interpretation of those findings, and any insights and conclusions."
  - Article 9 (Publishing Findings): results must not be "misleading," with "no undue selectivity."
  - Source: [ICC/ESOMAR International Code, 2025, English PDF](https://community.esomar.org/uploads/public/knowledge-and-standards/codes-and-guidelines/ICCESOMAR-International-Code_English.pdf)
- **Industry practice [S].** Ipsos reports Bayesian credibility intervals together with a statement that margin of error cannot be used for its online polls. — [Ipsos comment on AAPOR statement](https://www.ipsos.com/en-us/our-brave-new-world-ipsos-comment-aapors-statement-credibility-intervals)

### Inferences
- **Suggested honest phrasing for B2C** (adapt to Spanish): "The B2C sample is a non-probability quota sample (online panel plus intercepts). A margin of sampling error does not strictly apply. For reference only, a simple random sample of the same size (n = 300) would have ±5.7 pp at 95% (±16 pp per cell). Actual error may be larger because of self-selection and coverage bias, and weighting adds a design effect."
- **Use "participation rate" or "completion rate" for the panel component**, not "response rate" (AAPOR 2013, citing ISO 20252).
- **The B2B side can be stronger than B2C** if firms are drawn at random from the 689-firm list (see §2). It is then a probability design subject to nonresponse, and a margin of error is legitimate if nonresponse is reported. If recruitment is by convenience or referral, apply the same caveat as for B2C.
- **Course versus standard.** A student design that reports a margin of error for a quota sample *without* caveats is weaker than the AAPOR and ESOMAR standard. Adding the caveat makes it consistent.

### Gaps
- **ISO 20252:2019 [NV].** The ISO page returned 403. From background knowledge the title is "Market, opinion and social research, including insights and data analytics — Vocabulary and service requirements." It replaced ISO 20252:2012 and absorbed ISO 26362:2009 (access panels). The scope text was not verified; only the 2008 "participation rate" recommendation is verified, via AAPOR.
- **AAPOR Code of Professional Ethics and Practices (2021 revision) [not checked].** I did not check its disclosure wording on precision for non-probability samples.
- **ESOMAR/GRBN guideline wording on margin of error [not found].** The ESOMAR/GRBN *Guideline on Online Sample Quality* was not retrieved.

---

## 4. B2B research specifics: informant, one respondent per firm, response rates, modes, incentives

### Takeaway
Surveys of organisations and executives get much lower response rates than surveys of individuals: about **36%** at organisation level and about **32%** for executives, declining over time. Conventional incentives have shown **no reliable effect** for executives. Topical salience and sponsorship through the executive's network do help. For InfoCar this means contacting a large share of the 689-firm frame, using a screened decision-maker as the single informant per firm, and relying on face-to-face workplace visits and sector sponsorship rather than incentives.

### Cited Findings
- **Baruch & Holtom (2008) [V, abstract].** They reviewed 490 survey studies in 17 journals (2000, 2005). The average response rate was **52.7%** (SD 20.4) for data from individuals and **35.7%** (SD 18.8) for data from organisations. "The use of incentives was not found to be related to response rates." For studies of organisations, reminders were associated with *lower* response rates. Electronic modes did as well as mail or better. — [Baruch & Holtom, 2008, *Human Relations*, 61(8), 1139–1160](https://doi.org/10.1177/0018726708094863)
- **Cycyota & Harrison (2006) [V, abstract].** A meta-analysis of 231 studies surveying executives (1992–2003) found response rates "declining over the period, yielding an overall 32% rate." "Of the various methods suggested to increase response rates in other populations, none were found to be effective for executives." However, "topical salience and sponsorship by an organization or person in the executive's social networks did bring about response rate increases." — [Cycyota & Harrison, 2006, *Organizational Research Methods*, 9(2), 133–160](https://doi.org/10.1177/1094428105280770)
- **Holtom, Baruch, Aguinis & Ballinger (2022) [V, abstract].** Across 1,014 surveys in 17 journals (2010–2020), average response rates rose from 48% (2005) to 53% (2010), 56% (2015) and **68% (2020)**. Predictors were research design (e.g., data-collection medium), participant motivation (e.g., incentives) and researcher motivation. The authors propose a "response-rate validity assessment framework": the researcher–participant relationship, participant qualifications, survey length and complexity, and cultural context. — [Holtom et al., 2022, *Human Relations*, 75(8), 1560–1584](https://doi.org/10.1177/00187267211070769)
- **Key informants.** Kumar, Stern & Anderson (1993) is the classic reference on using key informants in inter-organisational research [V, bibliographic record only]. — [Kumar et al., 1993, *Academy of Management Journal*, 36(6), 1633–1651](https://doi.org/10.2307/256824)
- **ICC/ESOMAR Code [V].** A data subject "may be a company or organisation" in some cases. Code obligations therefore extend to B2B respondents. — [ICC/ESOMAR Code, 2025](https://community.esomar.org/uploads/public/knowledge-and-standards/codes-and-guidelines/ICCESOMAR-International-Code_English.pdf)
- **Aguinis, Hill & Bailey (2019) [V, abstract].** These best-practice recommendations for organisational research cover sampling procedures, missing data and outliers. They stress *transparency* in reporting these choices. — [Aguinis et al., 2019, *Organizational Research Methods*](https://doi.org/10.1177/1094428119836485)

### Inferences
- **Contacts needed (own calc.).** To get n = 100 completes at a 32–36% response rate, InfoCar needs about **280–310 eligible firms contacted, 40–45% of N = 689**. At a pessimistic 20%, it needs **500 contacts (73% of the frame)**. The response-rate assumption and the contact plan belong in the methods section. The 7–27 purchases/month stratum (≈150 firms, 34 needed = 23%) is the tightest: at 32% response, about 106 of its ≈150 firms (34 / 0.32 ≈ **71% of the stratum**) would need to be contacted. At 20% response it would need 170 contacts, more firms than the stratum has, so completing this cell may require near-census outreach or a lower target.
- **Higher rates in recent academic samples (Holtom et al., 2022) partly reflect convenience and relationship-based recruitment.** Do not use them as a planning benchmark for cold B2B outreach.
- **Mode.** Face-to-face visits to the dealer's lot plus CATI back-up is a reasonable *mixed-mode* choice for SME owners. It also allows the appraisal card task. The evidence that incentives don't work for executives (Cycyota & Harrison; Baruch & Holtom) suggests leaning on **topical salience** ("reconditioning costs you money") and **sponsorship**, such as an introduction via a dealer association or the university, rather than cash incentives. A results summary offered in exchange for participation is a salience-type incentive.
- **One informant per firm.** Use a screener for the person who appraises and decides purchases, who is usually the owner or manager. Record the informant's role and tenure as a competence check. This reduces the risk that the "firm" answer reflects a non-decision-maker.

### Gaps
- **Dillman, Smyth & Christian (2014), *Internet, Phone, Mail, and Mixed-Mode Surveys: The Tailored Design Method* (4th ed., Wiley) [NV].** Its recommendations (multiple contacts, mixed-mode sequencing, token pre-paid incentives, social-exchange framing) were not verified this session.
- **Kumar et al. (1993) content [NV].** The content (informant competency, single versus multiple informants, perceptual agreement) was not read; only the record is verified.
- **Local benchmarks.** I found no response-rate data specific to Chilean SMEs or used-car dealers.
- **Anseel et al. (2010), *Journal of Business and Psychology*, 25(3), 335–349 ([DOI](https://doi.org/10.1007/s10869-010-9157-6)).** A meta-analysis of response rates 1995–2008. The abstract was not retrieved, so no figures are cited.

---

## 5. Choice experiment / conjoint: sample-size rules and the InfoCar within-subject appraisal task

### Takeaway
InfoCar's task (4 vehicle cards appraised blind vs. with repair cost known) is a **two-condition within-subject experiment**, not a conjoint or DCE. Conjoint rules of thumb therefore apply only loosely. Treated as a paired comparison, **n = 100 dealers detects a standardized within-subject effect of about dz ≥ 0.28** at 80% power. Within a 33-dealer stratum it detects only dz ≥ 0.50. Precision is adequate for the total, not for per-stratum effects. The bigger risk is **order or carry-over bias**, because a dealer cannot "un-know" the repair cost.

### Cited Findings
- **Sawtooth (Johnson/Orme-type rule) [V; formula image not seen].** "Every attribute level should appear a minimum of 500 times" across the sample. The variables are c = maximum levels in an attribute, t = number of tasks, a = concepts per task (excluding "None"). This gives n ≥ 500·c/(t·a). 500 exposures are "the bare minimum in most cases," and "it is safer to plan for 1000 exposures per level." The rule is "not considered optimal" for Hierarchical Bayes. Separate heuristic: 300 per study, 200 per subgroup. — [Halversen, 2020, Sawtooth Software](https://www.sawtoothsoftware.com/resources/blog/posts/sample-size-rules-of-thumb)
- **de Bekker-Grob, Donkers, Jonker & Stolk (2015) [V, abstract].** Existing theory "does not address the issue of minimum sample size requirements in terms of the statistical power of hypothesis tests on the estimated coefficients." The paper offers a step-by-step power-based guide. A secondary summary says that in their review of 69 healthcare DCEs, more than 70% did not clearly report a sample-size method; the minimum depends on the hypotheses tested [S]. — [de Bekker-Grob et al., 2015, *The Patient*, 8(5), 373–384](https://doi.org/10.1007/s40271-015-0118-z); [IDEAS record](https://ideas.repec.org/a/spr/patien/v8y2015i5p373-384.html)
- **Lancsar & Louviere (2008)** is the standard DCE design guide [V, bibliographic record only]. — [Lancsar & Louviere, 2008, *PharmacoEconomics*, 26(8), 661–677](https://doi.org/10.2165/00019053-200826080-00004)
- **Own calc. (paired t-test, α = .05 two-sided, power 80%, minimum detectable dz = (z₀.₉₇₅ + z₀.₈)/√(n − 2)):**
  - n = 100 → **dz ≈ 0.28**
  - n_eff = 88 → dz ≈ 0.30
  - n = 33 per stratum → **dz ≈ 0.50**
  - Johnson–Orme applied literally (c = 2 conditions, a = 1 card rated at a time): t = 4 gives **n ≥ 250**; t = 8 (4 cards × 2 conditions) gives **n ≥ 125**. Under that rule, 100 dealers falls short. The rule was built for estimating part-worths in choice tasks, not for a two-mean comparison.

### Inferences
- **For the stated purpose (does knowing the repair cost change the appraisal or offer price?), n = 100 with 4 cards each is sufficient** to detect a small-to-moderate effect in the pooled sample. Using all 4 cards in a mixed model (cards nested in dealers) increases power, though less than ×4 because of intra-dealer correlation. Per-stratum effects are underpowered unless they are large.
- **Design weakness to fix.** In a pure within-subject "blind first, then with cost" sequence, the information treatment is confounded with order and repetition: anchoring, fatigue, and the cost revealing the answer. Standard remedies:
  - **Split cards across conditions.** Each dealer appraises 2 cards blind and 2 with cost, with assignment rotated or counterbalanced across dealers (Latin square), so each card appears equally in both conditions.
  - **Or keep the same cards** but add a between-subject control group that sees cost on the first pass.
  - Pre-register the primary comparison: mean difference in offer price, or % change.
- **Wording for the document.** Call it a "within-subject information experiment (paired comparison)," not a "conjoint." Justify n with a power statement ("detects dz ≥ 0.28 with 80% power at α = .05"), not with "30 per cell."

### Gaps
- **Rules that de Bekker-Grob et al. (2015) review [NV].** Full text not read. From memory they include Pearmain et al. (1991) "> 100" for DCEs, Lancsar & Louviere (2008) "> 20 respondents per questionnaire version," Johnson & Orme, and Marshall et al.'s observed mean of about 200. Verify before citing.
- **Original sources [NV].** Johnson & Orme (1996/2003) Sawtooth technical paper and Orme (2010/2020), *Getting Started with Conjoint Analysis* (Research Publishers), were not retrieved. The Sawtooth "Sample Size Issues for Conjoint Analysis Studies (2019)" page loaded without body text.
- **Within- vs. between-subject methodology [NV].** Suggested citation: Charness, Gneezy & Kuhn (2012), "Experimental methods: Between-subject and within-subject design," *Journal of Economic Behavior & Organization*, 81(1), 1–8, https://doi.org/10.1016/j.jebo.2011.08.009. Not verified this session.

---

## 6. Van Westendorp Price Sensitivity Meter (PSM): sample size per segment

### Takeaway
No academic or Sawtooth minimum was found. Practitioner guidance ranges from about 30 (enough to draw the chart) to **100 per segment** (the most common floor for comparisons) to 150–300 (vendors). Academic evidence shows the PSM is biased by its hypothetical nature but correlates well with incentive-aligned willingness-to-pay. InfoCar's **B2B total (n = 100) meets the common floor; per-stratum PSM (n = 33) does not**. For B2C, run PSM at total or seller-type level (≈150 each), not by the 8 cells.

### Cited Findings
- **Kloss & Kunter (2016) [V, abstract].** "The Van Westendorp Price Sensitivity Meter yields biased results because of its hypothetical nature and its focus on minimum customer resistance." However, it is "a method of high predictive quality for eliciting willingness-to-pay since the measurement results are comparable to those of the incentive-aligned Becker-DeGroot-Marschak mechanism." — [Kloss & Kunter, 2016, *European Journal of Management*, 16(2), 45–54](https://doi.org/10.18374/EJM-16-2.4)
- **QuestionPro [S].** At least 100 completes; "at least 100 completes per segment" if comparing segments. — [QuestionPro](https://info.questionpro.com/pricing-research-webinar-van-westendorp-gabor-granger)
- **SurveyMonkey [S].** A minimum of 30 completed responses is needed to generate the PSM chart (a tool requirement, not a precision standard). — [SurveyMonkey PSM template](https://www.surveymonkey.com/categories/templates/price-optimization-van-westendorp/)
- **Other vendor and blog advice [S, low authority].** Recommendations range from about 30–50 per segment to 150–200, or 200–300 when cutting by firm size. — [CleverX](https://cleverx.com/blog/pricing-sensitivity-survey-van-westendorp-guide); [StackMatix](https://www.stackmatix.com/blog/willingness-to-pay-research)

### Inferences
- **B2B (SaaS subscription price).** Use PSM on the total n = 100 (or n_eff ≈ 88 weighted), and present the acceptable range and the optimal and indifference points as approximate. Per-stratum PSM curves at n ≈ 33 will be unstable. Show them only as directional, or not at all.
- **B2C (per-report price).** Total n = 300 is comfortably above common floors. Seller-type splits (≈150) are acceptable. The 8 cells (≈37) are too small.
- **Pair PSM with a purchase-intent question at the key price points** (the Newton–Miller–Smith extension) or a Gabor-Granger ladder. This turns the acceptable range into demand estimates and addresses PSM's known lack of a demand curve.

### Gaps
- **Original source [NV].** Van Westendorp, P. H. (1976). NSS-Price Sensitivity Meter (PSM): A new approach to study consumer perception of prices. *Proceedings of the 29th ESOMAR Congress*, Venice, pp. 139–167. Not verified.
- **Sawtooth, Ipsos and Qualtrics PSM sample-size guidance [not found].** I did not locate Sawtooth's own PSM sample-size statement, so it should not be quoted. Ipsos and Qualtrics guidance was not retrieved either.

---

## 7. Online panel quality, data cleaning, and intercept or booster samples

### Takeaway
ESOMAR's 2021 "Questions to Help Buyers of Online Samples" (37 questions) and AAPOR's 2023 report on data-quality metrics are the reference frameworks. Evidence shows that the common checks, attention checks and speeder flags, catch only a minority of bogus cases. Use several checks and disclose removal rates. No authoritative "typical % removed" figure was found.

### Cited Findings
- **ESOMAR (2021) [S, secondary sources].** *Questions to Help Buyers of Online Samples* has 37 questions in six categories: company profile; sample sources and recruitment; sampling and project management; data quality and validation; policies and compliance; and a new metrics section. It replaces the 2012 "28 Questions." One summary notes it does not cover B2B samples. — [Commbox summary](https://commbox.org/document/questions-to-help-buyers-of-online-samples); [EMI Research](https://emi-rs.com/blog/intellicast-s4e27-esomars-questions-for-users-buyers-of-online-samples-with-judith-passingham/); example supplier answers: [Ipsos](https://www.ipsos.com/en-us/node/885541)
- **AAPOR Task Force (2023) [S].** *Data Quality Metrics for Online Samples: Considerations for Study Design & Analysis* proposes quality metrics that go beyond response and cooperation rates to the "underlying representativeness and utility of online samples." — [AAPOR report page](https://aapor.org/reports/data-quality-metrics-for-online-samples-considerations-for-study-design-analysis/)
- **Pew Research Center (2020) [S, Pew page excerpt].** Attention checks and speeder flags "seem to help but appear to be far from sufficient," and about **87% of bogus cases were not speeders**. — [Pew Research Center, 2020-02-18](https://www.pewresearch.org/methods/2020/02/18/two-common-checks-fail-to-catch-most-bogus-cases/)
- **Geisen & Poole (AAPOR 2022 presentation, Qualtrics) [S].** Seeing an attention check was associated with fewer later quality issues. The study was limited to non-probability panels. — [AAPOR 2022 slides](https://aapor.org/wp-content/uploads/2023/01/5887-Are-You-For-Real-Geisen-Resource1.pdf)
- **AAPOR (2013) [V].** Quota and opt-in samples rely on modelling assumptions. Calibration weighting is traditionally applied to quota samples. — [Baker et al., 2013](https://aapor.org/wp-content/uploads/2022/11/NPS_TF_Report_Final_7_revised_FNL_6_22_13-2.pdf)

### Inferences
- **For InfoCar's CAWI, define the cleaning rules in advance.**
  - Speeders: e.g., completion time < 1/3 of the median.
  - Straight-lining on grids.
  - At least one instructed-response attention item.
  - Logical-consistency checks: car age vs. year, seller type vs. how the car was bought.
  - Duplicate or IP checks.
  - Open-ended gibberish.
  - Report how many cases each rule removed. **Over-recruit by about 10–20%** to absorb removals. This is a planning assumption, not a sourced norm.
- **Intercepts at notaries and inspection plants (plantas de revisión técnica) work as a booster for hard-to-reach cells**, such as buyers from companies or of older vehicles.
  - Document them as a separate source, with their own counts, and keep them in their own sub-stratum.
  - Check for mode effects: an interviewer-administered intercept differs from self-administered CAWI, especially on income and price questions.
  - Weight back to target shares.
  - Booster cases inflate the weighting design effect, so recompute deff (see §2).
- Because ESOMAR's buyer questions reportedly exclude B2B, they are relevant **only to the B2C panel**, not to the dealer survey.

### Gaps
- **Typical removal rates.** No authoritative source gives the typical % of panel completes removed in cleaning. Industry anecdotes (e.g., 10–30%) were not verified, so no figure is given.
- **Booster samples.** No primary methodological source on booster samples was retrieved (e.g., Kish's disproportionate stratification, or ONS and NatCen booster practice).
- **Official text not read.** I did not read the official ESOMAR 2021 PDF or the full AAPOR 2023 report.

---

## 8. Ethics: ICC/ESOMAR International Code (consent, anonymity, data minimisation)

### Takeaway
The current **ICC/ESOMAR Code is the 2025 revision** (13 articles; previous update 2016). It requires voluntary, informed participation with withdrawal at any time, **data minimisation**, protection of personal data, and a **clear separation between research and non-research (sales) activities**. That last point matters because InfoCar is a startup surveying its own prospective customers. Asking income anonymously is consistent if it is necessary and collected in bands.

### Cited Findings
- **Articles, edition and scope [V, PDF text].** © ICC/ESOMAR 2025. The code says it has "been revised several times… with the most recent update in 2016. This 2025 Code revision…" The articles are: 1 Duty of Care; 2 Children, Young Persons and Other Vulnerable Individuals; 3 Data Minimisation; 4 Primary Data Collection; 5 Use of Secondary Data; 6 Data Protection and Privacy; 7 Fit for Purpose; 8 Transparency; 9 Publishing Findings; 10 Professional Responsibility; 11 Legal Responsibility; 12 Compliance; 13 Implementation. — [ICC/ESOMAR International Code, 2025](https://community.esomar.org/uploads/public/knowledge-and-standards/codes-and-guidelines/ICCESOMAR-International-Code_English.pdf)
- **Article 1 [V].** Researchers must "maintain a clear distinction between research and non-research activities." "Data subjects must be informed of any non-research activity — for example promotional, commercial or customer experience follow-up — before data collection begins. Separate consent must be obtained for non-research purposes." — [ICC/ESOMAR Code, 2025](https://community.esomar.org/uploads/public/knowledge-and-standards/codes-and-guidelines/ICCESOMAR-International-Code_English.pdf)
- **Article 3 [V, partial text].** "Researchers must limit the collection and/or processing…" of personal data. The rest of the sentence was truncated in extraction; the article sets the data-minimisation principle. — same source
- **Article 4 [V].** "Researchers must ensure that participation is voluntary and based on clear and accurate information about the general purpose and nature of the research." "Researchers must allow data subjects to withdraw from the research at any time. Upon withdrawal, all personal data collected must be deleted," where feasible. — same source
- **Definitions [V].** Consent means "freely given, specific and informed indication…" A data subject may be "a company or organisation." The Code applies to research "both qualitative and quantitative, including those using self-service platforms." — same source
- **Articles 7 and 9 [V].** Fit for purpose, transparency about limitations, and non-misleading publication (see §3). — same source

### Inferences
- **InfoCar-specific obligations:**
  - **Separate any lead-generation from the research.** Do not use interview or survey contacts to sell InfoCar unless separate, explicit consent is collected (Article 1).
  - **Recording consent** for IDIs and FGs. Anonymise quotes by profile ("dealer, 7–27 purchases/month"), not by firm name. With only about 150 firms in the top stratum, firm-identifying detail could re-identify respondents.
  - **Income and socioeconomic level:** ask only if the analysis needs it (data minimisation). Use bands, make it optional with a "prefer not to say" option, and store it unlinked from contact data. Asking it "anonymously" is consistent with the Code.
  - **Intercepts at notaries and inspection plants** need the site operator's permission and an on-the-spot information script (purpose, voluntariness, withdrawal).
  - **Screen out minors** in B2C (Article 2).

### Gaps
- **Article 3 full text and Article 6 specifics** (anonymisation, retention, cross-border transfer) were only partly extracted. Check the PDF directly before quoting.
- **Chile-specific rules [NV].** Chile's personal-data law (Ley 19.628, and the new Ley 21.719 of 2024 with its implementation date) and the university's ethics-committee requirements were not checked in this session. They may impose additional consent or registration duties.
- **Other codes not checked:** the MRS (UK) Code of Conduct and the Insights Association Code.
