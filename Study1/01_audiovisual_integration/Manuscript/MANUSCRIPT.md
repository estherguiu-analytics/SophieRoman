# Manuscript — Effect of Oral Proprioceptive Stimuli on Auditory-Visual Integration

| | |
|---|---|
| **Project** | SophieRoman / Study1 |
| **Question** | 01_audiovisual_integration |
| **Plan** | `../ANALYSIS_PLAN.md` (`draft — awaiting agreement`) |
| **Status** | `under revision` |
| **Target journal** | ⚠️ not recorded |
| **Last updated** | 2026-08-17 |
| **Client summary to send** | `revisions/analysis_summary.md` |
| **Current draft** | `drafts/Effect of Oral Proprioceptive Stimuli on Auditory-EGH.docx` |
| **Submitted version** | ⚠️ not on disk — the draft carries Esther's comments, so it is not the submitted file |

Registered ClinicalTrials.gov **NCT07051460**, 25/06/2025, **retrospectively**. Reported per
STROBE.

## 1. Where every number comes from

Rebuilt from raw on 2026-08-10 by `src/reconcile_published_counts.Rmd` →
`outputs/tables/reconciliation.csv`.

| Number in paper | Reproduces? | Output | Plan § |
|---|---|---|---|
| 0/38 baseline, no VS without stimuli | screening phase — enters no comparison; not in the data file, so untraceable | — | §2a.5 |
| 4/38 (10.5%) never VS | ✅ | reconciliation.csv | §5.2 |
| 34/38 (89.5%) any VS | ✅ | " | " |
| 23/38 (60.5%) VS with sound | ✅ | " | " |
| 31/38 (81.6%) VS with OPS | ✅ | " | " |
| 3/38 sound only · 11/38 OPS only · 20/38 both | ✅ | " | " |
| 18/23 elimination of sound-induced VS | ✅ ✅ | " · **and independently as the `regulador` count**, condition_classification_counts.csv | §5.3 · §9 |
| 11 eliminated by both DS and COS | ✅ | " | " |
| **5 by DS only / 2 by COS only** | ✅ **corrected 2026-08-18 — the draft says 5 and 2** | " | " |
| **Spatial concordance 12 exact / 5 partial / 3 none** | ❌ **irreproducible** | " | §9.1 |
| **COS–DS concordance 4 / 5 / 3** | ❌ **irreproducible** | " | §9.1 |

### What the reconciliation established

**The paper's central narrative reproduces exactly.** Every prevalence figure and the
headline 18/23 rebuild from the raw data on the first attempt. That is the bulk of Results
sections 1 and 2, and it is sound.

**Two things do not.**

1. ~~**The elimination split is wrong in the manuscript by one participant each way.**~~
   ✅ **Withdrawn 2026-08-18, after the draft was read in full.** `drafts/…-EGH.docx` prints
   **5 by DS only and 2 by COS only** in the Abstract (¶12), the Results (¶148–149, ¶189) and
   Figure 5. Data, recount and draft all agree; the `6`/`1` recorded as "manuscript" in
   `reconciliation.csv` matches nothing on disk. **Nothing needs correcting in the paper**, and
   the correction has been removed from the client summary. ⚠️ The submitted version is still
   not on disk, so ask Sophie which version those figures came from before editing the
   hardcoded values in `reconcile_published_counts.Rmd` — same question as the `12/5/3` spatial
   concordance below.
2. **Neither concordance analysis reproduces under any reading.** The rebuild, the manuscript
   and the recount give three different answers:

   | | Manuscript | Recount | Rebuild |
   |---|---|---|---|
   | Spatial: exact / partial / none | 12 / 5 / 3 | 2 / 12 / 6 | 7 / 12 / 1 |
   | COS–DS: total / partial / none | 4 / 5 / 3 | 5 / 3 / 3 | 5 / 5 / 1 |

   The cause is definitional, not arithmetic. "Partial concordance (at least 50% of the
   drawings)" never says 50% *of what* — of the sound-induced set, or of the union. Both were
   computed; neither lands on the published figures. **Sophie must supply the exact
   operational definition before either analysis can be reported.** Until then these two
   results cannot go into a revision.

