// ════════════════════════════════════════════════════════════════════════
//  observability-calculus.typ
//  The Observability Calculus — Parts I–VI, single document.
//  Compile:  typst compile observability-calculus.typ
// ════════════════════════════════════════════════════════════════════════

#set page(paper: "us-letter", margin: 1in, numbering: "1")
#set text(size: 11pt)
#set par(justify: true, leading: 0.62em, spacing: 0.9em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 13pt)
#show heading.where(level: 2): set text(size: 11.5pt)

// theorem-like environments
#let defc  = counter("definition")
#let propc = counter("proposition")
#let definition(title: none, body) = block(above: 0.75em, below: 0.75em, width: 100%)[
  #defc.step()
  #strong[Definition #context defc.display()#if title != none [ (#title)].] #body
]
#let proposition(title: none, body) = block(above: 0.75em, below: 0.75em, width: 100%)[
  #propc.step()
  #strong[Proposition #context propc.display()#if title != none [ (#title)].] #body
]
#let iw(t) = emph[In words: #t]

#align(center)[
  #text(size: 17pt, weight: "bold")[The Observability Calculus]
  #v(0.2em)
  #text(size: 11.5pt)[A calculus for tracking uncertainty from sensor to estimate]
]
#v(0.4em)
#line(length: 100%, stroke: 0.5pt)

#outline(indent: auto)
#line(length: 100%, stroke: 0.5pt)

// ════════════════════════════════════════════════════════════════════════
= Introduction

The calculus applies to any chain of observation derived from transducing sensors. It
tracks uncertainty from sensor to downstream estimate.

It is especially useful for DOME because the chains are long, cascading, and integrate
heterogeneous sensors: a downstream estimate such as retinal input is only as trustworthy
as the entire chain that produces it.

Its use is to decide whether a buildable instrument provides sufficient precision, accuracy,
and reliability to answer a given research question, and, where it does not, to identify the
step that limits it.

== The chain

- *Energy.* Physical energy the environment makes available: light, inertial, contact
  force. A quantity carried by no available energy is unmeasurable.
- *Transduction.* A sensor converts one energy to a raw signal (cameras, IMUs, force
  plates). The one irreversible step. Each sensor fixes the reference frame of its raw
  signal.
- *Cascade.* Typed derivations: pose detection, triangulation, rigidification, composition,
  fusion, projection.
- *Estimate.* The chain terminates at the desiderata — the signals nearest the nervous
  system, in the frame the nervous system uses (retinal input, retinotopic; muscle drive).

== Steps typed by their effect on uncertainty

Every step is classified by what it does to uncertainty; this is the core of the calculus.
Two error kinds are tracked separately: _bias_ (systematic error that repeats and does not
average away) and _variance_ (random error that averages away over repeats).

#table(
  columns: (auto, auto, 1fr),
  inset: (x: 0.6em, y: 0.5em),
  align: (left + top, left + top, left + top),
  stroke: none,
  table.hline(stroke: 0.6pt),
  table.header([*Effect*], [*Step*], [*Instances*]),
  table.hline(stroke: 0.4pt),
  [Preserve], [exact computation],
    [triangulation, coordinate transform, rigid-body kinematics given parameters],
  [Amplify], [map with gain],
    [projection: existing error scaled by the Jacobian (gaze-point error $=$ gaze-angle error $times$ depth)],
  [Inject variance], [stochastic inference],
    [ML pose detection, learned priors, redundancy resolution; partly reported (confidence), partly not],
  [Inject bias], [assumption / injected constant],
    [rigid-body assumption (error $prop$ deviation from rigidity); anthropometry tables (error $prop$ table quality $times$ subject mismatch); usually unreported],
  table.hline(stroke: 0.6pt),
)

Preserve and amplify add no new uncertainty; they only transform error already present.
Inject-variance and inject-bias add new error, by different mechanisms. Composition and
fusion combine estimates and add error only through miscalibration.

// ════════════════════════════════════════════════════════════════════════
= Type system

== Frames

#definition(title: [reference frame])[
  A _reference frame_ $F$ is a coordinate system fixed either by a sensor (its physical
  geometry) or by a _registration procedure_: a construction that expresses one sensor's
  frame in a shared world (inertial) frame. #iw[the coordinate system a number is measured
  in; two numbers are only comparable once put in the same frame.]
]

