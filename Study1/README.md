# Study 1 — data dictionary

Derived by inspection on 2026-08-10 from the `Variables` sheet and the `Datos` header rows.
The workbook has no documentation of its own beyond the `Variables` sheet, and the manuscript
carries no codebook.

## Files in `data/raw/` — read-only

| File | What it is |
|---|---|
| `EXCEL TFG AGUSTÍ PARA YOLANDA.xlsx` | The participant-level data. **The only source.** |
| `RESULTADOS YOLANDA. TFG Agustí.docx` | A recount of the published results, in Spanish, with the recounter's own notes where the numbers disagree with the TFG. Evidence for the reconciliation, not a data source. |


## `Datos` sheet

40 rows × 280 columns. Row 0 is a merged group header, row 1 the column names, rows 2–39 the
**38 participants**.

| Columns | Contents |
|---|---|
| 0 | row index, 1–38 |
| 1 | `Código de Participante` — 1 to 54, **not contiguous**: 54 volunteers were screened and 38 met eligibility, so the IDs carry the gaps. Use this, not the row index, as the participant key. |
| 2 | `SEXO` — **1 = male, 2 = female**. 7 male, 31 female. |
| 3 | `EDAD` — years. Range 20–29, mean 23.6 (SD 2.4). |
| 4–279 | the outcome grid: 23 stimuli × 12 drawings = 276 binary columns, named `IM<1-12> E<1-23>` |

**Outcome coding: `1` = VS present, `0` = VS absent.** One value per drawing per stimulus.

So the file holds **38 × 23 × 12 = 10,488 binary observations**, or 874 at stimulus level
once collapsed across drawings. The manuscript reports only the collapse of the collapse —
"any VS in any drawing under any stimulus of a phase".

## Stimulus codes

Inventoried directly from the sheet's merged group-header row on 2026-08-17 by
`01_audiovisual_integration/src/collapse_conditions_and_classify.Rmd`, which reads the block
list from the workbook rather than hardcoding it. **23 blocks, 12 images each, confirmed:**

| Block type | Blocks | Group header in the sheet |
|---|---|---|
| Sound only | 1 (`E1`) | `ESTÍMULO 1 = SOLO SONIDO` |
| Sound + oral | 11 (`E2`–`E12`) | `ESTÍMULO n = <oral> + SONIDO` |
| Oral alone, no sound | 11 (`E13`–`E23`) | `ESTÍMULO n = <oral>` |
| Baseline, no stimulus | **0** | — not in the file |

`E1` is sound alone. `E2`–`E12` are the eleven oral stimuli **with** sound. `E13`–`E23` are
the same eleven **without** sound, in the same order.

The script cross-checks the condition number parsed from the group header against the `E<n>`
suffix of every one of the 276 column names, and stops if any column disagrees — so a
mis-spanned merged cell or a reordered block cannot pass silently.

| With sound | Without sound | Stimulus | Type |
|---|---|---|---|
| `E2` | `E13` | M1 — tongue tip behind upper incisors | COS |
| `E3` | `E14` | M2 — lips pressed together | COS |
| `E4` | `E15` | M3 — tongue tip behind lower incisors | COS |
| `E5` | `E16` | 11V — buccal pressure, tooth 1.1 | DS |
| `E6` | `E17` | 21V — buccal pressure, tooth 2.1 | DS |
| `E7` | `E18` | 31V — buccal pressure, tooth 3.1 | DS |
| `E8` | `E19` | 41V — buccal pressure, tooth 4.1 | DS |
| `E9` | `E20` | 11P — palatal traction, tooth 1.1 | DS |
| `E10` | `E21` | 21P — palatal traction, tooth 2.1 | DS |
| `E11` | `E22` | 31L — lingual traction, tooth 3.1 | DS |
| `E12` | `E23` | 41L — lingual traction, tooth 4.1 | DS |

COS = Combined Oral Stimuli, performed by the participant. DS = Dental Stimuli, applied by
the operator with a calibrated 0.2 N periodontal probe. V = vestibular/buccal, P = palatal,
L = lingual; tooth numbers are FDI notation for the four central incisors.