#### ⚠️ Correction to the table above, 2026-08-17 — the draft was read in full

The draft `drafts/…-EGH.docx` contains **exactly one** concordance analysis: the anatomical
COS↔DS one, Results ¶178, **5 complete / 3 partial / 3 none**. That changes the picture:

| | Draft ¶178 | Recount | Reviewer 1's letter | Rebuild |
|---|---|---|---|---|
| COS–DS concordance | **5 / 3 / 3** | **5 / 3 / 3** | **5 / 3 / 3** | **5 / 3 / 3** ✅ |

✅ **Resolved 2026-08-17 — all four agree.** Esther read the rule off ¶178 and Fig. 2: all three COS
slots judged, a slot matching iff the COS eliminated **and at least one** anatomical equivalent did.
Asserted in `reviewer_requested_tests.Rmd` §6b. Wilson intervals: complete 45.5% [21.3, 72.0],
partial and none 27.3% [9.7, 56.6] each. **This analysis is unblocked and may go into the
revision.** ⚠️ The published concordance is *positive co-occurrence* (21/25 = 84.0% [65.3, 93.6]),
not the two-way agreement that kappa measures — one sentence is needed if both are reported.

**Three independent sources agree.** The `4 / 5 / 3` recorded as "manuscript" in
`reconciliation.csv` appears to be a transcription error, and the `12 / 5 / 3` "spatial
concordance" attributed to the manuscript **does not appear in the draft at all** — there is no
same-drawings analysis in it. So the earlier reading, that the manuscript and recount disagreed
with each other, was wrong: they agree, and only the rebuild differs.

The hardcoded values in `reconcile_published_counts.Rmd` are left unchanged for now, because it
cannot be ruled out that a previous session read the **submitted** version, which is not on
disk. ⚠️ **Ask Sophie which version those figures came from**, then correct that table once.

**The definition is also better than we thought.** ¶178 defines partial concordance as
*"matching effects for some but not all COS conditions"* — about which stimuli matched, not
about 50% of the drawings. Three readings of that were implemented on 2026-08-17
(`reviewer_requested_tests.Rmd` §6b): 8/0/3, 2/6/3 and 5/5/1. **None reproduces 5/3/3**, so the
concordance counts remain blocked. But reading E reproduces the earlier 5/5/1 rebuild exactly,
which confirms that computation was correct rather than buggy.

### A third endpoint, new at revision — `perturbador`

Added 2026-08-17 from Esther's operational rule; `ANALYSIS_PLAN.md` §9. It is **not a
published number**: the word appears nowhere in the current draft, the reviewer letter, or the
Spanish recount, all three of which were searched. So it has nothing to reconcile against, and
it enters the paper — if it enters at all — as a new exploratory analysis.

| Number | Source | Status |
|---|---|---|
| 23/38 eligible for `regulador`, 15/38 for `perturbador` | condition_classification_counts.csv | disjoint denominators, fixed by `E1` |
| 18/23 ever `regulador` | " | ✅ identical to the published elimination endpoint |
| **13/15 ever `perturbador`** | " | ⚠️ **not to be reported as a finding** — see below |
| 44/80 perturbador classifications that persisted without sound | collapse_conditions_and_classify.html §5 | ⚠️ selected subgroup, later phase, confirm-only |

⚠️ **Why 13/15 must not be written as evidence of disruption.** The perturbador criterion is a
disjunction — one image of twelve, across eleven stimuli, so 132 binary cells — while the
regulador criterion is a conjunction of all twelve. At a per-cell instability of only 1%, a
132-cell disjunction fires for ~73% of people on its own. 87% is what that criterion produces
whether or not oral stimulation does anything, and `E1` was measured once so the instability
cannot be estimated (`ANALYSIS_PLAN.md` §2a.8–9). Two consequences for the text:

- The regulador and perturbador rates **may not be compared or summed** — different
  denominators, different criterion shapes.