== Channels and values

#definition(title: [channel])[
  A _channel_ $c$ is one degree of freedom, with value space $V_c$, belonging to a frame
  $F(c)$. #iw[one independent quantity — e.g. one rotation axis of the eye.]
]

#definition(title: [value])[
  A _value_ is a tuple $v = (v_c)_(c in C)$ over a channel set $C$, with $dim v = |C|$.
  #iw[a bundle of channels; status is tracked per channel, never as one verdict on the whole
  bundle.]
]

== Estimates

#definition(title: [estimate])[
  An _estimate_ of a value $v$ with true latent $v^*$ is a triple
  $hat(e) = (hat(v), b, Sigma)$ in a frame $F$, where
  $ e = hat(v) - v^* = b + n, quad bb(E)[n] = 0, quad "Cov"(n) = Sigma. $
  #iw[$hat(v)$ is our estimate, $v^*$ the truth we want, $e$ the error; $b$ is the bias
  (systematic, repeats), $n$ the noise (random, averages out), and $Sigma$ the noise's
  covariance (its size and its correlations across channels).] Bias and covariance are
  tracked separately because different step types produce different ones.
]

== Per-channel status

The status of channel $c$ is the marginal $(b_c, Sigma_(c c))$. #iw[how far off channel $c$
is on average ($b_c$) and how noisy it is ($Sigma_(c c)$, the diagonal entry).] It is a
magnitude, not a flag: _well measured_ means both small; _inferred / prior-dominated_ means
$Sigma_(c c)$ large or $b_c$ set by an assumption. The off-diagonal $Sigma_(c d)$ is the
noise shared between channels $c$ and $d$.

== Quantified vs. unquantified uncertainty

Both terms split into a reported and an unreported part, $b = b_q + b_u$ and
$Sigma = Sigma_q + Sigma_u$. #iw[subscript $q$ is the part we can quote a number for;
subscript $u$ is the part we know is there but cannot size.] Computation contributes to
neither; inference contributes $Sigma_q$ (reported confidence / posterior) and $Sigma_u$
(unreported); an assumption contributes $b_u$ (bias present, magnitude unknown), and $b_q$
only where the deviation is measured. The $u$ parts are carried so an unreported error is
never treated as zero.

== Inter-frame transforms and calibration

#definition(title: [transform, calibration])[
  A _transform_ $T : F -> G$ is itself an estimate — a pose value with its own error
  $(b_T, Sigma_T)$ — carrying a _calibration_ quality
  $ kappa = (kappa_s, kappa_t) in [0,1]^2. $
  #iw[how well two instruments are aligned, from $0$ (independent) to $1$ (perfect), split
  into $kappa_s$ spatial (geometric registration) and $kappa_t$ temporal (synchronization).]
  $kappa = (1,1) arrow.r.double T$ exact ($b_T = 0, Sigma_T = 0$);
  $kappa < 1 arrow.r.double (b_T, Sigma_T) > 0$, growing as $kappa -> 0$.
]

Mapping a value through $T$ composes $T$'s error into it; this is the only path by which
miscalibration enters. $kappa_s$ and $kappa_t$ degrade independently.

// ════════════════════════════════════════════════════════════════════════
= Operators

An _operator_ is a step in the pipeline: a map on estimates. We linearize it at the
operating point $hat(v)$ and write $J = partial O \/ partial v$ for its _Jacobian_
(#iw[how much and in what direction the output moves when the input moves; its size
$parallel J parallel$ is the gain]).

#definition(title: [general operator])[
  $O$ acts as
  $ (hat(v), b, Sigma) arrow.r.long.bar (O hat(v), space J b + d, space J Sigma J^top + Q), $
  with $d$ the _injected bias_ and $Q succ.eq 0$ the _injected covariance_ (#iw[the fresh
  bias and fresh noise this step adds on top of transporting what came in; $succ.eq 0$ means
  a valid, non-negative amount of noise]). The pair $(d, Q)$ classifies $O$.
]

*Bias convention.* $b = b_q + b_u$: $b_q$ propagates as a vector ($b_q arrow.r.bar J b_q$);
$b_u$ is carried as a bound $parallel b_u parallel <= beta$ with
$beta arrow.r.bar parallel J parallel beta$. #iw[known bias is pushed through like a value;
unknown bias is tracked as a worst-case size.]