**The anatomical equivalences the paper tests** (Fig. 2), which define the concordance
analysis: M1 ↔ palatal traction on 1.1 and/or 2.1 · M2 ↔ buccal pressure on 1.1, 2.1, 3.1
and/or 4.1 · M3 ↔ lingual traction on 3.1 and/or 4.1.

## Drawing codes

`IM1` bell · `IM2` skull · `IM3` up arrows · `IM4` cross · `IM5` plane · `IM6` smiling face ·
`IM7` left arrow · `IM8` scissors · `IM9` square · `IM10` flag · `IM11` hand · `IM12` sad face.

Six sit either side of the light spot. The workbook does not record which side each is on, or
their spatial order along the row — so **any analysis of *where* a VS occurred needs that
layout from Sophie first.** Without it the 12 drawings are only nominal categories.

## Two absences that matter

⚠️ **There is no Phase 1 (no-stimuli) column.** The grid starts at `E1` = sound, confirmed by
the block inventory above. The paper's claim that no participant reported VS without stimuli
is not in this file. Either it lives somewhere not supplied, or it was never recorded as data.

**Esther confirmed on 2026-08-17 that no participant showed a VS on any image at baseline** —
i.e. the phase-1 result is 0/38, all twelve images, every participant.

This is recorded here as a **stated fact with provenance, and deliberately not written into
any dataset.** A column of 38 zeros in a CSV is indistinguishable from a measured column once
it exists, and every downstream script would treat it as data with a recorded source. The
assertion is load-bearing for one thing only — the perturbador rule, which reads a VS
appearing under sound + oral as induced by the oral stimulus, and needs the participant not to
have had one beforehand. It rules out a *pre-existing* VS. It does not address response
instability, because baseline was measured once too.

⚠️ **`E1` appears exactly once.** The sound-only condition was never repeated, so
within-session stability of the outcome is not estimable from this file. That is what makes
the paper's headline number — 18 of 23 "eliminating" their sound-induced VS — impossible to
separate from ordinary response instability. See open item 3 in `../CLAUDE.md`.

## Derived datasets in `data/processed/`

All rebuilt from raw by script; none is edited by hand. Overwritten on re-run.

| File | Built by | Shape | What it holds |
|---|---|---|---|
| `vs_binary_participant_by_stimulus.csv` | `vs_matrices_and_heatmaps.Rmd` | 38 × 24 | any VS per participant × stimulus, 0/1 |
| `vs_count_participant_by_stimulus.csv` | " | 38 × 24 | how many of the 12 drawings, 0–12 |
| `participant_condition_summary.csv` | `collapse_conditions_and_classify.Rmd` | 38 × 38 | one row per participant; one summary column per condition block |
| `participant_condition_long.csv` | " | 874 × 15 | one row per participant × condition — the modelling substrate |

`participant_condition_summary.csv` applies one of three collapse rules per block, according
to block type: `E1` becomes a 0/1 "any VS"; each of `E2`–`E12` becomes a classification
(`<code>*_class</code>`); each of `E13`–`E23` becomes a 0/1 plus a Spanish label
(`escotoma presente` / `escotoma no presente`).

## Figures

In `01_audiovisual_integration/outputs/figures/`. Every figure has exactly one generating
script, and every script writes exactly one copy of each figure — overwritten on re-run.

| Figure | Script | Shows |
|---|---|---|
| `heatmap_sound_and_classification.png` | `collapse_conditions_and_classify.Rmd` | sound as yes/no; the 11 sound + oral columns as regulador / perturbador / neither |
| `heatmap_oral_alone_vs.png` | " | the 11 oral-alone columns as yes/no, same row order as above |
| `heatmap_collapsed_three_conditions.png` | " | one value per participant per condition type — 3 columns |
| `classification_by_oral_stimulus.png` | " | classification counts per stimulus, panelled by label |
| `heatmap_vs_count.png` | `vs_matrices_and_heatmaps.Rmd` | how many of the 12 drawings, 0–12 |
| `vs_prevalence_barchart.png` | " | prevalence for sound-only and each oral-alone condition |
| `prevalence_with_ci.png` | `prevalence_ci_and_paired_contrasts.Rmd` | prevalence with 95% Wilson intervals; single conditions and unions in separate panels |
| `paired_risk_difference_forest.png` | " | the paired sound vs sound + oral contrast plotted against zero |