- "Perturbador" and "regulador" are **dispositional nouns**, naming a trait in the
  participant. On one unreplicated session they claim a stability the data cannot support.
  Same overreach as "eliminates" and "modulates"; if these labels are used, they describe an
  observed pattern in one session, not a participant type.

## 2. What the paper claims vs what the design supports

**Estimand as reported:** the paper claims oral proprioceptive stimulation *eliminates* and
*modulates* sound-induced visual change, and that the findings "support functional sensory
interactions between the visual and stomatognathic systems".

**What the design supports:** a within-participant association between stimulus condition and
self-reported VS, in a fixed, unrandomised order, without blinding or a sham, on a subjective
binary outcome of unknown reliability.

**Confirmatory or exploratory:** exploratory throughout. Nothing was pre-specified.

**Pre-specified or retrospective:** retrospective. The registration says so; the analysis plan
says so. ⚠️ **The word "pre-specified" may not appear in the revision.**

## 3. AI use and disclosure

⚠️ **Target journal unknown, so its policy has not been checked.** Fill before submission.

⚠️ **Updated 2026-08-17. The previous version of this table was no longer accurate** — it said
AI was "not used for interpreting findings", and by then it had been used to draft limitation
wording and response-letter text, which is interpretive writing. Corrected below, because an
inaccurate disclosure is worse than a broad one.

| Used for | Tool | Which parts | Disclosable |
|---|---|---|---|
| Rebuilding published counts from raw data | Claude Code (Opus 5) | `src/reconcile_published_counts.Rmd` | per journal policy |
| Drafting the analysis plan | Claude Code (Opus 5) | `../ANALYSIS_PLAN.md` | per journal policy |
| Deriving the collapsed datasets and the regulador/perturbador classification | " | `src/collapse_conditions_and_classify.Rmd` | " |
| Running the added inferential analyses — Wilson intervals, exact McNemar, paired risk differences, exact binomial, GLMM, agreement/kappa, Cochran's Q | " | `src/prevalence_ci_and_paired_contrasts.Rmd`, `src/reviewer_requested_tests.Rmd` | " |
| Producing all figures | " | `outputs/figures/` | " |
| **Drafting candidate wording** for the Limitations paragraph and the point-by-point reviewer response | " | `revisions/analysis_summary.md` §4–5 | " |

**Not used for:** writing the manuscript body text, or deciding which findings to report and how
to frame them — those decisions are Esther's and Sophie's. All drafted wording is a starting
point for Esther to edit, not final text.

⚠️ **AI is not an author**, and no part of this work may be described as independent statistical
review.

⚠️ **No part of this work may be described as independent statistical review.** The
`statistician-reviewer` and `data-auditor` agents are the same model re-reading its own work.
AI is not an author.

## 4. Limitations that must appear in the paper

This is a tracker, not the source. The limitations are stated once, in `../ANALYSIS_PLAN.md`
§2a; what this table records is whether each has actually reached the manuscript. The first
four are already partly there (¶202–205); the rest are additions.

- [x] Small convenience sample, 82% female, ages 20–29
- [x] No randomisation of phase or stimulus order
- [x] No operator or participant blinding
- [x] COS self-administered while DS was calibrated at 0.2 N
- [ ] **No sham or placebo condition**
- [ ] **The outcome's reliability was never measured** — the sound-only condition was
      presented once, so within-session stability is unknown
- [ ] **The elimination endpoint conditions on an earlier response**, so regression to the
      mean and response instability are not separable from a real effect
- [ ] **Condition is confounded with time** — a phase contrast is not a stimulus contrast
- [ ] The drawings' spatial layout was not recorded, so VS location is nominal only
- [ ] **Both classification labels condition on the same single `E1` measurement**, in mirror
      image, so response instability manufactures both categories (§2a.8)
- [ ] **The two criteria are asymmetric** — all-12 conjunction vs any-of-132 disjunction — so
      their rates are not comparable to each other (§2a.9)
- [ ] **The classification cannot see worsening in sound-responders**, who fall in the same
      category as no change at all (§2a.10)