== The three mechanisms

#definition(title: [transport])[
  $d = 0, space Q = 0$:
  $(hat(v), b, Sigma) arrow.r.bar (O hat(v), J b, J Sigma J^top)$. Adds nothing; existing
  error is carried through $J$. _Amplifies_ where $parallel J parallel > 1$, _contracts_
  where $parallel J parallel < 1$. Exact computation and geometric projection are both
  transport; projection is the large-$parallel J parallel$ case (error scaled by depth).
]

#definition(title: [inject variance])[
  $d = 0, space Q = Q_q + Q_u succ.eq 0$: $Sigma arrow.r.bar J Sigma J^top + Q$. Stochastic
  inference. #iw[a model-based step that adds noise; part reported, part not.]
]

#definition(title: [inject bias])[
  $Q = 0, space d = d_q + d_u$ with $parallel d_u parallel <= delta$:
  $b arrow.r.bar J b + d$. An assumption or injected constant. #iw[adds a systematic offset
  whose worst-case size $delta$ is set by how wrong the assumption is for this subject.]
]

== Composition

#definition(title: [composition $plus.o$])[
  For an estimate $(hat(v), b_v, Sigma_v)$ carried across frames by a transform $T$, with
  Jacobians $J_v, J_T$,
  $ b_w = J_v b_v + J_T b_T, quad
    Sigma_w = J_v Sigma_v J_v^top + J_T Sigma_T J_T^top. $
  #iw[chaining across frames transports the value and adds the transform's own calibration
  error.] At $kappa = (1,1)$ it is pure transport.
]

== Fusion

#definition(title: [fusion $join$, independent case])[
  For two estimates of the same value with _independent_ errors,
  $ Sigma_f = (Sigma_1^(-1) + Sigma_2^(-1))^(-1), quad
    hat(v)_f = Sigma_f (Sigma_1^(-1) hat(v)_1 + Sigma_2^(-1) hat(v)_2), quad
    b_f = Sigma_f (Sigma_1^(-1) b_1 + Sigma_2^(-1) b_2). $
  #iw[combine two readings of one thing, weighting each by its certainty ($Sigma^(-1)$).]
]

#proposition[
  $Sigma_f prec.eq Sigma_1$ and $Sigma_f prec.eq Sigma_2$. (#iw[fusing never increases
  uncertainty; $prec.eq$ is the Loewner order, "at most as much covariance in every
  direction."])
]

Fusion injects nothing itself under independence and a common frame. When the two errors are
correlated (a shared calibration), the independent formula understates the error; the
general correlated form is in the Chain-propagation section.

== Summary

#table(
  columns: (auto, auto, 1fr),
  inset: (x: 0.6em, y: 0.5em),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: none,
  table.hline(stroke: 0.6pt),
  table.header([*Operator*], [*Mechanism*], [*Injected $(d, Q)$*]),
  table.hline(stroke: 0.4pt),
  [computation, projection], [transport], [$(0,0)$; error carried by $J$],
  [inference], [inject variance], [$(0, Q)$, $Q succ.eq 0$],
  [assumption / constant], [inject bias], [$(d, 0)$, $parallel d_u parallel <= delta$],
  [composition $plus.o$], [transport $+$ calibration],
    [$(J_T b_T, space J_T Sigma_T J_T^top) -> 0$ as $kappa -> 1$],
  [fusion $join$], [variance reduction], [none (independent, common frame)],
  table.hline(stroke: 0.6pt),
)

// ════════════════════════════════════════════════════════════════════════
= Chain propagation

== The pipeline as a graph

A pipeline is a directed acyclic graph $cal(D) = (N, E)$: nodes $N$ are estimates, edges $E$
are operators. #iw[a wiring diagram of the whole measurement chain.] An edge $e : i -> j$
carries $(J_e, d_e, Q_e)$ and acts as in the general operator. Each injection is a fresh
_primitive source_ $xi_e$: an independent original error with mean $mu_e$ (its bias) and
covariance $Q_e$ (its noise). Stack them into $xi$, with mean $mu$ and block-diagonal
covariance $W = "Cov"(xi)$. #iw[every bit of new error entering anywhere gets its own
independent "source"; because they are independent, $W$ has no cross terms.]

