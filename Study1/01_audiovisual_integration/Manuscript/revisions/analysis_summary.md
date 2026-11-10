# Statistical analysis for the revision

**For:** Sophie Román-Richon · **From:** Esther Guiu Hernandez · **Date:** 2026-08-19

---

# INTRODUCTION

## 1. The design

Thirty-eight healthy young adults (31 F, 7 M; 23.6 ± 2.4 years), each acting as their own
control. The Vertical Maddox Test dissociates binocular vision vertically; the participant
reports whether the red line disappears in front of any of 12 drawings flanking the light spot
at 4 m. That absence is the **visual pseudo-scotoma (VS)** — the outcome, a subjective yes/no per
drawing.

Four phases, in **fixed order, never randomised**:

| Phase | Condition | Conditions in the phase | In the data |
|---|---|---|---|
| 1 | No stimuli — baseline screening | 1 | not recorded as a column |
| 2 | Sound alone (500 Hz, 500 ms, 50 dB, bilateral) | 1 | `E1` |
| 3 | Sound **+** each oral stimulus | 11 | `E2`–`E12` |
| 4 | Each oral stimulus alone, sound off | 11 | `E13`–`E23` |

The eleven oral proprioceptive stimuli (OPS) are 3 **COS** (M1, M2, M3 — tongue and lip
positions, self-performed) and 8 **DS** (buccal, palatal and lingual probe pressure on 1.1, 2.1,
3.1, 4.1, applied by the operator at 0.2 N). COS always ran before DS within phases 3 and 4.

Three features of this design govern everything below, and none of them can be fixed by analysis:

- **Phase 2 has one condition; phases 3 and 4 have eleven each.** Any figure that asks "did *any*
  stimulus do X" gives the oral phases eleven chances against sound's one.
- **The sound-only condition was measured once.** So the outcome's test–retest stability is
  unknown, and nothing in the data can separate a change from the instability of a repeated
  subjective judgement.
- **Condition is confounded with time.** Phase 4 always ran last, so a phase difference carries
  fatigue, practice and expectation with it.

## 2. The hypotheses

Taken from the aims (Introduction ¶35–38) and from what the Results actually report:

| | Hypothesis | Endpoint | Population |
|---|---|---|---|
| **H1** | Sound and oral proprioceptive stimuli each induce visual pseudo-scotomas under VM conditions | Proportion reporting VS | all 38 |
| **H2** | Adding an oral proprioceptive stimulus eliminates a sound-induced VS | Proportion whose VS cleared, sound maintained | the 23 with a sound-induced VS |
| **H2b** | The effect is preferentially periodontal (DS) rather than broad oral mechanosensory (COS) | Elimination by DS vs by COS | the same 23 |
| **H3** | An anatomically equivalent DS reproduces the effect of each COS | Concordance between paired stimuli | the 11 who eliminated with both types |

## 3. What the reviewer asked for

Reviewer 1 (Lihan Chen). ⚠️ **The letter I hold begins at point 2 and contains a literal
`(.....)`, so points 1 and 3 onwards have not been seen, and I do not know whether there were
other reviewers.** Please send the complete letter — anything below only answers what is on the
page.

Verbatim, as received:

> **2. Results are reported only descriptively; no inferential statistics are used — this is a
> critical flaw.**
>
> The statistical analysis section states only that "data were expressed as counts and percentages"
> and that descriptive statistics are reported as mean ± SD. No inferential statistical tests are
> reported anywhere in the paper. This is a serious problem because the paper's central claims are
> comparative and causal in nature:
>
> The claim that OPS eliminates sound-induced VS rests on comparing proportions across conditions
> (e.g., 60.5% vs. 81.6%; 18/23 elimination), yet no test (e.g., McNemar's test for paired
> proporevaute tions, chi-square tests, or Cochran's Q across the four phases) is performed to
> establish that these differences are not attributable to chance.
>
> The comparison of DS vs. COS efficacy, and the analysis of concordance between anatomically
> equivalent stimulations (complete/partial/no concordance in 5/3/3 cases), are presented as raw
> counts with no measure of agreement (e.g., Cohen's kappa) or confidence intervals.
>
> No confidence intervals are provided for any of the reported proportions, and no effect sizes are
> given.
>
> Without inferential statistics, the reliability of the experimental results cannot be evaluated:
> with n = 38 (and subgroups as small as n = 11), the observed percentages may be well within
> sampling variability. The authors must specify an a priori statistical analysis plan, apply
> appropriate inferential tests for repeated-measures categorical data, report test statistics,
> exact p-values, confidence intervals, and effect sizes, and justify the adequacy of the sample
> size (a power analysis or an explicit statement that the study is exploratory with correspondingly
> tempered conclusions). As currently presented, the statement that the findings "support functional
> sensory interactions" is not warranted by the evidence shown.
>
> (.....)
>
> Overall, I believe the research question is interesting and the dataset potentially informative,
> but the manuscript in its current form is not acceptable: it does not follow APA style, the
> findings are supported only by descriptive counts without inferential statistics (rendering the
> central conclusions unreliable), and key experimental details (trial structure, randomization,
> blinding, reliability of the subjective outcome) are missing. I recommend a major revision in
> which the authors (i) thoroughly reformat the manuscript per APA guidelines, (ii) conduct and
> report appropriate inferential analyses with effect sizes and confidence intervals, and (iii)
> substantially expand the methodological description.
>
> Lihan Chen

---

# ANALYSIS SUMMARY

## H1 — Prevalence of visual pseudo-scotomas

**What needs fixing:** every proportion needs a 95% confidence interval, and three numbers in the
Results text are arithmetically wrong.

**Method — Wilson score intervals.** At n = 38 with proportions running from 8% to 90%, the
textbook Wald interval (p ± 1.96·SE) misbehaves: it is too narrow near 0% and 100% and can run
past the 0–100% boundary. The Wilson score interval inverts the score test instead of assuming
normality of the estimate, so it stays inside the bounds and holds its nominal coverage at this
sample size. It is the standard choice for single proportions in samples of this size.

| Quantity | | 95% CI |
|---|---|---|
| No VS under any condition | 4/38 = 10.5% | 4.2 – 24.1% |
| VS under at least one condition | 34/38 = 89.5% | 75.9 – 95.8% |
| VS with sound only | 3/38 = 7.9% | 2.7 – 20.8% |
| VS with OPS only | 11/38 = 28.9% | 17.0 – 44.8% |
| VS with both | 20/38 = 52.6% | 37.3 – 67.5% |
| **VS during sound stimulation** | **23/38 = 60.5%** | **44.7 – 74.4%** |
| **VS during oral stimulation** | **31/38 = 81.6%** | **66.6 – 90.8%** |

Intervals are roughly ±15 percentage points wide. **That width is the honest answer to the
reviewer's question about whether 38 participants is enough**, and a better answer than a power
calculation.

### Three corrections to the Results text

| Where | Problem | Fix |
|---|---|---|
| ¶118–121 | *"Of these 34:"* followed by 7.9% / 29.0% / 52.6% — those are percentages **of 38** | Change the sentence to *"Of the 38:"*, or recalculate as 8.8% / 32.4% / 58.8% |
| ¶146, Abstract | Elimination given as **47.3% (18/38)** | Arithmetically right but the wrong denominator: the group at risk of *eliminating* a sound-induced VS is the 23 who had one → **78.3%**. Lead with 78.3% of 23 and keep 47.3% of 38 as a secondary figure |
| ¶124 vs ¶146 | **"OPS" names two different phases** — phase 4 (oral alone) in the prevalence section, phase 3 (oral + sound) in the elimination section | Name the phase explicitly at each mention |

### 1.1 The two prevalences are not built the same way

The 60.5% comes from a single condition; the 81.6% asks whether *any* of eleven oral stimuli
produced a pseudo-scotoma. Both are legitimate quantities and both are correctly calculated — the
81.6% is exactly what *"did OPS ever induce a VS in this person?"* means — but the sound condition
was presented once and the oral conditions eleven times, so the two figures did not have the same
number of chances to be positive.

**Nothing needs to change in the Results.** This belongs in the Discussion, as one sentence of
limitation: the study cannot present a like-for-like comparison of sound against oral stimulation,
because the sound condition was not repeated to match. That is a design limitation, not a
calculation problem, and it sits naturally alongside the other limitations already listed there.

For your own reference, the per-stimulus figures behind the 81.6%:

| Condition | Prevalence | 95% CI |
|---|---|---|
| Sound alone | 60.5% (23/38) | 44.7 – 74.4% |
| Each oral stimulus **alone**, individually | 34.2% to 55.3% | ~±16 pp each |
| Each oral stimulus **with sound**, individually | 44.7% to 68.4% | ~±16 pp each |
| Any of the eleven oral stimuli alone (the published 81.6%) | 81.6% (31/38) | 66.6 – 90.8% |
| Any of the eleven oral + sound conditions | 89.5% (34/38) | 75.9 – 95.8% |

![Prevalence with 95% Wilson confidence intervals](../../outputs/figures/prevalence_with_ci.png)

**Figure 1 — prevalence with 95% Wilson confidence intervals. For this document only; not proposed
for the manuscript.** Upper panel: one condition per row. Lower panel: rows combining 3, 8 or 11
conditions. It is here so the per-stimulus values are on record and traceable, not as a figure to
publish — a per-stimulus figure would invite questions about individual stimuli that this study
is not designed to answer.

> **H1 in one sentence.** A visual pseudo-scotoma was reported by 60.5% of participants under sound
> alone (23/38, 95% CI 44.7–74.4%) and by 81.6% under oral proprioceptive stimulation (31/38,
> 66.6–90.8%) — so under Vertical Maddox conditions both sound and oral stimulation are associated
> with visual pseudo-scotomas in a majority of healthy young adults, with the caveat, for the
> Discussion, that the oral figure combines eleven stimulus conditions against the single sound
> condition and the two are therefore not directly comparable.

---

## H2 — Elimination of the sound-induced pseudo-scotoma

Of the 23 participants with a sound-induced VS, **18 lost it entirely — all twelve drawings clear
— while the sound continued**, under at least one of the eleven oral stimuli.

> **18/23 = 78.3%, 95% CI 58.1 – 90.3%; exact binomial test against 50%, *p* = .011; Cohen's
> *g* = 0.283. Exploratory.**


### 2.1 Why not McNemar

McNemar compares two paired conditions by counting who changed in each direction. Here **only one
direction exists.** The 23 were selected *because* they showed a VS under sound, so within that
group the rate under sound is 100% by definition — not measured, but by construction. Nobody in
the group can acquire a VS they already have.

The cell that would carry evidence *against* improvement is therefore empty by arithmetic, and
McNemar collapses to 2 ÷ 2^(number who improved): 6 improvers gives *p* = .031, 10 gives .002, 18
gives .0000076. The *p*-value is a relabelling of the count, and it implies a comparison that was
never made.

This is not the same as choosing a one-sided test. A one-sided test still lets the data disagree
with us — participants *could* get worse and the test would simply fail to reject. Here they
cannot.

### 2.2 Understanding the 50% baseline

The exact binomial test replaces the impossible comparison with a value from outside the data. It
asks one question: **did the stimuli eliminate the pseudo-scotoma more often than pure chance?**

#### Why 50% as a starting point

100% of these participants started with the sound-induced pseudo-scotoma, by definition of how the
subgroup was formed. Because the sound-only condition was never re-presented, we have no measured
rate at which it fades on its own — so there is no empirical baseline to test against. In
exploratory work, 50% — a coin flip — is the conventional benchmark when no measured one exists.

#### ⚠️ The "11 tries" problem — why 50% is generous here

50% is standard, but in this particular setup it is a *lenient* bar:

- Most of the 23 had only **1 or 2** of the 12 drawings affected.
- Each participant was exposed to **11** oral stimuli.
- Success required clearing those drawings under **at least one** of them.

Rolling a die eleven times needing one specific number is far likelier than rolling it once. With
eleven attempts to clear one or two drawings, the chance of clearing them by accident somewhere in
the session is plausibly **above** 50%, not below it. Putting numbers on it: if each affected
drawing had a probability *q* of reading clear on a re-read with no stimulus effect at all, the
"elimination" rate would be **31% at *q* = 0.3, 45% at *q* = 0.4, and 59% at *q* = 0.5** — the last
already above the value being tested against.

#### How far the finding holds

| Reference rate tested against | *p* | Finding holds? |
|---|---|---|
| 30% | < .001 | yes |
| 40% | < .001 | yes |
| 50% | .011 | yes |
| **56%** | **.035** | **yes — the boundary** |
| 60% | .089 | no |
| 70% | .50 | no |

**The finding holds as long as a sound-induced pseudo-scotoma would clear on its own in fewer than
about 56% of people across eleven attempts. Above 60%, it does not.**

**The takeaway:** testing against 50% establishes that the result beats a simple guess, but because
participants had eleven opportunities to succeed, a confirmatory study must *measure* the control
rate rather than assume it. **A repeat of the sound-only condition, even in a small subgroup, is
the single most valuable addition to any future protocol** — and it cannot be recovered from the
data already collected.

#### Draft wording for the Discussion / Limitations

> The observed elimination rate (78.3%, 18/23) exceeded the 50% exploratory benchmark (*p* = .011).
> However, this result should be interpreted with caution. Because the response criterion required
> clearing the affected drawings under only one of eleven oral stimuli, the repeated opportunities
> naturally elevate the unmanipulated chance of success. Sensitivity analysis shows that the effect
> remains statistically significant (*p* < .05) only if the true spontaneous clearance rate across
> trials is below 56%. These exploratory findings establish proof of concept, but establishing an
> empirical baseline through repeated sound-only control trials remains essential for future
> confirmatory testing.

### H2b — DS versus COS

**This is the paper's own second secondary objective**, stated in Introduction ¶38 — *"to compare
the effects of different types of oral proprioceptive stimulation … to determine whether the
observed modulation is preferentially associated with periodontal proprioception or with broader
oral mechanosensory activation"* — and restated in Methods ¶91. The reviewer independently asked
for it. It is a study question, not an addition, which is why it sits here under H2 rather than
under Additional analyses.

> Dental 16/23 = 69.6% (49.1 – 84.4%) vs combined 13/23 = 56.5% (36.8 – 74.4%); paired risk
> difference **+13.0 pp (−8.5 to +32.8)**; exact McNemar ***p* = .45**. Agreement between the two
> types: 16/23 = 69.6%, Cohen's κ = 0.36 (−0.04 to 0.75).

**Why McNemar here, when §2.1 rejects it for the elimination endpoint.** Every one of the 23
participants is classified twice — did DS clear it, did COS clear it — so the data are paired, and
the table is the paper's own 11 / 5 / 2 with the five non-responders added:

| | Cleared by COS | Not cleared by COS | |
|---|---|---|---|
| **Cleared by DS** | **11** | **5** — DS only | 16 |
| **Not cleared by DS** | **2** — COS only | 5 | 7 |
| | 13 | 10 | **23** |

Unlike the elimination endpoint, **nothing forces either off-diagonal cell to be empty.** A
participant can respond to DS and not COS, or to COS and not DS, and both happened — 5 and 2. Those
7 discordant participants are the whole of the evidence, and McNemar tests exactly them. The test
is a real comparison here, not a relabelling of a count.

**No difference between stimulus types can be demonstrated.** Seven discordant participants is too
few to distinguish anything but a very large difference, and the interval (−8.5 to +32.8 pp) says
so directly.

⚠️ **A caveat that has to travel with this comparison.** DS comprised 8 stimuli against COS's 3, so
the two arms differ in the number of opportunities as well as in stimulus type. The higher dental
figure is therefore **not** evidence that periodontal input is superior — and had the test come out
significant, the difference still could not have been attributed to the stimulus type. Equalising
the arms would mean picking 3 of the 8 dental stimuli, and no principled basis for choosing exists.
The per-stimulus elimination rates in Figure 2b are the version of this question that is free of
the asymmetry, and they show DS and COS interleaved rather than separated: 31V (DS) is highest at
52.2%, M2 (COS) second at 47.8%.

### 2.3 The heatmaps

Two views of each thing. **The collapsed figures (2a, 3a) are the ones for the manuscript** — they
match the published counts and carry publication wording, ready to drop in. **The per-stimulus
figures (2b, 3b) are for this document only**, on the same reasoning as Figure 1: they would invite
questions about individual stimuli that the study is not designed to answer. All four use **OPS =
oral proprioceptive stimuli**, matching the paper's own abbreviation.

#### The elimination endpoint

![Elimination, collapsed](../../outputs/figures/heatmap_elimination_collapsed.png)

**Figure 2a — the endpoint as the paper reports it.** One row per participant, two columns:
pseudo-scotoma under sound alone, and whether *any* of the eleven oral stimuli cleared it. The 18
green cells are the 18/23.

![Elimination, participant by stimulus](../../outputs/figures/heatmap_elimination.png)

**Figure 2b — the same 23 participants, stimulus by stimulus.** Each column is one oral stimulus
applied with the sound maintained; green = all twelve drawings clear. The five all-blue rows at
the foot are the five in whom nothing worked.

**Figure 2b is the strongest thing in the dataset**, and it is a person-specific finding, not a
stimulus-specific one. Participants 11 and 30 cleared with all eleven stimuli; participants 22,
36, 39 and 43 cleared with exactly one, and each with a *different* one — M2, 21V, 21P and 31V
respectively. No single stimulus comes near 78.3% on its own: individually they range from 26.1%
(11V, 21V, 21P) to 52.2% (31V), and testing each of the eleven against the same 50% reference,
**none differs from a coin flip in either direction** once the eleven tests are accounted for.
The intervals per stimulus are 35–40 points wide, so the stimuli must not be ranked against each
other.

⚠️ **None of this goes into the paper**, which reports collapsed analyses only. It is here because
it determines what the Discussion may claim, and the claim below is the one it supports.

So the supported claim is: *for most people with a sound-induced pseudo-scotoma, some oral
stimulus can be found that removes it, and which one differs between individuals* — not *oral
proprioceptive stimulation removes sound-induced pseudo-scotomas*. This matches the
inter-individual variability the Discussion already raises.

#### Prevalence across the three phases

![Prevalence by phase, collapsed](../../outputs/figures/heatmap_vs_binary_collapsed.png)

**Figure 3a — one value per participant per phase.** Sound alone 23/38, sound + oral 34/38, oral
alone 31/38. The same yes/no question in every cell, so the three phases are on one scale.

![Pseudo-scotoma across all three phases](../../outputs/figures/heatmap_vs_binary_three_phases.png)

**Figure 3b — the same thing, condition by condition**, all 38 participants and all 23 measured
conditions. For this document only.

The three column totals in Figure 3a are not a like-for-like comparison: the second and third
columns combine eleven conditions against the first column's one, which is the point for the
Discussion set out in §1.1. The figure's own caption says so, so it can go into the paper as it
stands.

> **H2 in one sentence.** 18 of the 23 participants with a sound-induced pseudo-scotoma (78.3%,
> 95% CI 58.1–90.3%) lost it completely under at least one oral stimulus while the sound
> continued — higher than a 50% reference rate (*p* = .011, Cohen's *g* = 0.283) — but no single
> stimulus achieved this in more than 52.2% of them, the effective stimulus differed between
> individuals, DS and COS did not differ (+13.0 pp, 95% CI −8.5 to +32.8, *p* = .45), and because
> the sound-only condition was never repeated the result cannot be separated from spontaneous
> resolution if that exceeds ~56%.

---

## H3 — Concordance between COS and anatomically equivalent DS

Among the 11 participants who eliminated with both stimulus types: **5 complete, 3 partial, 3 no
concordance.** These counts reproduce exactly from the raw data, and the manuscript, the Spanish
recount and the reviewer's letter all agree with them.

### 3.1 How the counts were obtained

Each participant contributes **three slots**, one per COS — including COS conditions that did not
eliminate. The anatomical pairing is the one stated in Methods ¶92–95:

| COS | Presumed force direction | Anatomically equivalent DS |
|---|---|---|
| M1 | tongue → palatal traction on upper incisors | 11P, 21P |
| M2 | lips → buccal pressure on all four incisors | 11V, 21V, 31V, 41V |
| M3 | tongue → lingual traction on lower incisors | 31L, 41L |

A slot **matches** if the COS eliminated the pseudo-scotoma **and at least one** of its equivalent
DS also did. Then: **complete** = all three slots match · **partial** = one or two · **none** =
zero.

| Class | n / 11 | % | 95% CI |
|---|---|---|---|
| Complete concordance | 5 | 45.5% | 21.3 – 72.0% |
| Partial concordance | 3 | 27.3% | 9.7 – 56.6% |
| No concordance | 3 | 27.3% | 9.7 – 56.6% |

**Worked examples, one of each:**

| Participant | Slot | COS eliminated? | Equivalent DS that eliminated | Match |
|---|---|---|---|---|
| **11** — complete | M1 · M2 · M3 | yes · yes · yes | 2/2 · 4/4 · 2/2 | ✅ ✅ ✅ |
| **41** — partial | M1 · M2 · M3 | no · yes · yes | 1/2 · 2/4 · 2/2 | ❌ ✅ ✅ |
| **18** — none | M1 · M2 · M3 | no · yes · no | 0/2 · 0/4 · 1/2 | ❌ ❌ ❌ |

Participant 18 is the clearest illustration of the paper's variability point: the manoeuvre worked
where its matched probe application did not, and the reverse in another slot.

**The agreement measure the reviewer asked for.** Pooling the 33 slots (11 participants × 3 COS):

| | ≥ 1 equivalent DS eliminated | No equivalent DS eliminated | Total |
|---|---|---|---|
| **COS eliminated** | **21** | **4** | 25 |
| **COS did not eliminate** | **6** | **2** | 8 |
| Total | 27 | 6 | **33** |

| Statistic | Value (95% CI) | What it counts |
|---|---|---|
| **Positive concordance** | **84.0%** (65.3 – 93.6) | of the 25 slots where the COS worked, 21 also had an equivalent DS work — **this is what the 5/3/3 is built from** |
| **Percent agreement** | **69.7%** (52.7 – 82.6) | the 21 + 2 slots where both behaved the same way |
| **Cohen's κ** | **0.10** (−0.37 to 0.56) | percent agreement corrected for chance |

### 3.2 Why κ = 0.10 when agreement is 70% — the kappa paradox

Chance agreement here is already 66.4%, because almost everything worked: the COS eliminated in 25
of 33 slots (76%) and the DS in 27 of 33 (82%), so the two coincide most of the time by luck
alone.

```
observed agreement            69.7%
agreement expected by chance  66.4%
kappa = (69.7 − 66.4) / (100 − 66.4) = 3.3 / 33.6 = 0.10
```

κ measures only that 3.3-point gap. When one outcome dominates there is very little room above
chance for κ to occupy, so it collapses towards zero however well the two measures agree — the
well-documented **kappa paradox** in high-prevalence settings. Prevalence-adjusted bias-adjusted
kappa (PABAK), which removes the effect, is **0.39** for these data.

**What to report:** percent agreement with its interval as the primary statistic, κ second because
the reviewer asked for it, and one sentence naming the paradox and giving the 66.4% chance
agreement. κ alone understates the agreement; percent agreement alone overstates it.

⚠️ Three limits, one clause each in the text: "at least one equivalent" is an uneven bar (M2 has
four equivalents, M1 and M3 two); the COS column is constrained because these 11 were selected for
eliminating with both types; and the 33 slots are three per participant, so the κ interval is
narrower than clustering would allow. At n = 11 this is exploratory whatever the numbers say.

> **H3 in one sentence.** Among the 11 participants who eliminated the pseudo-scotoma with both
> stimulus types, a COS and at least one of its anatomically equivalent dental stimuli agreed in
> 69.7% of the 33 pairings (95% CI 52.7–82.6%; Cohen's κ = 0.10, −0.37 to 0.56, depressed by 66.4%
> chance agreement), giving complete concordance in 5 (45.5%), partial in 3 and none in 3 — so the
> presumed anatomical equivalence between oral manoeuvres and periodontal stimulation is not
> reliably reproduced at the individual level.

---

# ADDITIONAL ANALYSES

**Not hypotheses of this study, and not going into the paper.** The study did not set out to
compare overall prevalence between sound, oral + sound and oral alone; it asks how common each
response is, and whether an oral stimulus removes a sound-induced pseudo-scotoma in the people who
have one. The reviewer named Cochran's Q and chi-square explicitly, so both were computed — and
they are held **here, in reserve**, rather than in the manuscript or in the reply.

Why they are held rather than reported: the phases contain 1, 11 and 11 conditions, so a test
between them measures how many chances each phase had as much as what was applied. The reply to
point 2a makes that argument to the reviewer instead of supplying the numbers. **If the reviewer
insists, these are what we send** — and they would then need a Methods sentence as well as a
Results one.

### Cochran's Q across phases

> Three measurable phases (sound alone 23/38, oral + sound 34/38, oral alone 31/38):
> **Q = 11.41, df = 2, *p* = .003.**

The proportion reporting a pseudo-scotoma is not the same across phases, and that is unlikely to
be chance. Q does not say *why*, and part of what it detects is the number of conditions applied —
eleven in phases 3 and 4 against one in phase 2.

**On the four phases the reviewer asked for.** Baseline was recorded as a screening result and is
not a column in the data file. Entering it as a column of zeros gives Q = 69.8, but a column that
is zero for everyone by construction cannot agree with any other, so the increase measures the
added column rather than anything about the stimuli. **If Q is ever reported, it is the three-phase
version**, with a sentence saying why the fourth is unavailable.

### Pairwise follow-up: sound vs OPS

> 60.5% vs 81.6%: exact McNemar ***p* = .057**; paired risk difference **−21.1 pp (−37.9 to
> −2.5)**; 14 discordant participants.

McNemar rather than chi-square because each participant contributes to both conditions — a
chi-square would treat the data as two independent groups of 38 and give the wrong answer.

⚠️ **This is the same opportunity problem as Cochran's Q, and it is why neither is printed.** The
oral side is a union over eleven conditions and the sound side is one, so the difference partly
measures how many chances each side had. The interval excludes zero and the exact test does not,
which is what a borderline result on 14 discordant pairs looks like — suggestive at best, and not
interpretable as a difference between sound and oral stimulation.

---

# METHOD WRITE-UP

Drop-in replacement for the current Statistical Analysis paragraph (¶111), which at present reads
only *"Data were expressed as counts, and percentages."* It covers only what the paper reports —
all analyses collapsed across stimuli. Edit freely.

> **Statistical analysis.** Data were analyzed in R (v4.5.0). All analyses were conducted after data
> collection and are exploratory. Descriptive statistics are reported as counts and percentages, or
> mean ± SD. Proportions are presented with 95% Wilson
> score confidence intervals to preserve nominal coverage near sample boundaries. Proportions
> representing a union across *k* conditions explicitly state *k* alongside the estimate, since a
> union over *k* conditions carries *k* opportunities to be positive. The elimination rate (complete
> resolution across 12 drawings under at least one oral stimulus) was tested against an exploratory
> 50% benchmark (H₀: p = 0.50) using an exact binomial test with Cohen's *g*, alongside a
> sensitivity analysis on that benchmark. Paired differences between oral stimulus categories
> (dental vs. combined oral stimuli) were tested using McNemar's exact test and reported as paired
> risk differences with 95% Newcombe intervals. Anatomical concordance between equivalent
> stimulations is presented as raw percent agreement (95% CI) as the primary metric, with Cohen's
> kappa and prevalence-adjusted bias-adjusted kappa (PABAK) reported alongside it to account for
> high-prevalence constraints.


**Removed, and why.** The Benjamini–Hochberg correction is gone — it applied only to the eleven
per-stimulus tests, and the paper reports nothing per stimulus. Those analyses stay in this
document, where they inform what the Discussion may claim, but they are not manuscript content and
should not appear in its Methods.

**Cochran's Q is not in this paragraph either**, and the reply to point 2a now matches: the paper
reports no test between phases, and the letter explains why rather than claiming one was run. The
paragraph above and the response letter are consistent — nothing is declared that is not reported,
and nothing is reported that is not declared.

If you decide to include Q or the sound-vs-OPS comparison after all, both need a Methods sentence
as well as a Results one. Tell me and I will add them; do not add one without the other.

---

# RESPONSE TO REVIEWER

Point-by-point, in the reviewer's order. Starting points for you to edit 

**2. "Results are reported only descriptively; no inferential statistics are used."**

>We thank the reviewer for this important feedback. We have thoroughly updated the manuscript to incorporate inferential statistics, confidence intervals, and effect sizes across all hypotheses. All reported proportions now carry 95% Wilson score confidence intervals. Paired comparisons between stimulus types (DS vs. COS) are evaluated using McNemar's exact test with Newcombe confidence intervals. The primary elimination endpoint is tested against an exploratory 50% benchmark using an exact binomial test accompanied by Cohen's g and a sensitivity analysis. Agreement analyses now include raw percent agreement, Cohen's kappa, and PABAK with 95% confidence intervals. The Statistical Analysis section has been expanded to detail all these methods

**2a. "No test is performed to establish that these differences are not attributable to chance
(e.g. McNemar's test, chi-square, or Cochran's Q across the four phases)."**

>We thank the reviewer for this observation. We have clarified the analytical approach for both main
objectives:

>1. **Prevalence estimation.** Estimating VS prevalence under sound vs. oral conditions is
   descriptive. Direct phase comparisons were not an aim of the study.

>2. **Elimination endpoint (central objective).** Paired tests (e.g., McNemar's) were unviable here
   because the subgroup was selected specifically for having a sound-induced VS, fixing baseline
   prevalence at 100% by construction; the non-improvement cell is empty by arithmetic. We
   therefore tested the elimination rate (18/23, 78.3%, 95% CI 58.1–90.3%) against an exploratory
   50% chance benchmark using an exact binomial test.

>**Limitation and sensitivity.** In the Discussion we explicitly note that the 50% baseline is an
exploratory benchmark. Because participants had 11 attempts to clear the affected drawings, the
repeated opportunities elevate the chance of clearance occurring for reasons unrelated to the
stimulus. Sensitivity analysis shows the result remains significant (*p* < .05) as long as the true
spontaneous clearance rate across those attempts is below 56%.

⚠️ **Note for you, Sophie — not part of the reply.**  I don't know if the reviewer wanted us to expplicetely compare the different phases  **the numbers exist if you would rather include
them** — Q = 11.41, df = 2, *p* = .003, and the sound-vs-OPS comparison at McNemar *p* = .057 with a
paired risk difference of −21.1 pp (−37.9 to −2.5). They are in the Additional analyses section
above. If you decide to report either, tell me and I will put the matching sentence back into the
Methods, since the paper must not carry a test its Methods do not declare.

**2b. "No measure of agreement (e.g. Cohen's kappa) or confidence intervals for the DS vs COS
comparison and the concordance analysis."**

> For the concordance analysis, complete concordance between anatomically equivalent stimulations
> was observed in 5 of 11 participants (45.5%, 95% CI 21.3–72.0%), partial concordance in 3 (27.3%,
> 9.7–56.6%) and no concordance in 3 (27.3%, 9.7–56.6%). At the level of individual pairings, 21 of
> the 25 pairings in which a combined stimulus was effective also showed at least one effective
> anatomically equivalent dental stimulus (84.0%, 65.3–93.6%).
>
> We report raw percent agreement as the primary agreement statistic: 69.7% (95% CI 52.7–82.6%)
> across the 33 pairings. Cohen's kappa on the same data is 0.10 (95% CI −0.37 to 0.56). This
> divergence is not evidence of poor agreement but the well-documented behaviour of kappa in
> high-prevalence settings, described in the literature as the kappa paradox. Because most stimuli
> were effective in this subgroup — the combined stimuli in 25 of 33 pairings and the dental stimuli
> in 27 of 33 — agreement expected by chance is already 66.4%, leaving only 33.6 percentage points
> of possible agreement above chance for kappa to register. Prevalence-adjusted bias-adjusted kappa
> is 0.39. We therefore lead with percent agreement, report kappa as requested, and interpret it in
> the light of the prevalence of effect. Given n = 11, all concordance analyses are presented as
> exploratory.

> **On stimulus-type efficacy.** Dental stimuli eliminated the sound-induced pseudo-scotoma in 16
> of 23 participants (69.6%, 95% CI 49.1–84.4%) and combined oral stimuli in 13 of 23 (56.5%,
> 36.8–74.4%); the paired difference is +13.0 percentage points (95% CI −8.5 to +32.8), McNemar
> exact *p* = .45, so no difference between stimulus types can be demonstrated. Only seven
> participants responded to one type and not the other. We note additionally that eight dental
> stimuli were applied against three combined oral stimuli, so the two categories differ in the
> number of opportunities as well as in stimulus type.

⚠️ **Note for you, Sophie — this one needs a decision, not a wording change.** You wrote that the
DS vs COS analysis goes in the reply but is **omitted from the manuscript**. As drafted, the
Methods paragraph declares McNemar's exact test for exactly this comparison — so the paper would
declare a test it never reports, which is the same gap the reviewer is complaining about. Two
consistent options:

- **Report it in the paper** (my preference — it is the paper's own second secondary objective,
  Introduction ¶38, and the reviewer has now asked for it twice). Methods stay exactly as you wrote
  them; add the three numbers above to the Results.
- **Keep it out of the paper** → delete the McNemar sentence from the Methods paragraph, which then
  declares no test other than the binomial. The reply above still stands, since a response letter
  may report analyses the manuscript does not.

Either works. What cannot stand is the current combination.

**2c–d. "No confidence intervals for any of the reported proportions, and no effect sizes."**

> All proportions now carry 95% Wilson score confidence intervals, and every comparison carries an
> effect size: Cohen's *g* for the elimination endpoint, and kappa with PABAK for the agreement
> analyses.

**2e. "The authors must specify an a priori statistical analysis plan."**

>We have expanded the Statistical Analysis section to define the statiscial analysis plan


**2f. "Justify the adequacy of the sample size (a power analysis or an explicit statement that the
study is exploratory)."**

>We  have further clarified in   the Methods and Discussion that this study is exploratory. Rather than conducting a post-hoc power calculation—which provides no additional information beyond the observed p-value—we report precision via 95% confidence intervals.
---

# WHAT MUST APPEAR IN THE LIMITATIONS

The first four are partly there already (¶202–205); the rest are additions, and the starred ones
are the ones a statistically literate reader will look for.

- Small convenience sample from one campus, 82% female, ages 20–29
- ⭐ **No randomisation of phase or stimulus order** — the four phases always ran in the same
  sequence, so any phase difference is partly attributable to fatigue, practice and expectation
- No operator or participant blinding, on a subjective yes/no outcome
- COS were self-administered while DS were applied with a calibrated probe
- ⭐ **No sham or placebo condition**
- ⭐ **The outcome's reliability was never measured** — the sound-only condition was presented once,
  so within-session stability is unknown
- ⭐ **The elimination endpoint conditions on an earlier response**, so regression to the mean and
  response instability cannot be separated from a stimulus effect
- ⭐ **The sound condition was presented once and the oral conditions eleven times**, so the two
  prevalences are not directly comparable and the study cannot offer a like-for-like contrast
  between sound and oral stimulation. Suggested wording: *"The proportion reported for oral
  proprioceptive stimulation combines eleven stimulus conditions, whereas the sound condition was
  presented once. The two proportions are therefore not directly comparable, and no inference is
  drawn as to which modality more readily induces a pseudo-scotoma."*
- The drawings' spatial layout was not recorded, so pseudo-scotoma location is nominal only