- [ ] 🔴 **The oral conditions had ~11× more chances to be positive than the sound condition**,
      and sound was never repeated to match. Identified by Esther 2026-08-17, before the tests
      were read (§2a.13). The reviewer did not raise it. **Not volunteering it in the reply is
      defensible; printing the collapsed comparisons in the paper without it is not.**

## 5. Deviations and re-runs after results were first produced

| Date | What changed | Effect on the paper |
|---|---|---|
| 2026-08-10 | Counts rebuilt from raw for the first time | Elimination split corrected 6/1 → 5/2, including in the abstract. Both concordance analyses suspended pending definitions. |
| 2026-08-17 | Regulador / perturbador classification built from Esther's rule | `regulador` independently reproduces the published 18/23, strengthening §1. `perturbador` is new to the paper and withheld as a finding pending a stability estimate. Three limitations added to §4. |
| 2026-08-18 | **The 6/1 → 5/2 "correction" withdrawn** after the draft was read against the reconciliation table | Nothing to change in the paper. The draft already prints 5/2 in Abstract, Results and Figure 5. `reconciliation.csv` carries a `manuscript` value matching no source on disk; left as-is pending the submitted-version question. |
| 2026-08-18 | Client summary rewritten around H1 / H2 / H3, with two new figures | No effect on any number. Three text corrections still stand for the revision: the *"Of these 34"* percentages (¶118–121), the 47.3%-of-38 denominator (¶146, Abstract), and "OPS" naming both phase 3 and phase 4. |

## 6. Reviewer responses

**Reviewer 1 — Lihan Chen.** ⚠️ The letter on disk is **incomplete**: it begins at a point
numbered "2" and contains a literal `(.....)`. Points 1 and 3+ have not been seen, and whether
other reviewers commented is unknown. Scope agreed with Esther on 2026-08-10 is the
statistical critique only; APA formatting and the expanded methods description are Sophie's.

| # | Reviewer point (verbatim, abridged) | Class | Needs new analysis? | Script | Output | Response drafted |
|---|---|---|---|---|---|---|
| 2.1 | "no inferential statistical tests are reported anywhere in the paper" | new analysis | ✅ **run** | `reviewer_requested_tests.Rmd` · `prevalence_ci_and_paired_contrasts.Rmd` | manuscript_percentages_wilson.csv · collapsed_comparisons.csv · elimination_benchmark.csv | no — ⚠️ **see §7 and §8**. `glmm_estimates.csv` is **not** cited to the reviewer: analysis 5 was withdrawn from the revision on 2026-08-17 |
| 2.2 | "no test (e.g. McNemar's test for paired proportions, chi-square tests, or Cochran's Q across the four phases) is performed" | new analysis + decline in part | ✅ **McNemar run**, **Cochran's Q declined** | " | paired_contrasts.csv | no — McNemar p = .24–1.00, all BH-adjusted p = 1.00 |
| 2.3 | concordance "presented as raw counts with no measure of agreement (e.g. Cohen's kappa) or confidence intervals" | ✅ **fully answered** — counts reproduce, intervals and kappa supplied | yes, all run | `reviewer_requested_tests.Rmd` §6b | agreement_kappa.csv · concordance_readings.csv | ✅ draft text in `revisions/analysis_summary.md` §4 |
| 2.3b | "The comparison of DS vs. COS efficacy … no confidence intervals" | ✅ **run** | yes | " | collapsed_comparisons.csv | no — DS 69.6% [49.1, 84.4] vs COS 56.5% [36.8, 74.4], RD +13.0 [−8.5, +32.8], p = .45 |
| 2.4 | "No confidence intervals are provided for any of the reported proportions, and no effect sizes are given" | new analysis | ✅ **run** | `prevalence_ci_and_paired_contrasts.Rmd` | prevalence_ci.csv · prevalence_with_ci.png · paired_risk_difference_forest.png | no |
| 2.5 | "justify the adequacy of the sample size (a power analysis or an explicit statement that the study is exploratory)" | text + concede | no — precision, **never post-hoc power** | — | the achieved intervals in prevalence_ci.csv **are** the answer: ±15 pts on a single proportion, ±20 pts on a paired difference | no |
| 2.6 | "the statement that the findings 'support functional sensory interactions' is not warranted by the evidence shown" | concede | no | — | — | no |
| 2.7 | "key experimental details (trial structure, randomization, blinding, reliability of the subjective outcome) are missing" | concede | no — none of these can be added retrospectively | — | — | no |

