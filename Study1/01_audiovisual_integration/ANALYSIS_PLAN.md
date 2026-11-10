# Analysis plan — audiovisual integration and oral proprioceptive stimuli

## Where this stands

`Status: draft — awaiting agreement` · `Agreed: not yet` · Last updated 2026-08-17

Written 2026-08-10, after the data were collected, analysed and published. **Not
pre-specification** — nothing here may be described as pre-specified, and the registration
(NCT07051460) already records retrospective registration. On agreement this becomes
`Status: retrospective`. Esther agreed the retrospective framing on 2026-08-10; the plan as a
whole is still awaiting sign-off.

The reconciliation has run. Every prevalence figure and the headline 18/23 rebuild exactly
from raw.

⚠️ **Corrected 2026-08-18.** Two discrepancies recorded here on 2026-08-10 have since resolved
against the draft on disk, and both were bookkeeping rather than data:

- The elimination split **is not 6/1 in the draft**. `drafts/…-EGH.docx` prints 5 DS-only and
  2 COS-only in the Abstract (¶12), the Results (¶148–149, ¶189) and Figure 5 — agreeing with
  the data and with the Spanish recount. The `6`/`1` in the `manuscript` column of
  `reconciliation.csv` matches no source that is on disk.
- COS–DS concordance reproduces at 5/3/3 (see below).

⚠️ The hardcoded `manuscript` values in `reconcile_published_counts.Rmd` are **left unchanged**
until Sophie says which version those figures came from: the submitted file is still not on
disk, so a previous session may have read it.

**Updated 2026-08-17.** Esther supplied the regulador / perturbador classification rule and
confirmed the baseline result. Three things changed:

1. The **condition block inventory is now read from the workbook**, not assumed: 23 blocks
   confirmed — 1 sound-only, 11 sound + oral, 11 oral-alone, and **no baseline block**.
2. **`regulador` is the published elimination endpoint restated**, and reproduces 18/23
   exactly. `perturbador` is a **second endpoint that is new to this project** — it appears
   nowhere in the manuscript, the reviewer letter or the Spanish recount, all three of which
   were searched. It is therefore an addition at revision, not a rebuild of something
   published, and enters as exploratory.
3. **Baseline is 0/38** — no participant showed a VS on any image with no stimulus (Esther,
   2026-08-17). Recorded as a stated fact, not synthesised into a dataset; see `../README.md`.

⚠️ The classification is currently **descriptive re-description only**. Its two structural
properties — §2a.8 and §2a.9 below — govern what may be said about it, and one of them is
severe enough that the perturbador result should not go into the revision as a finding until
item 2 of the blocking list is answered.

### ⚠️ The paired contrast has now been run, and it does not support the paper's claim

Analyses 2–6 ran on 2026-08-17 (`src/prevalence_ci_and_paired_contrasts.Rmd`). The result
matters more than anything else in this file:

**Once change in *both* directions is counted, there is no evidence that adding an oral
stimulus to the sound lowers pseudo-scotoma prevalence.**

| | Result |
|---|---|
| Paired risk difference, 11 stimuli | **−7.9 to +15.8 percentage points; every 95% interval crosses zero** |
| Exact McNemar, 11 stimuli | p = .24 to 1.00. **None below .05, before correction** |
| After Benjamini-Hochberg | all adjusted p = 1.00 |
| Pooled GLMM, sound vs sound + oral | **OR = 0.79 [0.32, 1.95], p = .61** |
| Discordant pairs per stimulus | 13 to 20 |
| Of those who changed, the share who improved | **40% to 67%** — i.e. near even |

**Why this differs so sharply from 18/23.** The elimination endpoint counts only the
participants who improved and is structurally blind to the ones who worsened (§2a.10). The
paired test counts both. In this data the two directions are close to equal — cell `b`
(regulador) against cell `c` (perturbador) runs 9v8, 6v9, 6v7, 6v7, 8v8, 12v6, 9v9, 9v7, 8v5,
11v9, 10v5. **18/23 is not wrong arithmetic; it is the right arithmetic on a one-directional
question.** The moment the question becomes "did prevalence fall", the answer is no.

⚠️ **This is an uninformative result, not a demonstration of no effect.** The intervals are
roughly 40 percentage points wide, so a worthwhile reduction and a worthwhile increase are both
still compatible with these data. Non-significance here must not be written up as "oral
stimulation has no effect" — that is the same inferential error as the original claim, pointed
the other way. What the study supports is: **at n = 38, with this design, the direction of the
effect is not resolved.**

The implication for the revision is in `Manuscript/MANUSCRIPT.md` §7. It is Esther's call, not
this file's.

**Blocked on two answers from Sophie:**

1. ~~The exact definitions used for spatial concordance and for COS–DS concordance.~~
   ✅ **COS–DS concordance resolved 2026-08-17** — the rule is in the draft (Results ¶178) and
   reproduces 5/3/3; see analysis 7. It can go into the revision. **What remains** is narrower: the
   *spatial* concordance (12/5/3) recorded in the 2026-08-10 notes appears nowhere in the draft on
   disk, so the open question is whether it was in the **submitted** version. That question does not
   block anything else.
2. Whether Clàudia's TFG — a **separate** thesis, named in the `RESULTADOS` document; the
   article under revision is Sophie's and its data came from Agustí's TFG — contains repeat
   measurements of any condition. If it does, the
   elimination endpoint can be validated and the paper's central number gets much stronger.
   If it does not, limitation 4 below stands as the primary threat to it. **This now blocks
   two endpoints, not one** — the perturbador classification added on 2026-08-17 rests on the
   same single `E1` measurement, and is the more fragile of the two (§2a.8–9).

Nothing runs against a draft. Modelling begins when Esther agrees this file.

Code in `src/`, outputs in `outputs/`. Feeds the manuscript revision; depends on nothing.
`RESEARCH_QUESTIONS.xlsx` is seeded but not yet filled.

### Review gate — `Status: complete` is unavailable until this is filled

| Agent | Run on | Findings | Dispositioned |
|---|---|---|---|
| `statistician-reviewer` | not yet | | |
| `data-auditor` | not yet | | |

## What will be run

1. **Reconciliation** — rebuild every published count from raw. Done;
   `outputs/tables/reconciliation.csv`. 