== Linear error model

#definition(title: [sensitivity])[
  $S_i = sum_("paths " p : dot ~> i) product_(e in p) J_e$, the total sensitivity of node
  $i$'s error to the primitives. #iw[add up every route each source can take to reach node
  $i$, multiplying the gains along each route.]
]

#proposition(title: [closed form])[
  $e_i = S_i xi$, so $b_i = S_i mu$ and $Sigma_i = S_i W S_i^top$. #iw[a node's bias is the
  sum of source biases routed to it; its covariance is the sum of source noises routed to
  it.]
]

The edge-by-edge recursion is the operator law together with $Sigma_(j k) = J_e Sigma_(i k)$
for any other node $k$ (the fresh primitive at $e$ is independent of $k$).

== Cross-covariance and shared sources

#definition(title: [cross-covariance])[
  $Sigma_(i j) = S_i W S_j^top$. #iw[how much two nodes' errors move together.] Since $W$ is
  block diagonal, $Sigma_(i j) != 0$ iff $i$ and $j$ inherit a common primitive.
]

A single calibration feeding two routes is one such primitive, so the two routes are
correlated; tracking $Sigma_(i j)$ where routes converge is mandatory.

== Fusion under correlation

With $P_11 = Sigma_i, space P_22 = Sigma_j, space P_12 = Sigma_(i j) = P_21^top$ and
$M = P_11 + P_22 - P_12 - P_21$,
$ hat(v)_f = hat(v)_i + (P_11 - P_12) M^(-1) (hat(v)_j - hat(v)_i), quad
  Sigma_f = P_11 - (P_11 - P_12) M^(-1) (P_11 - P_21). $
#iw[the general two-estimate fusion that accounts for shared error; reduces to the
independent formula when $P_12 = 0$.]

#proposition(title: [shared error is not attenuated])[
  Write $e_i = c + n_i, space e_j = c + n_j$ with $c$ the common part (shared primitives) and
  $n_i, n_j$ independent. Then fusion leaves $c$ intact and $Sigma_f succ.eq "Cov"(c)$.
  #iw[the error two routes share — e.g. a common calibration bias — cannot be averaged away;
  it sets a floor.]
]

== Terminal result

At a terminal node $t$ (a desideratum) and channel $c$, propagation returns the marginal
$(b_(t,c), Sigma_(t,c c))$, each with its reported/unreported split; the unreported-bias
bound propagates as $beta_j = parallel J_e parallel beta_i + delta_e$, maximized over
converging paths. #iw[the final accuracy and precision delivered on the thing we actually
wanted.]

// ════════════════════════════════════════════════════════════════════════
= The sufficiency test

#definition(title: [requirement])[
  A research question fixes a set $R$ of required channels and, for each $c in R$, tolerances
  $b^*_c$ (accuracy) and $sigma^(*2)_c$ (precision). #iw[which quantities the study needs,
  and how accurate and how precise each must be.]
]

#definition(title: [worst-case delivered])[
  $ overline(b)_c = parallel b_(q,c) parallel + beta_c, quad
    overline(Sigma)_c = Sigma_(q,c c) + Sigma_(u,c c), $
  with $+infinity$ where a required bound is missing. #iw[the delivered error counting the
  unknown parts at their worst; $infinity$ if a part cannot be bounded at all.]
]

#definition(title: [margins and verdict])[
  $m^b_c = b^*_c - overline(b)_c$ and $m^Sigma_c = sigma^(*2)_c - overline(Sigma)_c$. For
  each $c in R$: *sufficient* if both margins $>= 0$ with finite bounds; *insufficient* if a
  margin $< 0$ with finite bounds; *uncertifiable* if a required bound is infinite. The
  system is sufficient for the question iff every $c in R$ is sufficient. The _binding
  channel_ is $limits("arg min")_(c in R) min(m^b_c, m^Sigma_c)$. #iw[pass if delivered
  beats required on both accuracy and precision; fail if it loses; "uncertifiable" if an
  unknown-magnitude error means we cannot say either way. The binding channel is the one with
  the least slack.]
]

== Deficit attribution