**Where the reviewer is right and the fix is more than they asked for:** point 2.1 is correct,
and the reason the study looks underpowered is that the manuscript collapses a 10,488-cell
grid to one binary per participant per phase. Modelling at stimulus level (874 rows) answers
the objection far better than adding tests to the collapsed table.

**Where the reviewer's named method is wrong, and must be answered rather than obeyed:**
Cochran's Q across the four phases compares one condition against the union of eleven
(`ANALYSIS_PLAN.md` §5); Cohen's kappa at n = 11 with near-degenerate marginals returns a
near-zero value alongside high raw agreement. Both refusals need the reasoning and the
substitute in the letter — see the `reviewer-response` skill.

**What no analysis can answer:** points 2.7 and much of 2.6. Fixed order, absent blinding,
absent sham and an outcome of unknown reliability are design facts. They are conceded in
Limitations and the claims narrowed to match.

## 6b. The client-facing summary

**`revisions/analysis_summary.md`** — written 2026-08-17 for Sophie. States what was run, why,
the results, draft answers to each reviewer point, the Limitations text, and the three
outstanding questions. Embeds four figures. **This is the document to send her**;
`revisions/proposed_analysis_summary.md` is superseded and retained only as a dated record of
what was proposed before results were seen.

Two findings new to this project, both from the per-stimulus view:

1. **Taken individually, every one of the eleven oral stimuli produced a pseudo-scotoma in fewer
   participants than sound did** — 34.2% to 55.3% against sound's 60.5%, none exceeding it. The
   published 81.6% is higher only because it is a union over eleven conditions. As the paper
   stands, 60.5% beside 81.6% invites the reader to conclude oral stimulation is the more
   disruptive input; the per-stimulus figures show it is not, and should be in the Results.
2. **No single stimulus accounts for the 78.3% elimination rate.** Out of the same 23
   participants: best 31V at 12/23 = 52.2% [33.0, 70.8]; worst 6/23 = 26.1% [12.5, 46.5] for
   three stimuli, which sit significantly *below* the 50% reference. The 78.3% depends on
   allowing any of eleven to count. **This is the finding that fixes what the Discussion may
   claim** — a person-specific search is supported; a general effect of oral proprioceptive
   stimulation is not.

⚠️ Intervals on the per-stimulus rows are 35–40 percentage points wide and overlap heavily, so
the stimuli must not be ranked in the paper. 31V is not "the most effective stimulus".

**Revised 2026-08-17 after Esther's review.** The client summary originally framed the
per-stimulus result as a paired contrast counting both improvement and worsening. Esther
corrected the scope: the claim concerns elimination among the 23 who had a sound-induced VS, and
the paired contrast imports the 15 who never reacted to sound. The elimination-rate version is
now what the summary reports; the paired contrast stays in
`prevalence_ci_and_paired_contrasts.Rmd` as a secondary analysis of the broader question.

## 7. ⚠️ The inferential result changes what the paper can conclude

Run 2026-08-17, `src/prevalence_ci_and_paired_contrasts.Rmd`. This is the answer to reviewer
point 2.1 and 2.4, and it does not go the way the manuscript's conclusions do.

**The reviewer asked for inferential statistics. They have now been run, and they do not
support the claim that oral proprioceptive stimulation eliminates or modulates sound-induced
visual change.**

| Contrast | Result |
|---|---|
| Paired risk difference, per stimulus (11) | −7.9 to +15.8 percentage points; **every 95% interval crosses zero** |
| Exact McNemar, per stimulus | p = .24 to 1.00; **none below .05 uncorrected**, all BH-adjusted p = 1.00 |
| Pooled GLMM, sound vs sound + oral | OR = 0.79 [0.32, 1.95], p = .61 — ⚠️ **withdrawn from the revision**, see below |
| DS vs COS, oral alone | OR = 0.70 [0.39, 1.26], p = .24, ⚠️ singular fit — question not resolvable |

