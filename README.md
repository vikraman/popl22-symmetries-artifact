# Artifact for "Symmetries in Reversible Programming"

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

| Claim       | Formalisation                            |
| ----------- | ---------------------------------------- |
| Figure 3    | [Pi/Syntax/Pi.agda]([Pi/Syntax/Pi.agda]) |
| Theorem 3.1 | ?                                        |

#### Section 4


| Claim          | Formalisation |
| -------------- | ------------- |
| Definition 4.1 |               |
| Definition 4.2 |               |
| Prop 4.3       |               |
| Definition 4.4 |               |
| Definition 4.5 |               |
| Lemma 4.6      |               |
| Definition 4.7 |               |
| Definition 4.8 |               |
| Definition 4.9 |               |
| Lemma 4.10     |               |
| Theorem 4.11   |               |
| Prop 4.12      |               |
| Theorem 4.13   |               |

#### Section 5

| Claim              | Formalisation |
| ------------------ | ------------- |
| Prop 5.1           |               |
| Definition 5.2     |               |
| Definition C.2     |               |
| Prop 5.3           |               |
| Definition 5.4     |               |
| Proposition 5.5    |               |
| Definition 5.6     |               |
| Definition 5.7     |               |
| Definition 5.8     |               |
| Definition C.3     |               |
| Definition C.4     |               |
| Definition C.5     |               |
| Theorem 5.9.1      |               |
| Theorem 5.9.2      |               |
| Theorem 5.9.3      |               |
| Theorem 5.9.4      |               |
| Proposition 5.10   |               |
| Proposition 5.11.1 |               |
| Proposition 5.11.2 |               |
| Definition 5.12    |               |
| Proposition 5.13.1 |               |
| Proposition 5.13.2 |               |
| Theorem 5.14.1     |               |
| Theorem 5.14.1     |               |
| Definition 5.15    |               |
| Definition 5.17    |               |
| Theorem 5.18.1     |               |
| Theorem 5.18.2     |               |
| Corollary 5.19     |               |
| Definition 5.20    |               |
| Lemma 5.21.1       |               |
| Lemma 5.21.2       |               |
| Theorem 5.22       |               |
| Corollary 5.23     |               |

#### Section 6

| Claim           | Formalisation |
| --------------- | ------------- |
| Figure 7        |               |
| Figure 8        |               |
| Definition 6.1  |               |
| Lem 6.2         |               |
| Definition 6.3  |               |
| Theorem 6.4     |               |
| Lem 6.5         |               |
| Definition 6.6  |               |
| Definition 6.7  |               |
| Theorem 6.8     |               |
| Definition 6.9  |               |
| Definition 6.10 |               |
| Theorem 6.11    |               |
| Definition 6.12 |               |
| Theorem 6.13    |               |

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
