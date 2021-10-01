# Artifact for "Symmetries in Reversible Programming"

This repository contains the accompanying formalisation for the POPL'22 paper "Symmetries in Reversible Programming:
From Symmetric Rig Groupoids to Reversible Programming Languages".

## Installation instructions

The formalisation is checked using Agda version 2.6.1.3.

### Option 1: Native installation

The easiest way to install Agda on your machine is using stack.

- Install stack following the instructions on the official website: https://docs.haskellstack.org/

- Install Agda using stack.

```sh
$ stack install Agda-2.6.1.3
```

To count the number of lines, we use [cloc](https://github.com/AlDanial/cloc) which can be installed [using a package
manager](https://github.com/AlDanial/cloc#install-via-package-manager).

### Option 2: Using docker image

```
$ docker pull vikraman/popl22-symmetries-artifact
```

## Evaluation instructions

We provide a Makefile whose default target is to check all files using agda.

```sh
$ make
```

Alternatively, you can check individual files in agda, or load up the emacs mode to interactively examine a file.

To count the number of lines, run:

```
$ make cloc
```

To list the TODOs in the formalisation, run:

```
$ make todos
```

## List of Claims

### Section 3

| Claim              | Formalisation       |
| ------------------ | ------------------- |
| Fig. 3 - Pi Syntax | `Pi/Syntax/Pi.agda` |
| Thm 3.1            | ?                   |

### Section 4


| Claim     | Formalisation |
| --------- | ------------- |
| Def 4.1   |
| Def 4.2   |
| Prop 4.3  |
| Def 4.4   |
| Def 4.5   |
| Lem 4.6   |
| Def 4.7   |
| Def 4.8   |
| Def 4.9   |
| Lem 4.10  |
| Thm 4.11  |
| Prop 4.12 |
| Thm 4.13  |

### Section 5

| Claim                                                                                    | Formalisation |
| ---------------------------------------------------------------------------------------- | ------------- |
| Prop 5.1 (Universal Property of 𝐹 (𝐴))                                                   |
| Def 5.2 (Free group)                                                                     |
| Definition C.2 (free group as HIT)                                                       |
| Prop 5.3. List(𝐴 + 𝐴)/∼∗ has a group structure                                           |
| Definition 5.4 (Group presentation)                                                      |
| Proposition 5.5 (Universal property of 𝐹 (⟨𝐴; 𝑅⟩))                                       |
| Definition 5.6 (↭: List(Finn) → List(Finn) → U)                                          |
| Definition 5.7 (↙:                                                                       |
| Definition 5.8 (⇝: List(Finn) → List(Finn) → U).                                         |
| Definition C.3 ↭∗                                                                        |
| Definition C.4 ⇝∗                                                                        |
| Definition C.5 ⇝+                                                                        |
| Theorem 5.9.1 ⇝ is (locally) confluent                                                   |
| Theorem 5.9.2 ⇝+ is terminating                                                          |
| Theorem 5.9.3 ⇝∗ is confluent                                                            |
| Theorem 5.9.4 For every 𝑤, there exists a unique normal form 𝑣 such that 𝑤 ⇝∗v           |
| Proposition 5.10. The relations ↭∗ and ⇝∗ are equivalent                                 |
| Proposition 5.11.1 𝑙 ↭∗ 𝔫𝔣(𝑙)                                                            |
| Proposition 5.11.2 𝔫𝔣 is idempotent, that is, 𝔫𝔣 ◦ 𝔫𝔣 ∼ 𝔫𝔣.                              |
| Definition 5.12 (Sn). Sn ≜ List(Finn)/↭                                                  |
| Proposition 5.13.1 𝔫𝔣 splits into a section-retraction pair                              |
| Proposition 5.13.2 im(q) ≃ Sn ≃ im(𝔫𝔣)                                                   |
| Theorem 5.14.1 There is a group structure on Sn                                          |
| Theorem 5.14.1 Sn is equivalent to the group presented by generators Finn                |
| Definition 5.15 (Lehmer : N → U) (product version)                                       |
| Definition 5.17 (𝔢𝔪 : (𝑛 : N) → Lehmer(𝑛) → List(FinS n))                                |
| Theorem 5.18.1 For any Lehmer code 𝑐, 𝔢𝔪𝑛 (𝑐) is a normal form                           |
| Theorem 5.18.2 Any element of im(𝔫𝔣) can be constructed from a unique Lehmer code by 𝔢𝔪, |
| Corollary 5.19. For all 𝑛 : N, Sn ≃ im(𝔫𝔣) ≃ Lehmer(𝑛).                                  |
| Definition 5.20 (Finn: Finn → U)                                                         |
| Lemma 5.21.1 FinS n (𝑘) ≃ Finn                                                           |
| Lemma 5.21.2 Aut(FinS n) ≃Í𝑘:FinS n FinS n (𝑛) ≃ FinS n (𝑛 − 𝑘)                          |
| Theorem 5.22. For all 𝑛 : N, Lehmer(𝑛) ≃ Aut(FinS n)                                     |
| Corollary 5.23. For all 𝑛 : N, Sn ≃ Lehmer(𝑛) ≃ Aut(FinS n).                             |

### Section 6

| Claim    | Formalisation |
| -------- | ------------- |
| Fig 7    |
| Fig 8    |
| Def 6.1  |
| Lem 6.2  |
| Def 6.3  |
| Thm 6.4  |
| Lem 6.5  |
| Def 6.6  |
| Def 6.7  |
| Thm 6.8  |
| Def 6.9  |
| Def 6.10 |
| Thm 6.11 |
| Def 6.12 |
| Thm 6.13 |

### Section 7

| Claim   | Formalisation |
| ------- | ------------- |
| Def 7.1 |

This directory contains the formalisation of the denotational semantics of Pi, accompanying the paper. `Everything.agda`
is the main entrypoint to the project.

## Code structure

  - `Common`: Common lemmas and definitions about natural numbers and lists, used thorought the project.
  - `Coxeter`: Definition and properties of Coxete relation and the rewriting system based on it.
  - `Equiv`: The main proof of equivalence between Pi and UFin.
  - `Examples`: Examples of reversible boolean circuits showing applications of the semantics.
  - `Experiments`: Various experiments, alternative approaches and earlier results.
  - `FSMG`: Free symmetric monoidal groupoids.
  - `Lehmer`: Lehmer codes.
  - `Syntax`: Syntax of Pi and its variants.
  - `UFin`: Construction of UFin and various properties.

## Checking the code

The formalisation has been checked using [Agda 2.6.1.3](https://hackage.haskell.org/package/Agda-2.6.1.3) and [HoTT-Agda
(Andrew Swan's fork)](https://github.com/awswan/HoTT-Agda/tree/agda-2.6.1-compatible).

To typecheck, run
```bash
make
```
in the main directory.

## Comments

  - In the formalisation, there is an additional step of going through Pi+ variant where types are indexed by their
    cardinality, this makes it easier to write some proofs which perform induction on the syntax, and eliminate some
    absurd cases.
  - Proving termination for certain functions is difficult in Agda, and we assert they're terminating. It is easy to see
    on paper that they terminate.
  - In HoTT-Agda, univalence/HITs are asserted as postulates, and they don't compute. The proofs rely on beta/eta
    reduction done "by hand", which is not explicitly done in the paper.
  - Using the formalised rewriting system to compute the normalisation function is very slow. We include several
    examples in the formalisation and it takes a while to compute them. Some computations are intractable, and we have
    left them commented out.
  - Translating commutative diagrams for large coherence results to Pi combinators is tedious. Similarly, using
    decidable equality and case matches to define large functions and reductions and then proving things about them is
    tedious. Some parts of the formalisation have been left as TODOs but we provide references for them, or show how to
    prove them on paper.
  - `FSMG` is incomplete and left as future work. `Experiments` contains alternative definitions using HITs and some
    earlier attempts at proving the main equivalence.