⚠️ **The two GLMM rows are recorded but not reported to the journal.** Analysis 5 was withdrawn
on 2026-08-17: as fitted it tests the sound vs sound + oral contrast, which is the estimand
descoped the same day, and the paper is exploratory. The conclusion of this section does not
depend on it — the paired contrasts carry the same message independently.

**Why the paper's 18/23 and this null are both correct.** The elimination endpoint counts only
participants who improved. It is structurally unable to see the ones who worsened, who land in
`no clasificado`. The paired test counts both directions, and in this data they are nearly
equal — regulador against perturbador runs 9v8, 6v9, 6v7, 6v7, 8v8, 12v6, 9v9, 9v7, 8v5, 11v9,
10v5. So 18/23 is sound arithmetic answering a one-directional question. As soon as the
question becomes *"did pseudo-scotoma prevalence fall?"*, the answer is that this study cannot
show it did.

⚠️ **Do not swing to the opposite claim.** The intervals are ~40 percentage points wide. This
is an **uninformative** result, not evidence of no effect, and writing "oral stimulation has no
effect on visual perception" would repeat the original inferential error with the sign flipped.
What is defensible: *at n = 38, in this uncontrolled within-subject design, the direction of the
effect is not resolved.*

### What this means for the revision — Esther's call, not this file's

Three options, in descending order of how much they concede:

1. **Reframe the paper around the paired result.** Report the risk differences and intervals,
   present 18/23 as a descriptive within-subgroup observation rather than the headline, and
   narrow every conclusion to "not resolved at this sample size". Answers 2.1, 2.4, 2.5 and 2.6
   in one move, and is the honest reading.
2. **Report both, with the tension stated explicitly.** Keep 18/23 as the descriptive finding
   it is, and add the paired analysis as the inferential answer, saying plainly that the two
   address different questions. Defensible if the difference is spelled out — indefensible if
   the paired null is buried in a supplement.
3. **Report 18/23 only.** ⚠️ Not defensible now that the paired analysis exists and is known to
   be null. A reviewer who asked for inferential statistics and received only a one-directional
   proportion would be entitled to press, and the omission would be hard to explain.

The abstract and conclusions need rewriting under options 1 or 2 either way. This sits on top
of the language problem already recorded in `../../CLAUDE.md`: "eliminates", "modulates" and
"support functional sensory interactions" were unsupportable on design grounds before this
analysis, and are now also unsupported by the statistics the reviewer requested.

## 8. The collapsed tests the reviewer asked for — run 2026-08-17

`src/reviewer_requested_tests.Rmd`. Computed on the **collapsed (clinical) framing** at Esther's
direction: the estimand is whether *some* oral stimulus can be found for a patient, so the
number tried is part of the protocol. Tables: `manuscript_percentages_wilson.csv`,
`collapsed_comparisons.csv`, `agreement_kappa.csv`, `cochran_q.csv`, `concordance_readings.csv`.

All five published prevalence cells and the 18/23 endpoint reproduce before anything is tested.

| Reviewer's request | Result |
|---|---|
| Test for 60.5% vs 81.6% | Exact McNemar **p = .057**, 14 discordant pairs; risk difference **−21.1 pp [−37.9, −2.5]** |
| Cochran's Q across phases | **Q = 11.41, df = 2, p = .003** over the 3 measurable phases |
| DS vs COS efficacy | DS 16/23 = **69.6% [49.1, 84.4]** vs COS 13/23 = **56.5% [36.8, 74.4]**; RD **+13.0 pp [−8.5, +32.8]**, p = **.45** |
| Cohen's kappa, DS vs COS elimination | **κ = 0.36 [−0.04, 0.75]** against raw agreement **69.6% [49.1, 84.4]**, PABAK 0.39 |
| Cohen's kappa, anatomical pairs | **κ = 0.10 [−0.37, 0.56]** against raw agreement **69.7%**, PABAK 0.39 |
| Elimination endpoint vs a 0.50 reference | 18/23 = **78.3% [58.1, 90.3]** (Wilson); exact binomial **p = .011**, Cohen's *g* = 0.283 — **exploratory** |