Both delivered quantities are additive over the primitive sources. With $u_c$ the selector
for channel $c$ and $a_(c,s)$ the block of $S_t^top u_c$ belonging to source $s$,
$ Sigma_(t,c c) = sum_s rho^Sigma_(c,s), space rho^Sigma_(c,s) = a_(c,s)^top W_s a_(c,s);
  quad
  b_(t,c) = sum_s rho^b_(c,s), space rho^b_(c,s) = a_(c,s)^top mu_s. $
#iw[split the delivered noise and bias on channel $c$ into the share coming from each
source.]

#definition(title: [development target])[
  On the binding channel $c$, $s^* = limits("arg max")_s rho_(c,s)$ on the violated term.
  #iw[the single source — a tracker, a calibration, an assumption, an injected constant —
  contributing most to the shortfall, i.e. the thing to improve first.]
]

== Examples

Fine bark texture during navigation: required precision is below any $overline(Sigma)_c$ the
sensors deliver; $m^Sigma_c < 0$; insufficient, with $s^*$ the imaging sensor's resolution.
Steering around a tree: on the required body-position, heading, and gaze channels both
margins are $>= 0$; sufficient.

// ════════════════════════════════════════════════════════════════════════
= Feedback and validation

These constructions run against the forward chain: they use a downstream estimate, or an
outside reference, to reduce an injected error or to bound an unreported one. Each changes
either $W$ (the sizes of the original error sources) or the bounds on unreported error, and
the delivered numbers follow.

== Back-projection

Let $m$ be an inference node (e.g. a learned pose detector) injecting $Q_m$, and $t$ a
downstream estimate that pools more information (fusion across sensors and time). Let $h$ be
the forward model from state to $m$'s measurement space, with Jacobian
$P = partial h \/ partial v$. #iw[$P$ says how the thing $m$ measures depends on the state.]

#definition(title: [reprojection residual])[
  $r = hat(v)_m - h(hat(v)_t)$. #iw[what the detector reported minus what the pooled
  downstream estimate predicts it should have reported.]
]

Retraining $m$ on the target $h(hat(v)_t)$ reduces its injected covariance where the pooled
prediction is more certain than the raw detector.

#definition(title: [reducible subspace])[
  $S_"bp"$ is spanned by the directions where $P Sigma_t P^top prec Q_m$. #iw[the directions
  in which the downstream estimate beats the detector.]
]

#proposition(title: [observability guard])[
  Back-projection can lower $Q_m$ only on $S_"bp"$; off it,
  $P Sigma_t P^top succ.eq Q_m$ and using $h(hat(v)_t)$ as target would inject the pooled
  estimate's error instead. The update gives $Q_m' prec.eq Q_m$, with equality off
  $S_"bp"$.
]

Since $t$ is downstream of $m$, the two are correlated ($Sigma_t$ contains $m$'s error). The
usable improvement comes only from primitives other than $m$; if $m$ is $t$'s sole source,
$P Sigma_t P^top$ contains $Q_m$ in full and there is no gain. #iw[a detector cannot
bootstrap off itself — the gain is exactly the information the other sensors and time add.]

#proposition(title: [fixpoint])[
  Replacing $Q_m$ by $Q_m'$ gives $W' prec.eq W$, hence
  $Sigma_t' = S_t W' S_t^top prec.eq Sigma_t$; iterating improves the target and lowers $Q_m$
  again, converging to a fixpoint bounded by the non-$m$ information.
]

== Cleaning versus predicting

Both learn a map from available channels $a$ to a target channel $tau$. They differ by
whether $tau$ was measured.

#definition(title: [cleaning])[
  $tau$ is measured (finite $Q_tau$). A model of clean signals (e.g. flagship-trained) is
  the target, reducing $Q_tau arrow.r.bar Q_tau' prec.eq Q_tau$ on the subspace where that
  model is more certain. This is back-projection with an external teacher; the output stays a
  measurement. #iw[denoise a channel you did measure; still a measurement.]
]

#definition(title: [predicting])[
  $tau$ is unmeasured (its column in $S_t$ is zero). A learned edge injects
  $hat(tau) = bb(E)[tau | a]$ as a new inference, with residual covariance
  $ "Var"(tau | a) = "Var"(tau) e^(-2 I(tau; a)), $
  where $I(tau; a)$ is the mutual information between target and available channels.
  #iw[fill a channel you never measured from correlated ones; you recover it only up to how
  much they share, and the result is model-generated, not a measurement.]
]

