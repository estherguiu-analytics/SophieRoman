> ⚠️ **SUPERSEDED 2026-08-17 by [`analysis_summary.md`](analysis_summary.md).**
>
> This file is kept, not deleted, because it is a **dated record of what was proposed before any
> results were seen** — which matters in a study whose pre-specification status is contested. Do
> not send it to Sophie; send `analysis_summary.md` instead.
>
> Two things in it are now known to be wrong, and are corrected in the new document: the
> concordance discrepancy was narrower than described here (the draft, the recount and the
> reviewer all give 5/3/3), and the "spatial concordance 12/5/3" attributed to the paper does not
> appear in the draft on disk at all.

# Statistical analysis for the revision — summary and two questions

**For:** Sophie Román-Richon · **From:** Esther Guiu Hernandez · **Date:** 2026-08-10

Reviewer 1's main statistical criticism is fair: the paper reports counts and percentages
with no statistical tests, no confidence intervals and no effect sizes, and its conclusions
are stronger than that evidence supports. This is fixable. Below is what I propose to do,
what I found while checking the data, and **two things I need from you before I can finish**.

---

## 1. I rebuilt every published number from your Excel file

Before running any new statistics I recalculated all the results in the paper directly from
the raw data. This matters because adding tests and confidence intervals to numbers that
turn out to be wrong would make the revision weaker than the original, and a sceptical
reviewer is entitled to check.

**The good news, and it is most of the paper.** These all came out exactly as published:

- 4 of 38 never experienced a pseudo-scotoma; 34 of 38 did at some point
- 23 of 38 with sound; 31 of 38 with oral stimulation
- 3 with sound only, 11 with oral stimulation only, 20 with both
- **18 of the 23 sound-responders had their pseudo-scotoma disappear** with an oral stimulus
- 11 of those 18 responded to both types of oral stimulus

Results sections 1 and 2 are sound and can stay.

**One number needs correcting.** The paper says 6 participants responded to dental stimuli
only and 1 to combined oral stimuli only. The data gives **5 and 2**. The Spanish recount
document reached the same 5 and 2 independently. This appears in the abstract as well as the
results, so both need changing.

**Two analyses I could not reproduce at all** — the spatial concordance and the
COS/DS concordance. See the questions below.

---

## 2. What I propose to run

Nothing here requires new data collection.

- **Confidence intervals on every percentage that enters a comparison.** For example, 60.5%
  becomes 60.5% (95% CI 44.7% to 74.4%). I will use the Wilson score method, which is the
  standard choice at this sample size. These intervals are wide, and that is itself the
  honest answer to the reviewer's question about whether 38 participants is enough.

  The one exception is the Phase 1 baseline. That is a screening measurement establishing
  that nobody showed a pseudo-scotoma before stimulation — it is not one of the comparisons,
  so it stays a plain count with no interval. I will say so explicitly in the response, so
  the reviewer does not read its absence as an oversight.
- **A statistical test for each oral stimulus**, comparing sound alone against that same
  stimulus applied while the sound continued. This is the paper's main claim, and it is the
  comparison the reviewer is right to ask for. Each comes with an effect size.
- **A single model using the full data.** At the moment the paper reduces your 10,488
  recorded observations — 38 people × 23 stimuli × 12 drawings — to one yes/no per person per
  phase. That is why the study looks small. Analysing at the level of individual stimuli uses
  874 observations instead of 38 and answers the reviewer's sample-size objection far better
  than simply adding tests to the summary table.
- **A correction for testing many stimuli at once**, so that a single positive result among
  22 comparisons is not over-interpreted.

**Two things the reviewer suggested that I will not do**, and I will explain why in the
response letter rather than leaving them out silently:

- *Cochran's Q across the four phases.* Phase 2 is one condition, but phases 3 and 4 are each
  eleven stimuli combined. A participant therefore has eleven chances to show a
  pseudo-scotoma in phase 3 against one in phase 2, so this test would mostly measure how
  many stimuli were applied, not their effect. The model above answers the same question
  properly.
- *Cohen's kappa for the concordance.* With only 11 participants and this pattern of
  responses, kappa gives a misleadingly low value even when agreement is high. I will report
  the actual agreement with a confidence interval instead.

---

## 3. Two questions I need answered

### Q1 — How exactly were the two concordance analyses calculated?

This is the one thing genuinely blocking me. Neither analysis reproduces, and the paper, the
Spanish recount and my own recalculation each give a different answer:

| | Paper | Spanish recount | My recalculation |
|---|---|---|---|
| Spatial concordance (exact / partial / none) | 12 / 5 / 3 | 2 / 12 / 6 | 7 / 12 / 1 |
| COS–DS concordance (total / partial / none) | 4 / 5 / 3 | 5 / 3 / 3 | 5 / 5 / 1 |

I do not think this is an arithmetic error by anyone. I think the definition is ambiguous.
"Partial concordance" is defined as agreement on *at least 50% of the drawings* — but 50% of
**which** set? The drawings affected by sound? The drawings affected by the oral stimulus?
The combined total? I tried each and none reproduces the published figures.

**Could you send me the exact rule you applied, ideally worked through for one participant?**
Until I have it, neither result can go into the revision.

### Q2 — Does Clàudia's TFG contain any repeated measurements?

The Spanish document mentions a *"pregunta labilidad"* from Clàudia's thesis. I need to know
whether any participant was tested **twice under the same condition** — particularly the
sound-only condition.

This matters more than it sounds. The paper's headline finding is that 18 of 23 people lost
their sound-induced pseudo-scotoma when an oral stimulus was applied. But those 18 were
selected *because* they showed a pseudo-scotoma in the first place, and then measured again.
With a yes/no judgement reported by the participant, some people would give a different
answer the second time simply because the measurement is not perfectly stable — regardless of
what stimulus was applied.

If Clàudia's data contains a repeat of the sound-only condition, I can estimate how much of
the 18/23 is real change rather than instability, and the finding becomes considerably
stronger. If it does not, we have to acknowledge this openly as a limitation, and soften the
claim accordingly.

---

## 4. What no statistical analysis can fix

The reviewer also asks about randomisation, blinding and the reliability of the outcome.
These are features of how the study was run, not of how it is analysed, so the honest
response is to state them plainly in the Limitations and narrow the conclusions to match. In
my experience a reviewer who sees a flaw acknowledged clearly accepts far more readily than
one who sees it defended.

Specifically, the paper should add that there was no sham or placebo condition; that the
outcome's reliability was never measured; that because the four phases always ran in the same
order, any difference between them is partly attributable to fatigue, practice and
expectation; and that the elimination finding is subject to the issue in Q2 above.

The conclusions also need softening. "Eliminates", "modulates" and "support functional
sensory interactions" claim cause and mechanism that this design cannot demonstrate. "Was
associated with" is what the data supports, and the reviewer is explicitly objecting to the
stronger wording.

None of this weakens the study. It is a genuinely interesting observation in a design that
was exploratory, and saying so clearly is what will get it published.

---

**Next step:** send me the answers to Q1 and Q2 and I will complete the analysis and draft
the point-by-point response to the reviewer.