### The agreed analysis set for the revision

Settled with Esther on 2026-08-17:

| Quantity | Method |
|---|---|
| All reported proportions | **Wilson** 95% confidence intervals |
| Condition comparisons (sound vs OPS, DS vs COS) | **exact McNemar** — paired data, so not chi-square |
| Elimination endpoint (18/23) | **exact binomial vs 0.50**, labelled exploratory, limitation stated |

⚠️ **McNemar is deliberately not used for the elimination endpoint.** Within the 23, prevalence
under sound is 100% *by selection*, so the paired table has c = 0 forced and McNemar reduces to
p = 2/2^b — any 6 or more eliminators is automatically significant whatever the stimuli did
(here p = 7.6 × 10⁻⁶). That figure is an artefact of conditioning on baseline and must not
appear anywhere.

⚠️ **The 0.50 reference is conventional, not empirical**, and the paper must say so. p = .011 at
a reference of 0.50 becomes **p = .089 at 0.60**, so the conclusion turns on an unmeasured
number. Worse, because the median burden was only 3 of 12 drawings and there were 11 attempts,
a no-effect rate of ~59% is plausible under response instability alone — above the 0.50 tested
against. Sensitivity tables: `elimination_benchmark_sensitivity.csv`,
`elimination_noise_illustration.csv`.

**Wording drafted for the Limitations paragraph** (in `src/reviewer_requested_tests.Rmd` §7, so
manuscript and reply use identical phrasing). The key sentence:

> The confidence interval indicates that the observed rate is not compatible with a spontaneous
> resolution rate below approximately 56%, but is fully compatible with rates of 60% or above.
> Establishing the spontaneous resolution rate — for example by presenting the sound-only
> condition repeatedly within a session — would be necessary before this finding could be
> attributed specifically to oral proprioceptive stimulation.

**Three things to be careful about when writing this up.**

1. **The 60.5% vs 81.6% test points the wrong way for the paper.** More participants showed a VS
   under OPS than under sound, and the exact test is borderline (p = .057) while the Newcombe
   interval excludes zero — the two disagree because the exact conditional test is conservative
   at 14 discordant pairs. Either way, this is the comparison most contaminated by the
   opportunity asymmetry in §4, and it says nothing about elimination. Also note **the paper's
   "OPS" here means the oral-alone phase (phase 4)**, while the elimination endpoint uses
   **phase 3**. Using one label for both is a clarity problem the revision should fix.
2. **Cochran's Q is significant but uninformative.** Phase 2 is one condition; phases 3 and 4 are
   unions of eleven. Q is measuring how many chances each phase had. For the record, adding the
   asserted 0/38 baseline as a fourth column inflates it to Q = 69.8 — a column that is zero for
   everyone cannot agree with columns where most are positive, which is why the four-phase
   version should not be reported.
3. **Kappa is now supplied, and it demonstrates why it was the wrong instrument.** On the
   anatomical pairs, 69.7% raw agreement returns κ = 0.10 with an interval spanning zero,
   because elimination is common in that subgroup (prevalence index 0.58). That is the
   prevalence/bias paradox, no longer as a prediction but as a measured result. **Report raw
   agreement with its interval and PABAK, cite kappa, and explain the divergence** — that
   answers the reviewer better than either number alone. The 33 anatomical pairs are 3 per
   participant and not independent, so that interval is too narrow; the per-participant
   classification is the honest unit.

**Two arithmetic problems in the draft, found while building the percentages table:**

- Results ¶120 says *"Of these 34:"* then gives 7.9%, 29.0% and 52.6% — those are **of 38, not
  of 34**. Out of 34 they are 8.8%, 32.4%, 58.8%. Fix the sentence or the percentages.
- The abstract and Results give elimination as **47.3% (18/38)**. Arithmetically right, but the
  population at risk of eliminating a sound-induced VS is the 23 who had one → **78.3%
  [58.1, 90.3]**. Lead with 78.3% of 23; 47.3% of 38 is a secondary framing at best.
