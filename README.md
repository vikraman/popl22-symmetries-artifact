# Artifact for "Symmetries in Reversible Programming"

[![ci](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/ci.yml/badge.svg)](https://github.com/vikraman/popl22-symmetries-artifact)
[![docker](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/docker.yml/badge.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)
[![docker pulls](https://img.shields.io/docker/pulls/vikraman/popl22-symmetries-artifact.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)

This repository contains the accompanying formalisation for the POPL'22 paper "Symmetries in Reversible Programming:
From Symmetric Rig Groupoids to Reversible Programming Languages".

## Installation

The formalisation has been checked using [Agda 2.6.1.3](https://hackage.haskell.org/package/Agda-2.6.1.3) and [HoTT-Agda
(Andrew Swan's fork)](https://github.com/awswan/HoTT-Agda/tree/agda-2.6.1-compatible).

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

## Evaluation

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

## Documentation

This directory contains the formalisation of the denotational semantics of Pi, accompanying the paper. `Everything.agda`
is the main entrypoint to the project.

### Structure

  - `Common`: Common lemmas and definitions about natural numbers and lists, used thorought the project.
  - `Coxeter`: Definitioninition and properties of Coxete relation and the rewriting system based on it.
  - `Equiv`: The main proof of equivalence between Pi and UFin.
  - `Examples`: Examples of reversible boolean circuits showing applications of the semantics.
  - `Experiments`: Various experiments, alternative approaches and earlier results.
  - `FSMG`: Free symmetric monoidal groupoids.
  - `Lehmer`: Lehmer codes.
  - `Syntax`: Syntax of Pi and its variants.
  - `UFin`: Construction of UFin and various properties.

### List of Claims

#### Section 3

| Claim       | Formalisation                                      | Note  |
| ----------- | -------------------------------------------------- | ----- |
| Figure 3    | [Pi/Syntax/Pi.agda](Pi/Syntax/Pi.agda)             |       |
| Theorem 3.1 | [Pi/Examples/Interp.agda](Pi/Examples/Interp.agda) | Check |

#### Section 4


| Claim            | Formalisation                                                                              | Note |
| --------------   | -------------                                                                              | ---  |
| Definition 4.1   | [Pi/UFin/Univ.agda#L25](Pi/UFin/Univ.agda#L25)                                             |      |
| Definition 4.2   | [Pi/UFin/Univ.agda#L42](Pi/UFin/Univ.agda#L42)                                             |      |
| Proposition 4.3  | [Pi/UFin/Univ.agda#L76](Pi/UFin/Univ.agda#L76)                                             |      |
| Definition 4.4   | [HoTT-Agda/core/lib/types/Fin.agda](HoTT-Agda/core/lib/types/Fin.agda)                     |      |
| Definition 4.5   | [HoTT-Agda/theorems/homotopy/FinSet.agda#L13](HoTT-Agda/theorems/homotopy/FinSet.agda#L13) |      |
| Lemma 4.6        | [HoTT-Agda/theorems/homotopy/FinSet.agda#L51](HoTT-Agda/theorems/homotopy/FinSet.agda#L51) |      |
| Definition 4.7   | [HoTT-Agda/theorems/homotopy/FinSet.agda#L10](HoTT-Agda/theorems/homotopy/FinSet.agda#L10) |      |
| Definition 4.8   | [HoTT-Agda/core/lib/types/BAut.agda#L10](HoTT-Agda/core/lib/types/BAut.agda#L10)           |      |
| Definition 4.9   | [Pi/UFin/Base.agda](Pi/UFin/Base.agda)                                                     |      |
| Lemma 4.10.1     | [Pi/UFin/BAut.agda#L31](Pi/UFin/Base.agda#L31)                                             |      |
| Lemma 4.10.2     | [HoTT-Agda/core/lib/types/BAut.agda#L27](HoTT-Agda/core/lib/types/BAut.agda#L27)           |      |
| Lemma 4.10.3     | [Pi/UFin/BAut.agda#63](Pi/UFin/Base.agda#63)                                               |      |
| Theorem 4.11     | [Pi/UFin/Base.agda#L18](Pi/UFin/Base.agda#L18)                                             |      |
| Proposition 4.12 | [Pi/UFin/Monoidal.agda]([Pi/UFin/Monoidal.agda])                                           |      |
| Theorem 4.13     | [Pi/UFin/Monoidal.agda]([Pi/UFin/Monoidal.agda])                                           |      |

#### Section 5

| Claim              | Formalisation                                                                                                                                                                                                                                                                                      | Comment                                                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                 | -----------------------------------------------------------------------------------------------------------         |
| Proposition 5.1    |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Definition 5.2     |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Definition C.2     |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Proposition 5.3    |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Definition 5.4     |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Proposition 5.5    |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Definition 5.6     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Coxeter.agda#L38) and [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/Coxeter.agda#L38)                                    | In the paper, missing succ n                                                                                        |
| Definition 5.7     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Common/ListN.agda#L37)                                                                                                                                                                                 | Not using Fin for the result                                                                                        |
| Definition 5.8     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/ReductionRel.agda#L13)                                                                                                                                                         | Slightly differerent (but equivalent) form of constructors                                                          |
| Definition C.3     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Coxeter.agda#L43)                                                                                                                                                                              |                                                                                                                     |
| Definition C.4     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/ReductionRel.agda#L18)                                                                                                                                                         |                                                                                                                     |
| Definition C.5     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/ReductionRel%2B.agda#L14)                                                                                                                                                      |                                                                                                                     |
| Theorem 5.9.1      | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/Diamond.agda#L23)                                                                                                                                                              |                                                                                                                     |
| Theorem 5.9.2      | Proven on paper - lexicographic ordering                                                                                                                                                                                                                                                           |                                                                                                                     |
| Theorem 5.9.3      | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/Diamond.agda#L170)                                                                                                                                                             |                                                                                                                     |
| Theorem 5.9.4.a    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/LehmerReduction.agda#L372)                                                                                                                                                     | Exists `v`                                                                                                          |
| Theorem 5.9.4.b    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)                                                                                                                                                     | `v` is NF                                                                                                           |
| Theorem 5.9.4.c    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L294)                                                                                                                                                     | NF is unique                                                                                                        |
| Proposition 5.10   | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/CoxeterMCoxeterEquiv.agda#L37) [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Parametrized/CoxeterMCoxeterEquiv.agda#L69) | Proven multiple times for (slightly) different versions of Coxeter                                                  |
| Proposition 5.11.1 | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Norm.agda#L19)                                                                                                                                                                                 |                                                                                                                     |
| Proposition 5.11.2 | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Norm.agda#L25)                                                                                                                                                                                 |                                                                                                                     |
| Definition 5.12    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Sn.agda#L22)                                                                                                                                                                                   |                                                                                                                     |
| Proposition 5.13.1 |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Proposition 5.13.2 | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Norm.agda#L163)                                                                                                                                                                                |                                                                                                                     |
| Theorem 5.14.1     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Group.agda#L14)                                                                                                                                                                                |                                                                                                                     |
| Theorem 5.14.2     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/GeneratedGroup.agda#L11)                                                                                                                                                                       | ?                                                                                                                   |
| Definition 5.15    |                                                                                                                                                                                                                                                                                                    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Lehmer/Lehmer2.agda#L7) |
| Definition 5.17    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Lehmer2CoxeterEquiv.agda#L23) defined using [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/LehmerImmersion.agda#L19)                      | Off-by-one error with the indices?                                                                                  |
| Theorem 5.18.1     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)                                                                                                                                                     |                                                                                                                     |
| Theorem 5.18.2     |                                                                                                                                                                                                                                                                                                    |                                                                                                                     |
| Corollary 5.19     | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Coxeter/Lehmer2SnEquiv.agda#L20)                                                                                                                                                                       |                                                                                                                     |
| Definition 5.20    | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Lehmer/FinExcept.agda#L48)                                                                                                                                                                             |                                                                                                                     |
| Lemma 5.21.1       | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Lehmer/FinExcept.agda#L159)                                                                                                                                                                            |                                                                                                                     |
| Lemma 5.21.2       | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Lehmer/FinExcept.agda#L224)                                                                                                                                                                            |                                                                                                                     |
| Theorem 5.22       | [link](https://github.com/vikraman/2DTypes/blob/e48a6d5afe42c280dbd448e1d605f12798c66d5f/Pi/Lehmer/Lehmer2FinEquiv.agda#L18)                                                                                                                                                                       |                                                                                                                     |
| Corollary 5.23     | Composition of previous corollaries                                                                                                                                                                                                                                                                |                                                                                                                     |

#### Section 6

| Claim           | Formalisation                                                  | Note  |
| --------------- | -------------                                                  | ----  |
| Figure 7        | [Pi/Syntax/Pi+/NonIndexed.agda](Pi/Syntax/Pi+/NonIndexed.agda) |       |
| Figure 8        | [Pi/Syntax/Pi^.agda](Pi/Syntax/Pi^.agda)                       |       |
| Definition 6.1  | [Pi/Equiv/Translation2.agda](Pi/Equiv/Translation2.agda)       |       |
| Lemma 6.2       | [Pi/Equiv/Translation2.agda](Pi/Equiv/Translation2.agda)       |       |
| Definition 6.3  | [Pi/Equiv/Translation2.agda](Pi/Equiv/Translation2.agda)       | Check |
| Theorem 6.4     | [Pi/Equiv/Translation2.agda](Pi/Equiv/Translation2.agda)       | Check |
| Lemma 6.5       | [Pi/Syntax/Pi^Helpers.agda](Pi/Syntax/Pi^Helpers.agda)         |       |
| Definition 6.6  | [Pi/Equiv/Equiv0Hat.agda](Pi/Equiv/Equiv0Hat.agda)             | Check |
| Definition 6.7  | [Pi/Equiv/Equiv0Hat.agda](Pi/Equiv/Equiv0Hat.agda)             | Check |
| Theorem 6.8     | [Pi/Equiv/Equiv0Hat.agda](Pi/Equiv/Equiv0Hat.agda)             | Check |
| Definition 6.9  | [Pi/Equiv/Equiv1Norm.agda](Pi/Equiv/Equiv1Norm.agda)           |       |
| Definition 6.10 | [Pi/Equiv/Equiv1Norm.agda](Pi/Equiv/Equiv1Norm.agda)           |       |
| Theorem 6.11    | [Pi/Examples/Interp.agda](Pi/Examples/Interp.agda)             |       |
| Definition 6.12 |                                                                |       |
| Theorem 6.13    |                                                                |       |

#### Section 7

| Claim          | Formalisation |
| -------------- | ------------- |
| Definition 7.1 |               |

### Comments

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