#proposition[
  Predicting enters the propagation as inject-variance carrying its own unreported part; it
  cannot certify $tau$ unless the learned conditional is itself validated. Its ceiling is
  $I(tau; a)$: no map from $a$ recovers $tau$ below $"Var"(tau) e^(-2 I(tau; a))$.
]

Cleaning serves measurement; predicting serves uses where a plausible value, not a measured
one, suffices (e.g. behaviour modelling, inverse reinforcement learning).

== Validation

Let a reference supply $hat(v)_"ref"$ with error $(b_"ref", Sigma_"ref")$ and observable
subspace $"range" S_"ref"$. Let $Pi_(inter)$ project onto the shared channels
$"range" S_t inter "range" S_"ref"$. #iw[only channels both the system and the reference
observe can be compared.]

#definition(title: [validation residual and test])[
  $r = Pi_(inter) (hat(v)_t - hat(v)_"ref")$, with
  $"Cov"(r) = Pi_(inter) (Sigma_t + Sigma_"ref" - Sigma_(t,"ref") - Sigma_(t,"ref")^top) Pi_(inter)^top$.
  Under the null (both unbiased, correctly modelled),
  $ r^top "Cov"(r)^(-1) r tilde chi^2("dim" Pi_(inter)), $
  and a bias $b$ appears as noncentrality $b^top "Cov"(r)^(-1) b$.
]

- *External.* Reference is a gold standard (Vicon): $b_"ref" approx 0$, $Sigma_"ref"$ small
  and known. Certifies the system's bias on $Pi_(inter)$.
- *Cross.* Reference is a second instrument (small DOME in large DOME) with its own
  $(b_"ref", Sigma_"ref")$; correlated iff the two share primitives (a common calibration
  object), so $Sigma_(t,"ref")$ is required. Each refers the other on $Pi_(inter)$.
- *Use-based.* Reference is a theoretical prediction from a standard experiment (gait;
  base-of-support vs. centre-of-mass; CTSIB-M). The prediction carries the theory's own error
  $(b_"th", Sigma_"th")$ (e.g. anthropometry), so the residual tests instrument and theory
  jointly; a pass certifies only up to the theory's error.

#proposition(title: [validation resolves "uncertifiable"])[
  A passed validation yields a finite empirical bound
  $parallel b_(t,c) parallel <= parallel r parallel + ("reference bound")$ on $Pi_(inter)$,
  replacing an infinite bound on an unreported part. The channel's margin becomes computable,
  moving its verdict from uncertifiable to sufficient or insufficient.
]

== Coupling to sufficiency

Let $cal(F)$ be the set of applied feedback constructions. The propagation is evaluated on
the post-feedback $W(cal(F))$ and bounds $(cal(F))$, so the verdict is a function of
$cal(F)$. #iw[what counts as "sufficient" depends on what feedback you have already applied;
sufficiency is a property of the system-plus-feedback, not the raw chain.]

- *Insufficient.* Back-projection or cleaning lowers the injected covariance at the
  development target $s^*$, raising the binding channel's precision margin; this can flip the
  verdict without new hardware. Where it cannot (the reducible subspace excludes the
  deficient direction), the deficit is genuinely a hardware limit.
- *Uncertifiable.* Validation bounds the offending unreported part, making the margin
  computable.
- *Predicting* adds channels but with their own unreported error; it does not certify, and
  applies to questions whose requirement is plausibility rather than measurement.

The order follows: reduce where reducible (back-projection, cleaning), bound where unbounded
(validation), and read the residual deficit as the true hardware target.

// ════════════════════════════════════════════════════════════════════════
#pagebreak()
= Symbol reference
<appendix>

