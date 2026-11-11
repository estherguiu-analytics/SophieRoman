# SophieRoman — project context

**Client:** Sophie Román-Richon, Department of Dentistry and Stomatology, Universitat de
Barcelona. Co-authors include Agustí Vila-Frigola (whose TFG produced the data), Patrick
Quercia (INSERM UMR1093-CAPS, Dijon), and others.
**Status:** `under revision` — one manuscript, back from peer review with a major revision.
**Overarching question:** does oral proprioceptive stimulation influence visual perception,
and can it modulate sound-induced changes in visual perceptual stability?

⚠️ Read `../CLAUDE.md` first — the two hard rules and all statistical conduct live there.
This file is the project's own context only.

## Structure

```
Study1/
├── README.md                      data dictionary — read before touching the data
├── RESEARCH_QUESTIONS.xlsx        ⚠️ seeded from the template, NOT YET FILLED
├── data/raw/                      the TFG Excel + the Spanish recount. Read-only.
├── data/processed/
└── 01_audiovisual_integration/    the question folder
```

What a question folder holds (the plan, the deviations and review logs, the publishability
worksheet and planned numbers, `src/`, `outputs/`, `Manuscript/`) is set once, in the root
`../CLAUDE.md`, and not repeated here.

Only one study and one question so far. `Study1` is the folder Esther received; it is a
data collection, not an analysis.

## Measurement

The **Vertical Maddox Test (VM)** is the instrument the whole study rests on. A Maddox lens
(17 biconvex cylinders) in front of the left eye dissociates binocular vision vertically, so
the participant sees a red horizontal line through that eye and a white light spot with the
other. Vertical fusional compensation is very limited, so under dissociation the contribution
of ocular proprioception becomes predominant — which is what makes visual spatial
representation sensitive to modulation by other sensory input.

Twelve drawings flank the light spot at 4 m. When part of the red line disappears, the
participant names the drawings it disappeared in front of. That absence is a **visual
pseudo-scotoma (VS)** — functional, not lesional.

The mechanistic premise is trigeminal convergence: proprioceptive afferents from extraocular
muscles are thought to reach the CNS via the ophthalmic branch of the trigeminal nerve, and
periodontal and orofacial mechanoreceptors travel trigeminal pathways too. That shared
pathway is why oral stimulation is hypothesised to reach visual spatial coding at all.

⚠️ **The VM does not measure multisensory integration.** It creates conditions under which
visual spatial representation is unusually sensitive. The paper is careful about this in
Methods and much less careful in the Conclusions — see the language issue below.

## The design

Four phases, in fixed order, never randomised:

| Phase | Condition | Recorded as |
|---|---|---|
| 1 | no stimuli — **screening only, enters no comparison** | not in the data file |
| 2 | sound alone (500 Hz, 500 ms, 50 dB, bilateral, 1 s apart) | `E1` |
| 3 | sound + each of 11 oral stimuli | `E2`–`E12` |
| 4 | each of the same 11 oral stimuli, no sound | `E13`–`E23` |

Within phases 3 and 4, COS is always applied before DS.

📖 **What that design costs is listed once, in
[`Study1/01_audiovisual_integration/ANALYSIS_PLAN.md`](Study1/01_audiovisual_integration/ANALYSIS_PLAN.md)
§2a** — seven structural limitations, none fixable by analysis. Read them before proposing
any model or drafting any response to the reviewer. `MANUSCRIPT.md` §4 tracks which of them
have actually reached the paper, which is a different job from stating them.

## Settled decisions

- **The workspace is opened at `EGH_analytics/`**, not here — the shared harness lives there.
- **`data/raw/` holds the Spanish recount document** (`RESULTADOS YOLANDA…docx`) alongside
  the Excel. It is client-supplied source material and evidence for the reconciliation, and
  it must not be edited. *Rejected:* filing it under `Manuscript/revisions/`, which is for
  journal reviewer material only, and `admin/`, which would separate it from the data it
  recounts.
- **The question folder is `01_audiovisual_integration`**, not `01_reliability` or similar —
  the paper's claim is about audiovisual integration, and naming the folder after the claim
  keeps the estimand visible. *Rejected:* naming it after the instrument (`01_maddox`), which
  would describe the method rather than the question.
- **The baseline 0/38 is recorded as an asserted fact, not as a data column.** Esther
  confirmed on 2026-08-17 that no participant showed a VS at baseline; it lives in
  `Study1/README.md` with its provenance and date. *Rejected:* writing a synthetic all-zero
  baseline block into `data/processed/`, which would make an untraceable claim
  indistinguishable from measurement and quietly erase the provenance gap at
  `ANALYSIS_PLAN.md` §2a.5 instead of recording it.
- **Scope of this engagement is the statistical critique only.** APA reformatting and the
  expanded methods description are Sophie's, not Esther's. Confirmed 2026-08-10.
- **Reconciliation blocks inference.** Agreed 2026-08-10 — see `ANALYSIS_PLAN.md` §10.

## Open items