2. **Prevalence with Wilson score intervals** ✅ Done 2026-08-17 —
   `outputs/tables/prevalence_ci.csv`, `outputs/figures/prevalence_with_ci.png`.

   | Quantity | Estimate | 95% Wilson | Conditions behind it |
   |---|---|---|---|
   | VS under sound alone | 23/38 = 60.5% | [44.7, 74.4] | 1 |
   | VS under any oral stimulus alone | 31/38 = 81.6% | [66.6, 90.8] | **11 — a union** |
   | VS under any COS alone | 27/38 = 71.1% | [55.2, 83.0] | **3 — a union** |
   | VS under any DS alone | 29/38 = 76.3% | [60.8, 87.0] | **8 — a union** |
   | Per single oral stimulus alone | 34.2% to 55.3% | widths ≈ 30 pts | 1 each |
   | Ever regulador | 18/23 = 78.3% | [58.1, 90.3] | **11 — a union** |
   | Regulador, per single stimulus | 26.1% to 52.2% | — | 1 each |
   | Ever perturbador | 13/15 = 86.7% | [62.1, 96.3] | **11 — a union** |

   ⚠️ **The union rows are valid intervals for the wrong quantity.** A union over *k*
   conditions has *k* chances to be positive, so it cannot be compared with the single
   sound-only proportion, and **the COS union (3) cannot be compared with the DS union (8)** —
   they differ in opportunity count, not only in stimulus type. Analysis 5 answers DS vs COS
   properly. This is §2a.9 again, and it is why the figure puts unions in a separate panel.

   Every interval quantifies **sampling uncertainty only**. None of them accounts for the
   outcome's unmeasured test-retest reliability (§2a.4), which is a separate and larger
   uncertainty that no interval computed from this dataset can express.

   Wilson is the right choice at n = 38: it has better coverage than the Wald
   interval and is not conservative the way Clopper–Pearson is, so it does not inflate the
   width of intervals we are already having to defend as wide. None of the reported
   proportions is at 0% or 100%, which is where Wilson would need care. It is also
   consistent with analysis 4, since Newcombe's paired interval is built from Wilson score
   intervals — so single proportions and paired differences are constructed the same way,
   which is one fewer thing for a reviewer to query.

   For *x* events in *n* trials, with p̂ = *x*/*n* and *z* = 1.96 for 95%:

   ```
                p̂ + z²/2n  ±  z · √( p̂(1-p̂)/n  +  z²/4n² )
   CI(95%)  =   ─────────────────────────────────────────────
                              1 + z²/n
   ```

   The interval is asymmetric about p̂ — it is pulled toward ½ — which is why it behaves near
   the boundaries where the Wald interval does not. Worked example, 23/38 = 0.6053:
   centre (0.6053 + 0.0505)/1.1011 = 0.5956, half-width 0.1484, giving **[44.7%, 74.4%]**.
   Clopper–Pearson on the same data gives [43.4%, 76.0%] — 3 points wider for no gain in
   coverage. In R: `PropCIs::scoreci(23, 38, 0.95)`, or `binom::binom.wilson()`.

   Phase 1 (0/38) is **screening, not a comparison arm**. It is reported as a plain count
   describing the screened sample and carries no interval, because it enters no inference.

3. **Primary contrast** ✅ Done 2026-08-17 — exact McNemar per oral stimulus, comparing sound
   alone against that same stimulus applied while the sound continues. Exact because the
   discordant counts are small (13–20 per stimulus).
   `outputs/tables/paired_contrasts.csv`.

   **Result: p = .24 to 1.00 across the 11 stimuli. Not one reaches .05 uncorrected.** The
   discordant cells are `b` = regulador and `c` = perturbador — the classification had already
   computed them without either being read as a paired contrast.

4. **Effect sizes for those contrasts** ✅ Done 2026-08-17 — paired risk difference with a
   **Newcombe method-10 interval**, built by square-and-add from the two Wilson intervals with
   a correlation correction, exactly as this plan intended. `PropCIs` is not installed on this
   machine, so Wilson and Newcombe are implemented in the script and Wilson is verified against
   the worked example below on every run.
   `outputs/figures/paired_risk_difference_forest.png`.

   **Result: −7.9 to +15.8 percentage points, every interval crossing zero.** The conditional
   odds ratio is not reported per stimulus: with 13–20 discordant pairs its interval spans
   more than an order of magnitude and adds nothing the risk difference does not say. The
   pooled odds ratio from analysis 5 is reported instead.

5. **Joint model** — ⚠️ **Run 2026-08-17, then withdrawn from the revision the same day
   (Esther's decision).** Kept here as a completed secondary analysis; **not** to be reported in
   the paper or the response letter.

   **Why withdrawn.** The fit below tests `oral_present` — the sound vs sound + oral contrast
   pooled over all 38 — which is precisely the estimand descoped later that day (see analysis 10
   and the deviations log). So it is not merely surplus complexity; **as fitted it answers a
   question the paper does not ask.** Beyond that: it is not needed for either reviewer point, it
   sits oddly beside a paper reporting proportions, and it is a weaker answer to the sample-size
   objection than reporting achieved precision, because it does not turn 38 participants into 874.

   **The version that would earn its place**, if a reviewer presses on whether the response is a
   property of the person or of the stimulus, is different from either fit below: a model of the
   *elimination* outcome over the 23 responders × 11 stimuli, partitioning variance into
   between-participant and between-stimulus components. That would quantify the person-specific
   claim, which currently rests on reading the heatmap. Not run — with 23 participants and 11
   stimuli the components would be imprecise, and the DS-vs-COS fit below is already singular.

   The two fits as run:

   - `any_vs ~ oral_present + (1|pid) + (1|stimulus)` over the 456 sound and sound + oral rows.
     **OR = 0.79 [0.32, 1.95], p = .61.** Not singular.
   - `any_vs ~ type + (1|pid) + (1|oral)` over the 418 oral-alone rows, for DS vs COS.
     **OR = 0.70 [0.39, 1.26], p = .24.** ⚠️ **Singular fit** — see §2a.11.

   Separation did not appear, so `brglm2` was not needed. ⚠️ The earlier claim that this was
   "the substantive answer to the reviewer's sample-size objection" is **withdrawn**: analysis 8
   is that answer. A model on the same 38 people does not enlarge the population the study can
   speak about, and saying otherwise would overstate what it does.

6. **Multiplicity** ✅ Done 2026-08-17, **re-targeted the same day**. Benjamini–Hochberg, not
   Bonferroni: these are repeated measurements on the same people, so the tests are correlated and
   Bonferroni would over-correct.

   | Family | Result |
   |---|---|
   | 11 paired McNemar contrasts (analysis 3) | all adjusted p = 1.00 — but this family was **withdrawn** with the paired contrasts |
   | **11 per-stimulus binomial tests vs 0.50 (analysis 10)** | **3 of 11 at p < .05 uncorrected → 0 of 11 after correction**, smallest adjusted p = .13 |

   ⚠️ The re-target was prompted by Esther noticing that the draft response letter claimed a BH
   correction when the only corrected family had already been dropped from the reported set. The
   correction now applies to a family that is actually reported. It is **not** mentioned in the
   response letter — the reviewer did not ask, and naming it unprompted invites questions.

   Note the three uncorrected hits were in the direction of being *below* 50%, not above, and none
   survives correction. The defensible statement is that **no single stimulus is distinguishable
   from the 0.50 reference in either direction.**

7. **Agreement between COS and DS** ✅ Done 2026-08-17 — `outputs/tables/agreement_kappa.csv`,
   `src/reviewer_requested_tests.Rmd` §6. Raw agreement with a Wilson interval, Cohen's kappa
   with its interval, PABAK, and the prevalence and bias indices.

   | Level | Raw agreement | Cohen's κ | PABAK | Prevalence index |
   |---|---|---|---|---|
   | DS vs COS elimination, per participant (n = 23) | 69.6% [49.1, 84.4] | 0.36 [−0.04, 0.75] | 0.39 | 0.26 |
   | COS vs its anatomical DS, 33 pairs from 11 participants | 69.7% [52.7, 82.6] | **0.10 [−0.37, 0.56]** | 0.39 | **0.58** |

   **The prevalence/bias paradox is no longer a prediction — it is a measured result.** 69.7%
   agreement returns κ = 0.10 with an interval spanning zero, because elimination is common in
   that subgroup so chance agreement is high. Kappa alone understates the agreement; raw
   agreement alone overstates it. Report both plus PABAK and explain the divergence. ⚠️ The 33
   pairs are 3 per participant and **not independent**, so that interval is too narrow; the
   per-participant row is the honest unit of analysis.

   ✅ **The concordance counts are no longer blocked. 5/3/3 reproduces exactly, 2026-08-17.**
   Esther read the rule off the draft (Results ¶178 + the Fig. 2 equivalences):

   - all **three** COS slots are judged, including ones where that COS did not eliminate;
   - a slot **matches** if the COS eliminated **and at least one** of its anatomical equivalents
     eliminated — *at least one*, not all;
   - complete = 3 matches (5 participants) · partial = 1–2 (3) · none = 0 (3).

   With Wilson intervals: complete 45.5% [21.3, 72.0], partial 27.3% [9.7, 56.6], none 27.3%
   [9.7, 56.6]. The script **asserts 5/3/3** so the knit fails if it ever stops holding. The three
   failed readings (8/0/3, 2/6/3, 5/5/1) are retained in the code as a record of the search.

   ❓ **One judgement call in it is unconfirmed.** Treating "neither the COS nor any equivalent DS
   eliminated" as a **non-match** is what reproduces 5/3/3, so it is almost certainly what the
   authors did — but Sophie has not confirmed it. The opposite convention (count it as concordant)
   gives **5/5/1**, moving two participants from `none` to `partial`. Asked in
   `revisions/analysis_summary.md` §3e and §6. It also decides whether kappa is the right companion
   statistic, since kappa uses the opposite convention.

   ⚠️ **The classification and the kappa measure different things and must not be presented as one
   quantity checked twice.** The published concordance is **positive co-occurrence** — of the 25
   slots where a COS eliminated, 21 also had an equivalent DS eliminate, **84.0% [65.3, 93.6]**.
   Kappa is **two-way agreement**, which additionally counts the 2 slots where neither eliminated
   as agreement. That is a large part of why κ = 0.10 looks so much worse than 5/3/3 reads.

   Three limits on the kappa, all printed by the script: "at least one equivalent" is an uneven bar
   (M2 has four equivalents, M1 and M3 two); the COS margin is constrained by selection (25 of 33
   against an arithmetic minimum of 11); and the 33 slots are three per participant, so the
   interval is too narrow.

8. **Precision, not power** — the interval width the achieved N delivers. No post-hoc
   observed power: it is a deterministic function of the p-value and answers nothing.

9. **Condition collapse and regulador / perturbador classification** — Done, descriptively;
   `src/collapse_conditions_and_classify.Rmd`. Reads the block inventory from the workbook,
   collapses each block's 12 image columns to one value per participant, and applies the
   three-way classification. Writes `participant_condition_summary.csv` (wide, one row per
   participant) and `participant_condition_long.csv` (the modelling substrate), plus
   `condition_classification_counts.csv` and `participant_classification_rollup.csv`.

   **Descriptive only.** It re-describes the raw grid; it tests nothing. What it establishes:

   | | Result |
   |---|---|
   | Blocks found | 23 — 1 sound-only, 11 sound + oral, 11 oral-alone, 0 baseline |
   | Eligible for regulador (VS under `E1`) | 23 of 38 |
   | Eligible for perturbador (no VS under `E1`) | 15 of 38 |
   | Ever regulador | **18 of 23** — reproduces the published elimination endpoint |
   | Ever perturbador | **13 of 15** |
   | Both | 0 — impossible by construction, not a finding |
   | Perturbador classifications (participant × stimulus) | 80 |
   | …where the same stimulus alone, no sound, also induced a VS | 44 of 80 |

   ⚠️ **13 of 15 is the number to be careful about.** A label that catches 87% of everyone
   eligible for it is close to no classification at all, and §2a.9 explains why a disjunction
   over 132 binary cells would do that regardless of whether the stimuli do anything. It is
   reported as a description of what happened in one session. **It is not evidence that oral
   stimulation disrupts vision**, and the word "perturbador" — a dispositional noun naming a
   trait in the participant — should not be used in the manuscript without a stability
   estimate behind it. That is the same overreach flagged for "eliminates" and "modulates".

   The phase-4 follow-up (44 of 80) selects a subgroup on a noisy criterion and re-tests it in
   a phase that always came later, with no comparison group and no correction. It can only
   confirm. Descriptive, no inferential weight.

10. **Elimination endpoint against a reference rate** ✅ Done 2026-08-17 —
    `outputs/tables/elimination_benchmark.csv`, `src/reviewer_requested_tests.Rmd` §7.
    **Exact binomial test of 18/23 against a reference rate of 0.50, explicitly exploratory**
    (Esther's decision, 2026-08-17). Interval is Wilson, for consistency with analysis 2.

    | | |
    |---|---|
    | Elimination of sound-induced VS | 18/23 = **78.3%**, 95% Wilson CI **[58.1, 90.3]** |
    | Exact binomial vs 0.50 | **p = .011** |
    | Cohen's *g* | 0.283 |

    **Why not McNemar for this endpoint.** Within the 23, prevalence under sound is 100% *by
    selection*, so the paired table has **c = 0 forced** — nobody in that subgroup could get
    worse in this coding. McNemar then reduces to p = 2/2^b, making any ≥ 6 eliminators
    automatically significant regardless of what the stimuli did (here p = 7.6 × 10⁻⁶). That
    number is an artefact of conditioning on the baseline and is **not reported**. A one-sample
    test against an external reference has no such degeneracy.

    ⚠️ **The limitation, and why this is exploratory.** 0.50 is a **convention, not an empirical
    no-effect rate.** With the sound-only condition presented once, the rate at which a
    sound-induced VS clears spontaneously on re-testing is not estimable (§2a.4). Two
    quantifications, both in `outputs/tables/`:

    - **Where the result changes** (`elimination_benchmark_sensitivity.csv`): p = .011 at a
      reference of 0.50, .035 at 0.56, **.089 at 0.60**, .27 at 0.65. The conclusion flips
      between 0.56 and 0.60.
    - **What a lenient endpoint plus 11 attempts yields on its own**
      (`elimination_noise_illustration.csv`): among the 23 the median burden was **3 of 12
      drawings**, and 9 of 23 had only 1–2 affected. If reports were unrelated to the stimulus,
      the expected "elimination" rate is 18% at per-drawing instability *q* = 0.2 and **59% at
      q = 0.5** — already above the 0.50 being tested against.

    The defensible statement, which needs no assumption about chance: **the observed rate is not
    compatible with a spontaneous resolution rate below ≈56%, and is fully compatible with rates
    of 60% or above.** Manuscript and response-letter wording is drafted in §7 of the script so
    both use the same phrasing.

## What the reviewer asked for that we are not doing

Both refusals need the reasoning *and* the substitute in the response letter. Silently
omitting either would read as evasion, and the reviewer would be entitled to press.

**Cochran's Q across the four phases.** Phase 2 is a single condition; phases 3 and 4 are
each the union of eleven stimuli. "Any VS in phase 3" therefore has eleven chances to be
positive against one in phase 2, so a significant Q would measure the number of
opportunities, not the effect of the stimulus. Analysis 5 answers the same question with the
structure modelled properly.

**Cohen's kappa for the concordance.** With n = 11 and marginals this unbalanced, kappa hits
the prevalence/bias paradox — it returns a near-zero value alongside high raw agreement, and
its interval is too wide to support either reading. Analysis 7 substitutes.

## The detail

### Estimand

The within-participant difference in the probability of reporting a visual pseudo-scotoma
between the sound-only condition and each oral-stimulus condition applied while the sound is
maintained, in healthy young adults under vertical Maddox dissociation, as a risk difference
with a paired confidence interval.

Secondary: the probability of a VS under oral stimulation alone, relative to sound alone, in
the same session.

### Data

`data/raw/EXCEL TFG AGUSTÍ PARA YOLANDA.xlsx`, sheet `Datos`. 38 participants (7 M, 31 F;
mean age 23.6, SD 2.4, range 20–29), screened from 54 volunteers. Full dictionary in
`../README.md`. 38 × 23 stimuli × 12 drawings = 10,488 binary observations, no missing values.

Unit of observation is the **participant**. Stimulus-level and drawing-level rows are
repeated measures within participant and are modelled as such.

### 2a. Structural limitations of the design

The authoritative list. `CLAUDE.md` points here; `MANUSCRIPT.md` §4 tracks which have reached
the paper. None can be fixed by analysis.

1. Fixed condition order, never randomised — phases run 1→2→3→4 and COS always precedes DS,
   so condition is confounded with time, fatigue, practice and expectancy. A phase contrast
   is not a stimulus contrast.
2. No blinding of participant or operator, on a subjective binary self-report.
3. No sham condition, so the effect of being stimulated is not separable from the effect of
   the specific stimulus.
4. ⚠️ The sound-only condition was presented once, so within-session stability of the outcome
   is not estimable — and the elimination endpoint cannot be separated from ordinary response
   instability. This sits directly under the paper's headline number and is the most serious
   limitation in the study.
5. The phase 1 screening result is not in the data file. This is a provenance gap rather
   than a design limitation — phase 1 is screening and enters no comparison — but the 0/38
   printed in the paper cannot currently be traced to a recorded source. Esther confirmed the
   0/38 on 2026-08-17; it is recorded as an assertion in `../README.md` and deliberately not
   written into any dataset. It became load-bearing when the perturbador endpoint was added,
   because that endpoint reads a VS under sound + oral as *induced*, which requires the
   participant not to have had one at baseline.
6. Convenience sample, one campus, 82% female, ages 20–29.
7. The drawings' spatial layout was not recorded, so VS location is nominal only.
8. ⚠️ **Both classification labels condition on the single, unrepeated `E1` measurement, in
   mirror image.** Regulador selects participants who read positive under sound and asks
   whether they later read negative; perturbador selects those who read negative and asks
   whether they later read positive. These are precisely the two categories that response
   instability manufactures: under pure instability, with no stimulus effect whatever, both
   groups are non-empty by construction. This is limitation 4 applied twice — and it now has
   twice the consequence, because a second endpoint rests on it.
9. ⚠️ **The two criteria are asymmetric in how much instability they admit, so their rates are
   not comparable.** Regulador requires **all 12** images to read 0 — a conjunction of 12
   events. Perturbador requires **any 1 of 12** to read 1 — a disjunction, and at participant
   level a disjunction over 11 stimuli × 12 images = 132 cells. Illustratively: at a per-cell
   flip probability of just 1%, the chance of at least one 1 somewhere in 132 cells is
   1 − 0.99¹³² ≈ **73%**. The observed 13 of 15 (87%) "ever perturbador" is entirely
   consistent with a criterion that is close to unfalsifiable, and cannot be distinguished
   from a real effect without a stability estimate. **Any comparison of the regulador rate
   against the perturbador rate is an artefact of criterion shape, not a finding.**
10. The classification cannot observe worsening in the participants it most concerns. A
    participant with a VS under sound whose VS spreads to *more* images under sound + oral is
    `vs_en_ambas` — the same category as no change at all. Improvement is only detectable in
    sound-responders and worsening only in non-responders, so the scheme's own outcome space
    is censored in a direction that flatters the paper's thesis.
11. ⚠️ **The DS vs COS model is a singular fit.** `any_vs ~ type + (1|pid) + (1|oral)` on the
    oral-alone rows returns a variance component at or near zero for stimulus identity. That is
    expected rather than surprising: there are 11 stimulus levels, three of them COS, and a
    variance component needs more levels than that to be identified. The point estimate
    (OR = 0.70) is reported with the singularity flagged in `glmm_estimates.csv`, and **it must
    not be read as evidence that DS and COS behave alike** — the model cannot resolve the
    question either way. H3 was never powered for, and this is what that looks like in practice.
12. ⚠️ **No interval computed anywhere in this project accounts for the outcome's unmeasured
    reliability.** Every Wilson and Newcombe interval here quantifies sampling uncertainty on
    the assumption that each recorded 0 or 1 is the participant's true state. With `E1`
    measured once (§2a.4), that assumption is untested, and the real uncertainty is wider than
    any interval reported. This applies to the null result as much as to the original claim.

13. 🔴 **The oral conditions had ~11× more opportunities to be positive than the sound
    condition, and sound was never repeated to match.** "VS with OPS" is positive if any of 11
    oral stimuli produced a VS in any of 12 drawings — up to 132 binary opportunities against
    the sound condition's 12. So part of the 60.5% → 81.6% gap is sampling effort, not a
    difference between sound and oral stimulation, and the same asymmetry inflates the
    elimination endpoint. **Not correctable from these data**; it needs repeated sound-only
    measurements, i.e. §2a.4 and open item 3. Identified by Esther on 2026-08-17 **before the
    collapsed tests were read**, which is why it is recorded here rather than discovered
    afterwards. The reviewer did not raise it — see the deviations log for how that is handled.
### Variables

Outcome: VS present in a given drawing under a given stimulus (binary). Derived: any VS
across the 12 drawings; number of drawings affected (0–12). Exposure: stimulus condition
`E1`–`E23`, collapsed to sound present × oral stimulus type. Random effects: participant,
oral stimulus. Descriptive only: sex, age.

### Hypotheses

Phase 1 is a baseline screening phase. It generates no hypothesis and enters no comparison —
it establishes that the screened sample showed no pseudo-scotomas before stimulation
(confirmed 0/38 by Esther, 2026-08-17), and is reported as a plain count.

- **H1** Oral stimulation alone is associated with VS occurrence. The perturbador
  classification bears on this, but tests it *with the sound maintained*, so it is not a clean
  read on H1: it speaks to an oral stimulus inducing a VS in participants for whom sound alone
  did not, which is a narrower claim than H1 as stated. Exploratory; see §2a.8–10.
- **H2** An oral stimulus applied while sound continues lowers VS probability relative to
  sound alone. *Primary.*
- **H3** DS and COS differ. *Exploratory; never powered for.*
- **H4** Anatomically equivalent COS and DS give concordant responses. *Exploratory, n = 11,
  and blocked on the definition.*

### Decisions fixed in advance

Missing data: none in the outcome grid, verified. Outliers: not applicable to binary data;
no participant excluded post hoc. Transformations: none. Multiplicity: BH across the
22-member stimulus family. Alpha: .05 two-sided, exact p-values, `p < .001` the only
threshold form.

"Elimination" means no VS in any of the 12 drawings for that stimulus, in a participant who
showed VS under sound alone. This matches the recount's *recuperan la línea entera* and
reproduces the published 18/23.

**The classification rule** (Esther, 2026-08-17), applied per participant per sound + oral
condition, against that participant's own `E1` result. Full statement in `../README.md`:

| Label | `E1` | Sound + oral |
|---|---|---|
| `regulador` | ≥ 1 image = 1 | all 12 = 0 |
| `perturbador` | all 12 = 0 | ≥ 1 image = 1 |
| `no clasificado` | anything else — kept as `vs_en_ambas` or `sin_vs_en_ninguna`, never forced | |

`regulador` **is** the elimination endpoint above, restated per stimulus; the two definitions
are one decision, not two, and the script asserts the 18/23 match so they cannot drift apart.

**Baseline:** 0/38, no VS on any image with no stimulus (Esther, 2026-08-17). A stated fact
with provenance, not a dataset column — see `../README.md` for why that distinction is kept.

Participants are **not** excluded for being `no clasificado`; the category is reported.

### Sample size

No a priori calculation exists; N was whoever was eligible. At n = 38 a proportion near 0.60
carries a 95% Wilson interval of roughly ±15 percentage points — 23/38 = 60.5% [44.7, 74.4],
a width of 30 points. The elimination subgroup gives 18/23 = 78.3% [58.1, 90.3], width 32.
Clopper–Pearson on the same 23/38 gives [43.4, 76.0], nearly 3 points wider; that conservatism
is what we avoid by using Wilson. The study was never powered for H3 or H4 and the paper will
say so.

### Expected outputs

All ✅ in `outputs/tables/`: `reconciliation.csv` · `condition_classification_counts.csv` ·
`participant_classification_rollup.csv` · `prevalence_ci.csv` · `paired_contrasts.csv` ·
`glmm_estimates.csv`. One rendered report per script in `outputs/reports/`.

Derived datasets in `data/processed/`: `participant_condition_summary.csv` ✅ and
`participant_condition_long.csv` ✅ — inventoried in `../README.md`.

Figures in `outputs/figures/`, all ✅ and all rebuilt 2026-08-17:

| Figure | Script | Shows |
|---|---|---|
| `heatmap_sound_and_classification.png` | `collapse_conditions_and_classify.Rmd` | sound as yes/no, then the 11 sound + oral columns as regulador / perturbador / neither |
| `heatmap_oral_alone_vs.png` | " | the 11 oral-alone columns as yes/no, same row order |
| `heatmap_collapsed_three_conditions.png` | " | one value per participant per condition type, 3 columns |
| `classification_by_oral_stimulus.png` | " | classification counts per stimulus, panelled by label |
| `heatmap_elimination.png` | " | **added 2026-08-18** — the 23 sound-responders only, sound + oral cells as eliminated / persists. No `perturbador`: the label is undefined for everyone in the figure |
| `heatmap_elimination_collapsed.png` | " | **added 2026-08-18** — the same endpoint in 2 columns, green cells labelled with how many of the eleven stimuli worked |
| `heatmap_vs_binary_collapsed.png` | " | **added 2026-08-18** — 3 columns, presence only, no classification |
| `heatmap_vs_count.png` | `vs_matrices_and_heatmaps.Rmd` | drawings affected, 0–12 |
| `heatmap_vs_binary_three_phases.png` | " | **added 2026-08-18** — all 38 participants, all 23 conditions, presence only, panelled by phase |
| `vs_prevalence_barchart.png` | " | prevalence for sound-only and each oral-alone condition |
| `prevalence_with_ci.png` | `prevalence_ci_and_paired_contrasts.Rmd` | prevalence with 95% Wilson intervals, single conditions and unions panelled apart |
| `paired_risk_difference_forest.png` | " | the paired sound vs sound + oral contrast against zero — **the figure that answers the primary question** |

Two housekeeping notes on that table:

- **`heatmap_vs_binary.png` was deleted, not regenerated.** Its content is now split between
  the first two figures above, at Esther's request. Leaving the old file in place would have
  left an output with no script that produced it.
- **`vs_prevalence_barchart.png` had no generating script at all** before 2026-08-17 — it sat
  in `outputs/figures/` orphaned. It now has one.

### Decisions still open

Beyond the two blocking items above: whether to model at drawing level as well as stimulus
level, which would use the `IM1`–`IM12` structure the manuscript discards and answer whether
the number and position of VS matter. That is a new analysis rather than a response to the
review, so it is Esther's call. Also open: the target journal, and therefore its
AI-disclosure policy; and whether other reviewers commented, since the letter on disk is
incomplete.

## §10 Deviations log — APPEND ONLY

| Date | Deviation | Reason |
|---|---|---|
| 2026-08-10 | Plan written after data collection, analysis and submission | The engagement began at revision. `Status: retrospective` on agreement. |
| 2026-08-10 | Reviewer request for inferential statistics enters as analyses 2–8 | Reviewer 1 point 2. Anything added here is exploratory. |
| 2026-08-10 | Cochran's Q, explicitly requested, will not be run | Non-comparable phases. The response letter must carry the reasoning. |
| 2026-08-10 | Cohen's kappa, explicitly requested, will not be the primary agreement measure | Prevalence/bias paradox at n = 11. Analysis 7 substitutes. |
| 2026-08-10 | Both concordance analyses suspended | Irreproducible under every operationalisation tried; awaiting Sophie's definitions. |
| 2026-08-10 | Phase 1 scoped out of the inference | Esther: phase 1 is baseline screening only and forms no part of the comparisons. Reported as a plain count, no interval, no hypothesis attached. |
| 2026-08-10 | Wilson replaces Clopper–Pearson for all proportions | Esther. The only argument for Clopper–Pearson was the 0/38 cell, which is no longer in scope. Wilson has better coverage at n = 38, is not conservative, and matches the Wilson-based Newcombe interval used for the paired differences. |
| 2026-08-17 | Regulador / perturbador classification added as analysis 9 | Esther supplied the operational rule. `regulador` restates the existing elimination endpoint and reproduces 18/23; `perturbador` is a new endpoint, absent from the manuscript, the reviewer letter and the recount. Exploratory, descriptive, and constrained by §2a.8–10. |
| 2026-08-17 | Block inventory read from the workbook rather than hardcoded | The brief raised the possibility of condition blocks beyond those documented. 23 confirmed, matching `../README.md`; the script now cross-checks the group header against every column name and stops on disagreement. |
| 2026-08-17 | Baseline 0/38 recorded as an assertion, **not** as a synthesised data column | Esther confirmed no participant showed a VS at baseline. Writing 38 zeros into a CSV would make an untraceable claim indistinguishable from measurement, and §2a.5 would be erased rather than recorded. Provenance kept in `../README.md`. |
| 2026-08-17 | Perturbador result withheld from the revision as a *finding* | §2a.9. At 13/15 the label catches 87% of those eligible, which a 132-cell disjunction would produce with or without a real effect. Reportable as description; not as evidence of disruption, and not under a dispositional noun, until the blocking item 2 stability question is answered. |
| 2026-08-17 | Figures rebuilt: binary heatmap replaced by two classification heatmaps, plus a collapsed three-column heatmap | Esther. The binary heatmap became sound-as-yes/no + the 11 sound + oral columns as regulador / perturbador / neither; the oral-alone columns moved to their own figure; a third figure collapses across stimuli. `heatmap_vs_binary.png` deleted rather than left stale. |
| 2026-08-17 | Red for perturbador, green for regulador, grey for neither | Esther's choice, implemented as asked. The pair sits at ΔE 7.2 under deuteranopia — inside the 6–8 floor band where colour may not be the sole carrier — so every classified cell also prints `R` or `P`. That glyph is what makes the choice defensible, not decoration. |
| 2026-08-17 | `vs_prevalence_barchart.png` rebuilt with sound-only and oral-only conditions, excluding sound + oral | Esther. Found orphaned — no script in the repository produced it. Rebuilt in `vs_matrices_and_heatmaps.Rmd` so it has a source. The eleven oral stimuli are shown individually, not collapsed, so every bar carries one opportunity (same reasoning as the Cochran's Q refusal above). |
| 2026-08-17 | `readable_copy()` extracted to `src/readable_copy.R` and sourced by both scripts | It was duplicated and had already drifted — the copy in `vs_matrices_and_heatmaps.Rmd` lacked the COM fallback and failed on a locked workbook. One definition, one place to fix it. |
| 2026-08-17 | **Analyses 2–6 run against a plan that is still `Agreed: not yet`** | Esther authorised these five specifically, by explicit request. Recorded here rather than flipping the plan's status, which is hers to set. The pre-specification concern the rule protects does not apply: the plan is retrospective by construction and these analyses are labelled exploratory throughout. |
| 2026-08-17 | Wilson and Newcombe implemented in-script rather than via `PropCIs` | `PropCIs`, `binom` and `exact2x2` are not installed on this machine. Wilson is verified against the plan's worked example (23/38 → [44.7, 74.4]) on every run, and the knit fails if it drifts. Newcombe method 10 is built from those Wilson intervals, which is what this plan specified anyway. |
| 2026-08-17 | Per-stimulus conditional odds ratios dropped from analysis 4 | With 13–20 discordant pairs the interval spans more than an order of magnitude and adds nothing to the risk difference. The pooled GLMM odds ratio is reported instead. |
| 2026-08-17 | Analysis 5 split into two model fits rather than one interaction model | `sound * oral_type` cannot answer both "does adding an oral stimulus change VS" and "do DS and COS differ", because the sound-only condition has no oral type. Two fits, each with its own estimand. |
| 2026-08-17 | **Collapsed (union) analysis added as a second, co-primary framing** — `src/reviewer_requested_tests.Rmd` | Esther. The clinical question is whether *some* oral stimulus can be found for a patient, so the number tried is part of the protocol rather than a nuisance. That is a coherent estimand and it is the one the paper claims. The per-stimulus analysis stays, answering the different question of whether a *given* stimulus works. |
| 2026-08-17 | ⚠️ **Opportunity asymmetry recorded as §2a.13 before any collapsed test was read** | Esther identified it: the oral conditions had ~11× the chances to be positive and sound was never repeated to match. Not correctable from these data. **The reviewer did not raise it**; whether to volunteer it in the reply is Esther's call, but it must appear in the paper's Limitations if the collapsed comparisons are printed. |
| 2026-08-17 | **Cochran's Q run after being declined on 2026-08-10** | Reversal, deliberate. Esther asked for the reviewer's named tests to be produced rather than only refused. Q is reported for the 3 measurable phases (Q = 11.41, df = 2, p = .003) **with the non-comparability stated**, which answers the reviewer better than a refusal. The 4-phase version is shown only to demonstrate that adding the asserted all-zero baseline inflates it to Q = 69.8. |
| 2026-08-17 | **Cohen's kappa computed after being declined as primary on 2026-08-10** | Same reasoning. The refusal was correct on the merits and is now *evidenced*: κ = 0.10 against 69.7% raw agreement. Supplying the number and the explanation is stronger than declining. |
| 2026-08-17 | Chi-square declined, McNemar substituted, for the 60.5% vs 81.6% comparison | The reviewer names chi-square as an option. These are paired proportions on the same 38 people; chi-square assumes independent samples and would use the wrong standard error. |
| 2026-08-17 | **Exact binomial test of 18/23 against a 0.50 reference added as analysis 10, labelled exploratory** | Esther's decision. It gives the reviewer a test of the elimination endpoint that is not degenerate, unlike a paired test on the selected subgroup. The reference value is conventional rather than empirical, and that limitation is stated in the manuscript wording rather than left implicit. |
| 2026-08-17 | McNemar **not** reported for the within-23 elimination endpoint | Conditioning on VS-positive under sound forces c = 0, so McNemar reduces to p = 2/2^b and any ≥ 6 eliminators is automatically significant. The value (p = 7.6e-06) is an artefact of the selection and would mislead. Recorded so the omission is visible. |
| 2026-08-17 | Test and interval drawn from different families for analysis 10 | Wilson interval (consistent with analysis 2 and every other proportion here) alongside an exact binomial test. They agree in this instance — the interval excludes 0.50 and p < .05 — but the mismatch is recorded rather than hidden. Clopper–Pearson [56.3, 92.5] is reported for reference only. |
| 2026-08-17 | **The per-stimulus estimand changed from a paired contrast to an elimination rate**, after Esther reviewed the client summary | Esther: the claim is whether OPS can eliminate a sound-induced VS, so the population is the 23 who had one. The sound-vs-sound+oral paired contrast imports the 15 who never reacted to sound and counts them as "worsening", which is not part of this claim. Analysis 10 now reports elimination per stimulus out of 23 (26.1%–52.2%). The paired contrast is **retained** in `prevalence_ci_and_paired_contrasts.Rmd` as a secondary analysis of the broader question, and removed from the client-facing summary. |
| 2026-08-17 | **Raw percent agreement designated the primary agreement statistic, kappa secondary** | Esther. The response letter now names the *kappa paradox* explicitly as a documented artefact of high-prevalence settings, gives the 66.4% chance agreement that produces it, and adds PABAK = 0.39. Reporting κ = 0.10 without that framing would read as poor agreement when raw agreement is 69.7% [52.7, 82.6]. |
| 2026-08-17 | **The 33-pairing analysis labelled an exploratory unit-of-analysis breakdown in the response letter**; the participant-level classification (n = 11) is the primary analysis | Esther. Three pairings per participant are not independent, so the 33-slot interval understates variance. Naming this in the letter pre-empts the objection rather than waiting for it, and points the reviewer to the participant-level intervals, which do reflect participant-level variance. The uneven "at least one equivalent" bar (M2 four equivalents vs two) is disclosed in the same paragraph. |
| 2026-08-17 | ⚠️ **The "neither worked" convention goes into the revision unconfirmed** — query raised twice and removed from the client summary at Esther's instruction | Esther: the question made the document too long to read. Implemented as **not concordant**, which is the reading that reproduces the published 5/3/3, so it is very probably what the authors did — but it is an inference from the counts, not a statement from them. The alternative convention gives **5/5/1**, moving two participants from `none` to `partial`. Recorded here and flagged `UNCONFIRMED` in `reviewer_requested_tests.Rmd` §6b, with both readings kept computed so switching is a one-line change. Not re-argued. |
| 2026-08-17 | ✅ **COS–DS concordance resolved — 5/3/3 reproduces** | Esther read the rule off the draft: all three COS slots judged, a slot matching if the COS eliminated **and at least one** anatomical equivalent did. My three earlier readings failed because I judged only the COS a participant had eliminated with, and required *all* equivalents to match. Now asserted in `reviewer_requested_tests.Rmd` §6b. **Both concordance analyses are unsuspended for the COS–DS case**; the spatial one remains only as a question about which manuscript version it came from. |
| 2026-08-17 | Recorded that the published concordance is **positive co-occurrence, not two-way agreement** | The 5/3/3 counts slots where both worked; kappa also counts slots where neither worked. Reporting them side by side without that sentence would read as one quantity measured twice with contradictory answers. Positive concordance is 21/25 = 84.0% [65.3, 93.6]. |
| 2026-08-17 | **Analysis 6 (multiplicity) re-targeted** from the paired contrasts to the 11 per-stimulus elimination tests | Esther spotted that the draft response letter claimed a BH correction while the only BH-corrected family was the paired contrasts, which had been withdrawn — so the reported analysis set had no correction applied to anything. BH is now applied to the eleven exact binomial tests against the 0.50 reference in `reviewer_requested_tests.Rmd` §7. **Result: 3 of 11 reach p < .05 uncorrected, 0 of 11 after correction (smallest adjusted p = .13).** The three were below 50%, not above. |
| 2026-08-17 | Multiplicity correction **not mentioned in the response letter** | Esther: the reviewer did not ask for it, and naming a correction unprompted invites questions rather than settling them. It is reported in the client summary §3c with a note in §4 recording that it was deliberately left out of the reply, and why. |
| 2026-08-17 | **Cochran's Q reframed as reviewer-requested only**, not as a study question | Esther: comparing overall prevalence across phases was never a goal of the study, which asks whether an oral stimulus removes a sound-induced VS in those who have one. Q stays in the revision because the reviewer named it, and the response letter says plainly that it was not among the objectives and is supplied for completeness. |
| 2026-08-17 | Q2 (repeat measurements) and Q3 (journal, other reviewers) **removed from the client summary** | Esther. No repeated-measures data exists from this study or any other, so there is nothing to ask for; the point is now a statement that such a measurement would be the most valuable addition to future work. ⚠️ The Q3 items — target journal / AI-disclosure policy, the incomplete reviewer letter, whether other reviewers commented — remain **open** as items 5–7 in `../../CLAUDE.md` and now need a route other than this document. |
| 2026-08-17 | **Analysis 5 (the GLMM) withdrawn from the revision** after being run | Esther: the paper is exploratory and reports an overview, not a per-condition comparison, so a mixed model over-complicates it. Two further reasons found on review: as fitted it tests the estimand descoped the same day, and it is a weaker answer to the sample-size objection than analysis 8, since it does not enlarge the sample. Retained in the record as a secondary analysis; recorded in the client summary as an option with its advantages and its limits, not as part of the plan. |
| 2026-08-17 | Finding recorded: **no single stimulus accounts for the 78.3%** | Best is 31V at 12/23 = 52.2% [33.0, 70.8]; three stimuli sit significantly *below* the 50% reference at 26.1%. The 78.3% depends on allowing any of eleven to count, which makes it a person-specific-search claim rather than a general-effect claim. Intervals are 35–40 points wide, so the stimuli must **not** be ranked. |
| 2026-08-17 | ⚠️ Point raised and **declined by Esther**: that the paper's use of "OPS" for both phase 3 and phase 4 was ambiguous | Esther: the Results distinguish them in prose ("OPS" vs "OPS while the sound stimulus was maintained"), so there is no ambiguity to fix. Reduced to an optional note that the Abstract is less explicit than the Results. Logged per the disagreement protocol, not re-argued. |
| 2026-08-17 | Correction to the record: the **article is Sophie's**; Agustí's TFG produced the data; the repeat-measurement lead is a **separate** TFG (Clàudia) named in the `RESULTADOS` document | Esther, 2026-08-17. Noted because "Clàudia's thesis" is shorthand for the possible source of repeat sound-only measurements and must not be read as authorship of this manuscript. |
| 2026-08-18 | **Client summary restructured around the three hypotheses** | Esther, after talking to Sophie. The previous version read long, vague and hard to act on. Now: design and hypotheses first, then one section per hypothesis ending in a single summary sentence with its numbers, then reviewer-requested analyses kept separate from the study's own questions, a drop-in Statistical Analysis paragraph, and a point-by-point reply. No cross-references to earlier versions of the document. |
| 2026-08-18 | Two figures added for the client summary: `heatmap_elimination.png` and `heatmap_vs_binary_three_phases.png` | Esther: the summary reports the elimination endpoint and does not report `perturbador`, so the endpoint figure must not carry it. Removing the label by *restricting the rows to the 23 sound-responders* rather than by recolouring — `perturbador` is undefined for everyone in the figure, so no cell is ambiguous. The second figure restores an all-phases presence view, which the 2026-08-17 rebuild had left without a home. |
| 2026-08-18 | ⚠️ **The 6/1 elimination-split correction was withdrawn from the client summary** | The draft on disk prints **5 DS-only / 2 COS-only** in the Abstract (¶12), the Results (¶148–149, ¶189) and Figure 5 — i.e. it already agrees with the data and the recount. The `6`/`1` recorded in the `manuscript` column of `reconciliation.csv` is not in that draft. Telling Sophie to correct a number that is already correct would have been worse than silence. **The submitted version is still not on disk**, so it cannot be ruled out that a previous session read a different file; the hardcoded values in `reconcile_published_counts.Rmd` are left unchanged and item 2 of the client summary's open questions asks Sophie which version those figures came from. |
| 2026-08-18 | **The "OPS names two phases" point reinstated in the client summary as a text correction** | Reverses the 2026-08-17 decline above, and this is Esther's call to make again rather than mine. Reason for reinstating: the same document now prints per-stimulus prevalence for *both* the oral-alone and the oral + sound conditions, so a reader moving between the two Results sections has two eleven-condition sets to keep apart, not one. If Esther declines it a second time, delete the row from the corrections table — nothing else depends on it. |
| 2026-08-18 | **Collapsed companions added for both client-summary heatmaps**, per-stimulus versions kept | Esther. The collapsed pair is what matches the published counts and fits a paper column; the per-stimulus pair is what the collapse hides, and is where the person-specific pattern is visible. Both are in the summary, labelled 2a/2b and 3a/3b, with the opportunity-asymmetry warning attached to the collapsed ones because their column totals are unions over eleven conditions. The collapsed elimination figure prints the **number of effective stimuli** inside each green cell, so the collapse loses nothing that mattered. |
| 2026-08-19 | **The five client-summary figures rewritten as manuscript figures** | Esther. Titles, panel headings and footnotes are now publication wording: no file paths, no `ANALYSIS_PLAN.md` cross-references, no internal shorthand (`VS under…` became `Sound alone`, `Any OPS (11 conditions)`), and the paper's own abbreviation **OPS** replaces "oral"/"OPS only" throughout the panel headings. The count of effective stimuli was removed from the collapsed elimination figure's cells at Esther's request — it survives in Figure 2b and in the summary text. The three phases in the collapsed prevalence figure are now separate panels rather than adjacent columns, with the phase name above each. ⚠️ **The opportunity-asymmetry caveat was kept in every affected caption**, rephrased for a journal reader; it is the one thing that could not be dropped with the internal references. Figures not used in the summary keep their internal captions — they are working documentation, not manuscript output. |
| 2026-08-19 | ⚠️ **The 50% reference recorded as a *lenient* bar, not a neutral one** — Esther's framing, adopted | Esther rewrote §2.2 of the client summary around the point that eleven attempts to clear one or two drawings makes accidental success plausibly **more** likely than 50%, so the benchmark is generous rather than conservative. This is a stronger statement than the plan previously carried: the earlier text treated 50% as conventional-but-arbitrary, and the noise calculation (59% at q = 0.5) sat below it as supporting detail rather than as the point. The direction matters — a lenient benchmark means the test is easier to pass than it looks, and the p = .011 is correspondingly weaker evidence. Draft Discussion wording written to match; the duplicate limitation wording elsewhere in the summary was removed rather than left to drift. |
| 2026-08-19 | H2b (DS vs COS) sourced explicitly to Introduction ¶38 and Methods ¶91 in the client summary | It is the paper's own second secondary objective, and the reviewer asked for it independently — so it belongs under the study's hypotheses and not under the reviewer-requested additions. The 2×2 (11 both / 5 DS-only / 2 COS-only / 5 neither) is now printed with it, because the non-empty off-diagonal is what makes McNemar legitimate here where §2.1 rejects it for the elimination endpoint. The 8-vs-3 opportunity asymmetry is stated as blocking any attribution to stimulus type even had the test been significant; no re-balancing was attempted, as choosing 3 of 8 dental stimuli has no principled basis. |
| 2026-08-19 | **The drafted Statistical Analysis paragraph cut to the collapsed analyses only** | Esther: the paper reports nothing per stimulus, so its Methods must not describe per-stimulus work. **Benjamini–Hochberg removed** — it corrected only the eleven per-stimulus binomial tests, which stay in the client summary as reasoning about what the Discussion may claim, not as manuscript content. **Cochran's Q removed from the paragraph**, which is correct only while Q stays in the response letter; ⚠️ if Q is printed anywhere in the revised paper its Methods must declare it, and the one sentence to paste back is kept immediately below the draft rather than deleted. The paragraph is now roughly half its previous length. |
| 2026-08-19 | One per-stimulus number retained as a **recommendation for the Results**: the 34.2–55.3% range | Not an exception to the collapsed-only rule but a descriptive range requiring no test and no Methods sentence. Kept because 60.5% and 81.6% printed side by side invite the conclusion that oral stimulation is the more disruptive input, and the per-stimulus figures show the opposite. Esther's call whether it goes in. |
| 2026-08-19 | 🔴 **Cochran's Q and the sound-vs-OPS McNemar withdrawn from the manuscript AND from the response letter** | Esther. Reverses the 2026-08-17 decision to supply Q, and goes further: the reply now **declines the between-phase comparison with reasoning** rather than reporting it. Grounds given to the reviewer are the estimand and the design — the first aim was descriptive (estimate each prevalence), and the phases hold 1, 11 and 11 conditions, so a test between them measures opportunity count as much as stimulus. Both values remain computed in `reviewer_requested_tests.Rmd` and in the client summary's Additional analyses section, held in reserve if the reviewer insists. ⚠️ **Concern raised to Esther, not overruled:** this is the one point where the reviewer names a test and does not get it, so the estimand argument carries the whole weight and a softened version invites a second round. Methods, Results and reply are now mutually consistent — nothing declared that is not reported, nothing reported that is not declared. |
| 2026-08-19 | Esther rewrote the Methods paragraph and most of the reply in her own voice; **four corrections made to it, the rest kept verbatim** | (1) Added *"conducted after data collection and are exploratory; no analysis plan was specified in advance"* and (2) dropped "**primary** elimination rate" — without these, the Methods plus the reply to 2e read as a claim of pre-specification against a retrospective registration. 🔴 The reply to 2e as drafted (*"our planned analytical framework"*) asserted planning that did not occur; rewritten as a concession, with the reasoning stated to Esther rather than silently changed. (3) *"to account for multiple testing opportunities"* → disclosure wording, since no multiplicity correction is applied and "account for" invites the question of which one. (4) LaTeX `$…$` → plain text; it does not render in this pipeline. |
| 2026-08-19 | ⚠️ **Reviewer point 2g had dropped out of the reply and was restored** | The "support functional sensory interactions is not warranted" point is the objection the *not acceptable in its current form* verdict rests on, and an unanswered reviewer point guarantees another round. Restored as a concession — the design cannot support the claim and no analysis can make it — with a note saying the wording is Esther's to edit but the point must be answered. |
| 2026-08-19 | 🔴 **Unresolved inconsistency flagged, not fixed:** DS vs COS is in the reply but marked "omitted in manuscript", while the Methods paragraph declares McNemar for exactly that comparison | The paper would declare a test it never reports — the same gap the reviewer is complaining about. Two consistent options put to Esther: report it (recommended — it is the paper's own secondary objective, Introduction ¶38, and the reviewer has asked twice), or delete the McNemar sentence from the Methods. Not chosen unilaterally. |
| 2026-08-19 | Client summary trimmed at Esther's direction: **§3 replaced with the reviewer's letter verbatim**, opening summary paragraphs and the whole "Open questions for you" section deleted | Esther: the document should carry the reviewer's words rather than my paraphrase of them, and should stop asking Sophie questions. ⚠️ **Consequence to track:** the four queries that lived in that section — the incomplete reviewer letter, which manuscript version was submitted, whether Clàudia's TFG holds repeat sound-only measurements, and the target journal — are **no longer asked of Sophie by any document**. They remain open as items 3–7 in `../../CLAUDE.md` and now need a route of their own. |
| 2026-08-19 | **The opportunity asymmetry moved from a Results correction to a Discussion limitation**, and every per-stimulus figure marked not-for-manuscript | Esther. Reverses the recommendation logged earlier the same day to put the 34.2–55.3% range into the Results. Her reasoning: printing per-stimulus prevalence invites questions about individual stimuli the study cannot answer, and the same asymmetry cannot be shown for sound, which was presented once. **The caveat is not lost — it is relocated**, with suggested wording added to the Limitations list, and the H1 summary sentence now carries it as a caveat rather than calling the 81.6% an artefact. Figures 1, 2b and 3b are labelled for this document only; 2a and 3a remain the manuscript figures. §2a.13 of this plan is unchanged and still governs: the asymmetry must appear in the paper, and it now does, in the Discussion rather than the Results. |
| 2026-08-19 | *"no analysis plan was specified in advance"* removed from the drafted Methods paragraph, and the change-log table removed from the client summary | Esther's call. **The disclosure is not lost:** the paragraph still opens *"All analyses were conducted after data collection and are exploratory"*, which states the analyses are post hoc without the redundant second clause, and the reply to reviewer point 2e still concedes in full that no plan was specified before data collection and that the registration is retrospective. Nothing in either document claims pre-specification, so the position remains defensible; the point was raised once and is not re-argued. |

## §11 Review log

| Date | Agent | Finding as written | Severity | Disposition |
|---|---|---|---|---|
| | | *not yet run* | | |