#table(
  columns: (auto, 1fr),
  inset: (x: 0.6em, y: 0.4em),
  align: (left + top, left + top),
  stroke: none,
  table.hline(stroke: 0.6pt),
  table.header([*Symbol*], [*Plain-English meaning*]),
  table.hline(stroke: 0.4pt),
  $v$, [a value: a bundle of numbers, one per degree of freedom],
  $v^*$, [the true value we want (the hidden ground truth)],
  $hat(v)$, [our estimate of the value],
  $e$, [error: estimate minus truth, $hat(v) - v^*$],
  $b$, [bias: the systematic part of the error (repeats every time; does not average away)],
  $n$, [noise: the random part of the error (zero mean; averages away over repeats)],
  $Sigma$, [covariance: how large the noise is and how it correlates across channels],
  $Sigma_(c c)$, [variance of channel $c$ (a diagonal entry): how noisy that one channel is],
  $Sigma_(c d)$, [covariance between channels $c$ and $d$: their shared noise],
  [$b_q, Sigma_q$], [the reported (quantified) parts of bias and noise],
  [$b_u, Sigma_u$], [the unreported parts, known to exist but of unknown size],
  $beta$, [a worst-case bound on the size of the unreported bias],
  $delta$, [a worst-case bound on the bias an assumption injects],
  $c$, [a channel: one degree of freedom],
  $V_c$, [the space channel $c$'s value lives in],
  $C$, [the set of channels that make up a value],
  [$F, G$], [reference frames (coordinate systems)],
  $F(c)$, [the frame channel $c$ is expressed in],
  $T$, [a transform between frames (itself an uncertain pose)],
  $kappa = (kappa_s, kappa_t)$, [calibration quality in $[0,1]$: $0$ uncalibrated, $1$ perfect; spatial and temporal],
  $O$, [an operator: one step in the pipeline],
  $J$, [Jacobian: how much / which way the output moves per unit input move (the local gain)],
  $parallel J parallel$, [the size of that gain ($>1$ amplifies error, $<1$ shrinks it)],
  $d$, [injected bias: fresh systematic error a step adds],
  $Q$, [injected covariance: fresh noise a step adds],
  $plus.o$, [compose: chain estimates across frames],
  $join$, [fuse: combine two estimates of the same quantity],
  $cal(D) = (N, E)$, [the pipeline as a graph: nodes are estimates, edges are operators],
  $xi$, [the primitive sources: the independent original injected errors],
  $W$, [covariance of the primitives (block-diagonal, since they are independent)],
  $mu$, [means of the primitives (their biases)],
  $S_i$, [sensitivity of node $i$: how each source reaches $i$ (paths of Jacobian products)],
  $Sigma_(i j)$, [cross-covariance of nodes $i, j$ (nonzero iff they share a source)],
  $M$, [the correction denominator for fusing two correlated estimates],
  $t$, [a terminal node: a desideratum, the quantity we ultimately want],
  $u_c$, [selector picking out channel $c$],
  $R$, [the channels a research question requires],
  [$b^*_c, sigma^(*2)_c$], [required accuracy and precision on channel $c$],
  [$overline(b)_c, overline(Sigma)_c$], [worst-case delivered accuracy and precision (unknown parts bounded in)],
  [$m^b_c, m^Sigma_c$], [margins: required minus delivered ($>= 0$ means pass)],
  [$rho^Sigma_(c,s), rho^b_(c,s)$], [how much source $s$ contributes to channel $c$'s variance / bias],
  $s^*$, [the development target: the source contributing most to the deficit],
  $P$, [forward-model Jacobian: how a measured quantity depends on the state (back-projection)],
  $r$, [residual: measured minus predicted, or system minus reference],
  $Q_m, Q_m'$, [an inference node's injected covariance, before and after back-projection],
  $S_"bp"$, [reducible subspace: directions where the pooled estimate beats the detector],
  $I(tau; a)$, [mutual information: how much the available channels $a$ reveal about target $tau$],
  [$tau, a$], [a target channel to fill, and the available channels used to fill it],
  $Pi_(inter)$, [projection onto the channels both the system and the reference observe],
  [$hat(v)_"ref"$], [the reference estimate, with error $(b_"ref", Sigma_"ref")$],
  $chi^2$, [chi-squared distribution, used as the validation agreement test],
  $cal(F)$, [the set of applied feedback constructions],
  $prec.eq$, [Loewner order: $A prec.eq B$ means $B$ has at least as much covariance as $A$ in every direction],
  $succ.eq 0$, [positive semidefinite: a valid covariance (never negative variance)],
  $bb(E)[dot]$, [expected value (the average over repeats)],
  $"Cov"(dot)$, [covariance],
  table.hline(stroke: 0.6pt),
)