1. ~~**The published counts do not reproduce.**~~ ✅ **Closed 2026-08-18.** Every prevalence
   figure and the headline 18/23 rebuild exactly (`01_audiovisual_integration/src/reconcile_published_counts.Rmd`).
   The two apparent exceptions were both bookkeeping: the **elimination split is 5 DS-only /
   2 COS-only in the draft too** (Abstract ¶12, Results ¶148–149 and ¶189, Figure 5) — so
   **nothing needs correcting in the paper**, and the `6`/`1` in `reconciliation.csv`'s
   `manuscript` column matches no source on disk; and COS–DS concordance reproduces at 5/3/3
   (item 8). ⚠️ Both hardcoded values stay untouched until Sophie says which version they came
   from — the submitted file is still not on disk. Opened 2026-08-10.
2. ~~**Phase 1 has no data column.**~~ **Closed 2026-08-17.** The first column is `E1`
   (sound), so the 0/38 cannot be traced to a recorded source, but Esther confirmed
   2026-08-17 that **no participant showed a VS on any image at baseline**. Recorded as a
   stated fact with provenance in `Study1/README.md` and *deliberately not synthesised into a
   dataset* — 38 zeros in a CSV would be indistinguishable from measurement. Still worth
   asking Sophie whether a screening sheet exists, for traceability. Note it is now
   load-bearing for the perturbador endpoint (item 9), which reads a VS under sound + oral as
   *induced*. Opened 2026-08-10, downgraded 2026-08-10, closed 2026-08-17.
3. ⚠️ **`E1` is measured once, so the elimination endpoint cannot be validated.** 18/23 is
   conditioned on showing VS under sound and then re-measuring the same people; with no
   repeat of the sound-only condition, that rate cannot be separated from ordinary
   instability in a subjective binary report. The `RESULTADOS` document mentions a
   "PREGUNTA LABILIDAD (TFG CLÀUDIA)" — **find out whether Clàudia's thesis holds repeat
   measurements.** If it does, it rescues the paper's central number. Opened 2026-08-10.
4. `RESEARCH_QUESTIONS.xlsx` is seeded from the template and empty. Esther's own margin
   comment on the draft asks Sophie for exactly this table. Opened 2026-08-10.
5. ⚠️ Target journal not recorded, so its AI-disclosure policy cannot be checked. The
   manuscript follows STROBE and is registered as NCT07051460 (retrospectively). Opened
   2026-08-10. ⚠️ **These questions were dropped from the client summary on 2026-08-17** (Esther's
   decision), so items 5, 6 and 7 now need a route other than `revisions/analysis_summary.md` —
   they are not being asked of Sophie by that document. The AI-disclosure table in
   `MANUSCRIPT.md` §3 is filled in and accurate; only the journal's policy is unchecked.
6. ⚠️ The reviewer letter on disk is **incomplete** — it starts at point 2 and contains a
   literal `(.....)`. Points 1 and 3+ have not been seen. Opened 2026-08-10.
7. ⚠️ Only one reviewer's comments are present (Lihan Chen). Whether there were others is
   unknown. Opened 2026-08-10.
8. ~~⚠️ **The two concordance definitions are needed from Sophie.**~~ ✅ **COS–DS resolved
   2026-08-17 — 5/3/3 reproduces exactly.** Esther read the rule off the draft (Results ¶178 +
   Fig. 2): all three COS slots judged, a slot matching iff the COS eliminated **and at least one**
   of its anatomical equivalents did. Earlier attempts failed by judging only the COS a participant
   had eliminated with, and by requiring *all* equivalents to match. Now asserted in
   `01_audiovisual_integration/src/reviewer_requested_tests.Rmd` §6b, so the knit fails if it drifts.
   The COS–DS concordance **can go into the revision**.

   ⚠️ **What remains is narrower and does not block anything:** the *spatial* concordance (12/5/3)
   recorded in the 2026-08-10 notes appears **nowhere in the draft on disk**. The open question is
   whether it was in the **submitted** version, which is not on disk. Also still true: the
   `reconciliation.csv` "manuscript" column for both concordance rows is unverified against the
   draft and should be corrected once that is answered.

   *Original text, kept for the record:* Neither the spatial
   concordance nor the COS–DS concordance reproduces under any operationalisation tried, and
   the manuscript, the recount and the rebuild give three different answers:
   spatial 12/5/3 vs 2/12/6 vs 7/12/1; COS–DS 4/5/3 vs 5/3/3 vs 5/5/1. The cause is
   definitional. Opened 2026-08-10, carried from item 1. ⚠️ The regulador/perturbador rule
   supplied on 2026-08-17 does **not** answer this — it is a different endpoint.

   **Narrowed 2026-08-17, after the draft was read in full.** The picture was partly a
   bookkeeping artefact:

   - The draft contains **exactly one** concordance analysis — anatomical COS↔DS, Results ¶178,
     **5 complete / 3 partial / 3 none**. The Spanish recount says 5/3/3. Reviewer 1's letter
     quotes 5/3/3. **Three independent sources agree**; only the rebuild (5/5/1) differs. The
     "manuscript 4/5/3" in `reconciliation.csv` looks like a transcription error.
   - The **"spatial concordance 12/5/3" is not in the draft at all** — there is no same-drawings
     analysis in it. That whole reconciliation row may be answering a question the paper never
     asked. ⚠️ **Ask Sophie which version those figures came from** before correcting the table;
     the submitted file is not on disk.
   - The draft states its own definition: *"matching effects for some but not all COS
     conditions"* — about which stimuli matched, **not** "50% of the drawings". Three readings
     of it were implemented (8/0/3, 2/6/3, 5/5/1) and **none reproduces 5/3/3**, so the counts
     stay blocked. Reading E does reproduce the earlier 5/5/1 rebuild exactly, confirming that
     computation was sound rather than buggy.

   **What is no longer blocked:** the reviewer's request for an *agreement measure* is answered
   without the concordance definition — see item 11.