**Colours.** Blue `#2a78d6` = VS present, light neutral `#f0efec` = no VS, green `#2da44e` =
regulador, red `#cf222e` = perturbador, grey `#b8b5ae` = neither. Red/green is Esther's choice
(2026-08-17) and the pair measures **ΔE 7.2 under deuteranopia** — inside the band where
colour may not be the only carrier of a distinction. Every classified cell therefore also
prints **`R`** or **`P`**, so the three states are readable with the colour discarded. Do not
remove those glyphs: they are what makes the palette defensible for the roughly one man in
twelve who cannot separate that pair.

⚠️ `heatmap_vs_binary.png` was **deleted** on 2026-08-17, not regenerated — its content is now
split across the first two figures above. `vs_prevalence_barchart.png` had **no generating
script** before that date; it was found orphaned in `outputs/` and now has one.

## The regulador / perturbador classification

Definitions supplied by Esther on 2026-08-17. Applied per participant **per sound + oral
condition**, always against that participant's own sound-only (`E1`) result.

| Label | Sound alone (`E1`) | Sound + oral | Meaning |
|---|---|---|---|
| `regulador` | ≥ 1 image = 1 | **all 12** images = 0 | the oral stimulus removed the sound-induced VS entirely |
| `perturbador` | all 12 images = 0 | ≥ 1 image = 1 | the oral stimulus induced a VS that sound alone did not |
| `no clasificado` | anything else | | not forced into either label |

`no clasificado` merges two different situations, so the reason is kept in its own column
(`class_reason` in the long file): `vs_en_ambas` — VS under both, which includes partial
improvement, no change **and worsening** — versus `sin_vs_en_ninguna`, no VS under either.

⚠️ Three properties of the rule, needed to read any output from it:

1. **`regulador` is the paper's "elimination of sound-induced VS" endpoint, restated.** The
   participant-level count reproduces the published **18/23** exactly, which is asserted in
   the script and fails the knit if it ever stops holding.
2. **The two labels have different, disjoint denominators** — 23 eligible for regulador, 15
   for perturbador, fixed entirely by `E1`. They are not comparable and must never be summed.
   A participant can never be both; that exclusivity is built into the rule, not discovered.
3. **The criteria are asymmetric in how much noise they admit.** Regulador needs all 12 images
   to clear (a conjunction); perturbador needs 1 of 12 to appear (a disjunction). Perturbador
   counts therefore run higher for arithmetic reasons alone.

## Vocabulary

The Spanish documents and the English manuscript use different abbreviations for the same
things. Both appear in the sources:

| Spanish | English | |
|---|---|---|
| EV — escotoma visual | VS — visual pseudo-scotoma | the outcome |
| EO — estímulo oral | OPS — oral proprioceptive stimuli | |
| EOC — estímulos orales combinados | COS — combined oral stimuli | M1–M3 |
| ED — estímulos dentales | DS — dental stimuli | the eight probe applications |
| IM — imagen | drawing | the 12 fixation targets |
| regulador | — | oral stimulus removed the sound-induced VS |
| perturbador | — | oral stimulus induced a VS sound alone did not |


## The Excel is often locked

The workbook is frequently open in Excel, and then it cannot be read in place at all — not by
`readxl`, not by `file.copy`, not by `cmd copy`, which are all refused by the exclusive lock.
**`01_audiovisual_integration/src/readable_copy.R`** carries a `readable_copy()` helper that
falls through three routes and errors only if all three fail: `file.copy` → `cmd copy` →
asking the running Excel instance for a copy over COM (`SaveCopyAs`). The third writes a copy
elsewhere and never touches `data/raw/`.

It lives in its own file, sourced by both `.Rmd`s, because it was previously duplicated in each
and the two copies had already drifted apart.

⚠️ The COM route matches the workbook by an **ASCII-only wildcard**, because the filename
contains `AGUSTÍ` and PowerShell misreads a non-ASCII path out of a BOM-less script file — an
exact filename comparison silently matches nothing. Don't "tidy" that back into a full-path
comparison.