9. ⚠️ **The `perturbador` endpoint is statistically fragile and is new to the paper.** Built
   2026-08-17 from Esther's rule by `01_audiovisual_integration/src/collapse_conditions_and_classify.Rmd`.
   Its companion `regulador` is sound — it restates the published elimination endpoint and
   independently reproduces 18/23. But `perturbador` catches **13 of 15** eligible
   participants, and its criterion is a disjunction over 132 binary cells where regulador's is
   a conjunction over 12; at 1% per-cell instability a 132-cell disjunction fires for ~73% of
   people unaided. With `E1` measured once (item 3), 87% cannot be separated from noise.
   **Reportable as description, not as evidence that oral stimulation disrupts vision**, and
   not under a dispositional noun. Resolution depends on item 3. Opened 2026-08-17.

10. 🔴 **The inferential analysis is null, and the paper's conclusion depends on it.** Run
    2026-08-17 by `01_audiovisual_integration/src/prevalence_ci_and_paired_contrasts.Rmd`
    (plan analyses 2–6). The paired within-participant contrast — exact McNemar plus paired
    risk difference per stimulus, which is what "does oral stimulation reduce VS" actually
    requires — returns **risk differences of −7.9 to +15.8 percentage points with every
    interval crossing zero, p = .24 to 1.00, all BH-adjusted p = 1.00**, and a pooled GLMM of
    **OR = 0.79 [0.32, 1.95], p = .61**.

    The published 18/23 is not wrong; it counts only improvement and is structurally blind to
    worsening, and in this data the two directions are near-equal. ⚠️ **This is uninformative,
    not evidence of no effect** — the intervals are ~40 points wide, so the opposite claim
    would be the same error with the sign flipped. Three options for the revision are laid out
    in `Manuscript/MANUSCRIPT.md` §7; **the choice is Esther's.** Opened 2026-08-17.

11. **The reviewer's requested tests are all now supplied** — `01_audiovisual_integration/src/reviewer_requested_tests.Rmd`,
    run 2026-08-17 on the **collapsed (clinical) framing** at Esther's direction. All five
    published prevalence cells and 18/23 reproduce before anything is tested.

    | Request | Result |
    |---|---|
    | 60.5% vs 81.6% | exact McNemar **p = .057**; RD **−21.1 pp [−37.9, −2.5]** |
    | Cochran's Q, 3 measurable phases | **Q = 11.41, df = 2, p = .003** |
    | DS vs COS efficacy | 69.6% [49.1, 84.4] vs 56.5% [36.8, 74.4]; RD **+13.0 [−8.5, +32.8]**, p = **.45** |
    | Cohen's κ, anatomical pairs | **0.10 [−0.37, 0.56]** against 69.7% raw agreement |

    ⚠️ Two reversals of earlier refusals, both deliberate and logged: **Cochran's Q** and
    **Cohen's kappa** were declined on 2026-08-10 and have now been produced *with* the
    reasoning, which answers the reviewer better than a refusal. The kappa result vindicates the
    original objection — 69.7% agreement returning κ = 0.10 is the prevalence/bias paradox,
    measured rather than predicted.

    🔴 **Esther flagged the opportunity asymmetry herself, before reading any of it**
    (`ANALYSIS_PLAN.md` §2a.13): the oral conditions had ~11× the chances to be positive and
    sound was never repeated to match. The reviewer did not raise it. **Not volunteering it in
    the reply is defensible; printing the collapsed comparisons in the paper without it is
    not.** Opened 2026-08-17.

12. **Two arithmetic errors in the draft**, found 2026-08-17 while tabulating the percentages:
    Results ¶120 says *"Of these 34:"* but gives percentages of **38** (7.9 / 29.0 / 52.6); and
    elimination is printed as **47.3% (18/38)** when the population at risk is the 23 who had a
    sound-induced VS → **78.3% [58.1, 90.3]**. Also, the paper uses **"OPS" for two different
    phases** — the prevalence section means phase 4 (oral alone), the elimination section means
    phase 3 (oral + sound). All three need fixing in the revision. Opened 2026-08-17.

## Language in the manuscript

The paper claims more than the design supports, and the reviewer noticed. The abstract and
conclusions use "eliminates", "modulates" and "support functional sensory interactions" on
an uncontrolled, unrandomised, unblinded within-subject design with a subjective outcome.
Every one of those has to become descriptive at revision. The Methods section is already
appropriately careful; it is the framing that overreaches.
