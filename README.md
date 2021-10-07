# Artifact for "Symmetries in Reversible Programming"

[![bors enabled](https://bors.tech/images/badge_small.svg)](https://app.bors.tech/repositories/37991)
[![ci](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/ci.yml/badge.svg)](https://github.com/vikraman/popl22-symmetries-artifact)
[![docker](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/docker.yml/badge.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)
[![docker pulls](https://img.shields.io/docker/pulls/vikraman/popl22-symmetries-artifact.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)
[![doi](https://zenodo.org/badge/DOI/10.5281/zenodo.5552650.svg)](https://doi.org/10.5281/zenodo.5552650)

This repository contains the accompanying formalisation for the POPL'22 paper "Symmetries in Reversible Programming:
From Symmetric Rig Groupoids to Reversible Programming Languages".

- Main Repository: https://github.com/vikraman/popl22-symmetries-artifact
- Source Code: https://vikraman.github.io/popl22-symmetries-artifact
- Zenodo: https://zenodo.org/record/5552650

The purpose of this artifact is to:

 - Provide a partial formalisation of the semantics presented in the paper and related results.

 - Show applications of the semantics, using a collection of examples showing normalisation-by-evaluation, synthesis,
   and equivalence of reversible circuits written in the Pi language.

## Installation

The formalisation has been checked using [Agda 2.6.1.3](https://hackage.haskell.org/package/Agda-2.6.1.3) and the
[HoTT-Agda](https://github.com/HoTT/HoTT-Agda) library [(using Andrew Swan's
fork)](https://github.com/awswan/HoTT-Agda/tree/agda-2.6.1-compatible).

### Option 1: Native installation

The easiest way to install Agda on your machine is using stack.

- Install stack following the instructions on the official website: https://docs.haskellstack.org/

- Install Agda using stack (tested using [ghc 8.10.4 and resolver 17.15](.github/workflows/ci.yml)).

```sh
$ stack install Agda-2.6.1.3
```

Then, clone this repository (including submodules recursively) and use the provided Makefile. The repository uses a
[submodule](https://github.com/vikraman/2DTypes) which contains the main formalisation and library submodules (and more
related work on Pi).

```sh
$ git clone --recursive https://github.com/vikraman/popl22-symmetries-artifact
$ cd popl22-symmetries-artifact
```

To count the number of lines, we use [cloc](https://github.com/AlDanial/cloc) which can be installed [using a package
manager](https://github.com/AlDanial/cloc#install-via-package-manager).

### Option 2: Using our docker image

We also provide a prebuilt docker image (linux/amd64) with all tools and libraries installed.

```sh
$ docker pull vikraman/popl22-symmetries-artifact
$ docker run -it --rm vikraman/popl22-symmetries-artifact bash
```

## Evaluation

We provide a [Makefile](Makefile) whose default target checks the [Pi/Everything.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Everything.agda) file.

```sh
$ make
```

Or, it can also exhaustively check every file in the Pi directory.

```sh
$ make reallyall
```

Alternatively, you can check individual files in agda, and step through each term interactively. 

To step through the proofs and examples interactively, one has to use the interactive Agda mode, which is available for
Emacs and VSCode. To use it:

 - In Emacs, simply use `agda-mode locate` and load the file to get the major mode for Agda. Use `C-c C-l` to load the
   Agda file, and `C-u C-u C-c C-n` to compute the normal form of a term.

 - In VSCode, install `agda-mode` extension and point it to the location of Agda executable in your system. The usage
   instructions are provided in the extension's documentation. To load the file, use `C-c C-l`. After loading the file,
   inspect the normal form of a chosen expression by using `C-u C-n`.

To count the number of lines, run:

```
$ make cloc
```

To list the `TODO`s in the formalisation, run:

```
$ make todos
```

As a convention, the ones marked `TODO!` are the important ones, and the ones marked `TODO-` are trivial.

## Documentation

This repository contains the formalisation of the denotational semantics of Pi, accompanying the paper.
`Pi/Everything.agda` is the main entrypoint to the project. The Agda source is also hosted as interactive html
[here](https://vikraman.github.io/popl22-symmetries-artifact).

Each subdirectory has its own README file, which describes the files in that directory, and is a good starting point to
understanding the high-level structure of the code.

### Structure

  - `Pi.Common`: Common lemmas and definitions about natural numbers and lists, used in the project.
  - `Pi.Coxeter`: Definition and properties of the Coxeter relation and the rewriting system based on it.
  - `Pi.Equiv`: The main proof of equivalence between Pi and UFin.
  - `Pi.Examples`: Examples of reversible boolean circuits showing applications of the semantics.
  - `Pi.Experiments`: Various experiments, alternative approaches and earlier results.
  - `Pi.FSMG`: Free symmetric monoidal groupoids.
  - `Pi.Lehmer`: Lehmer codes.
  - `Pi.Syntax`: Syntax of Pi and its variants.
  - `Pi.UFin`: Construction of UFin and various properties.

### List of Claims

#### Section 3

This section presents the syntax of Pi and its soundness with respect to finite sets and bijections.

| Claim         | Formalisation                                                                                      |
| ------------- | -------------------------------------------------------------------------------------------------- |
| Figure 3      | [Pi/Syntax/Pi.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Syntax/Pi.agda)             |
| Theorem 3.1.1 | [Pi/Examples/Interp.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Interp.agda) |

#### Section 4

This section develops the theory of univalent subuniverses, and the construction of $U_{fin}$ and its algebraic
structure. We list the claims and their corresponding formalisations in the table below.

| Claim            | Formalisation                                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Definition 4.1   | [Pi/UFin/Univ.agda#L25](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Univ.agda#L25)                                                  |
| Definition 4.2   | [Pi/UFin/Univ.agda#L42](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Univ.agda#L42)                                                  |
| Proposition 4.3  | [Pi/UFin/Univ.agda#L76](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Univ.agda#L76)                                                  |
| Definition 4.4   | [HoTT-Agda/core/lib/types/Fin.agda](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/types/Fin.agda)                     |
| Definition 4.5   | [HoTT-Agda/theorems/homotopy/FinSet.agda#L13](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/theorems/homotopy/FinSet.agda#L13) |
| Lemma 4.6        | [HoTT-Agda/theorems/homotopy/FinSet.agda#L51](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/theorems/homotopy/FinSet.agda#L51) |
| Definition 4.7   | [HoTT-Agda/theorems/homotopy/FinSet.agda#L10](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/theorems/homotopy/FinSet.agda#L10) |
| Definition 4.8   | [HoTT-Agda/core/lib/types/BAut.agda#L10](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/types/BAut.agda#L10)           |
| Definition 4.9   | [Pi/UFin/Base.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Base.agda)                                                          |
| Lemma 4.10.1     | [Pi/UFin/BAut.agda#L31](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Base.agda#L31)                                                  |
| Lemma 4.10.2     | [HoTT-Agda/core/lib/types/BAut.agda#L27](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/types/BAut.agda#L27)           |
| Lemma 4.10.3     | [Pi/UFin/BAut.agda#63](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Base.agda#63)                                                    |
| Theorem 4.11     | [Pi/UFin/Base.agda#L18](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Base.agda#L18)                                                  |
| Proposition 4.12 | [Pi/UFin/Monoidal.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Monoidal.agda)                                                  |
| Theorem 4.13     | [Pi/UFin/Monoidal.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/UFin/Monoidal.agda)                                                  |

#### Section 5

The main theorems in the section - equivalences between `Sn`, normalisation function image and Lehmer codes - appear
exactly in the Agda code. The intermediate steps were, however, slightly modified in the paper, as to simplify the
presentation. The main difference is that the main proofs of the properties of Coxeter relations are initially done, for
technical and historical reasons, without using parametrising it over `n` - i.e., work on `List ℕ` instead of `List (Fin
n)`, ([Pi/Coxeter/NonParametrized](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized)), and
only later is this changed, in
([Pi/Coxeter/Parametrized](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Parametrized)).

Another difference is that, again for mostly the historical reasons, we have used two definitions of Lehmer codes
([Pi/Lehmer/Lehmer.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/Lehmer.agda) and
[Pi/Lehmer/Lehmer2.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/Lehmer2.agda)), and proved them to be
equivalent.

The functions marked with `{-# TERMINATING #-}` can be proved terminating on paper, using the fact that the Coxeter
reduction relation decreases the lexicographical order of words.

| Claim              | Formalisation                                                                                                                                                        | Note                                                                                                                                     |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Proposition 5.1    | Not formalised and not used, included just for presentation purposes                                                                                                 |                                                                                                                                          |
| Definition 5.2     | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/groups/GeneratedGroup.agda)                  |                                                                                                                                          |
| Definition C.2     | Not formalised and not used, included just for presentation purposes                                                                                                 |                                                                                                                                          |
| Proposition 5.3    | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/groups/GeneratedGroup.agda)                  |                                                                                                                                          |
| Definition 5.4     | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/groups/GeneratedGroup.agda)                  |                                                                                                                                          |
| Proposition 5.5    | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](https://github.com/awswan/HoTT-Agda/blob/agda-2.6.1-compatible/core/lib/groups/GeneratedGroup.agda)                  |                                                                                                                                          |
| Definition 5.6     | [Pi/Coxeter/Coxeter.agda#L38](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Coxeter.agda#L38)                                                           | Missing successor in the paper                                                                                                           |
| Definition 5.7     | [Pi/Common/ListN.agda#L37](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Common/ListN.agda#L37)                                                                 | Not using Fin for the result                                                                                                             |
| Definition 5.8     | [Pi/Coxeter/NonParametrized/ReductionRel.agda#L13](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/ReductionRel.agda#L13)                 | Slightly different (but equivalent) form of constructors                                                                                 |
| Definition C.3     | [Pi/Coxeter/Coxeter.agda#L43](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Coxeter.agda#L43)                                                           |                                                                                                                                          |
| Definition C.4     | [Pi/Coxeter/NonParametrized/ReductionRel.agda#L18](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/ReductionRel.agda#L18)                 |                                                                                                                                          |
| Definition C.5     | [Pi/Coxeter/NonParametrized/ReductionRel%2B.agda#L14](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/ReductionRel%2B.agda#L14)           |                                                                                                                                          |
| Theorem 5.9.1      | [Pi/Coxeter/NonParametrized/Diamond.agda#L23](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/Diamond.agda#L23)                           |                                                                                                                                          |
| Theorem 5.9.2      | Proved on paper - lexicographic ordering                                                                                                                             |                                                                                                                                          |
| Theorem 5.9.3      | [Pi/Coxeter/NonParametrized/Diamond.agda#L170](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/Diamond.agda#L170)                         |                                                                                                                                          |
| Theorem 5.9.4.a    | [Pi/Coxeter/NonParametrized/LehmerReduction.agda#L372](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/LehmerReduction.agda#L372)         | Exists `v`                                                                                                                               |
| Theorem 5.9.4.b    | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)         | `v` is NF                                                                                                                                |
| Theorem 5.9.4.c    | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L294](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L294)         | NF is unique                                                                                                                             |
| Proposition 5.10   | [Pi/Coxeter/NonParametrized/CoxeterMCoxeterEquiv.agda#L37](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/CoxeterMCoxeterEquiv.agda#L37) | Also proven for other versions of Coxeter                                                                                                |
| Proposition 5.11.1 | [Pi/Coxeter/Norm.agda#L19](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Norm.agda#L19)                                                                 |                                                                                                                                          |
| Proposition 5.11.2 | [Pi/Coxeter/Norm.agda#L25](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Norm.agda#L25)                                                                 |                                                                                                                                          |
| Definition 5.12    | [Pi/Coxeter/Sn.agda#L22](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Sn.agda#L22)                                                                     |                                                                                                                                          |
| Proposition 5.13.1 | [Pi/Coxeter/Norm.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Norm.agda)                                                                         |                                                                                                                                          |
| Proposition 5.13.2 | [Pi/Coxeter/Norm.agda#L163](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Norm.agda#L163)                                                               |                                                                                                                                          |
| Theorem 5.14.1     | [Pi/Coxeter/Group.agda#L14](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Group.agda#L14)                                                               |                                                                                                                                          |
| Theorem 5.14.2     | [Pi/Coxeter/GeneratedGroup.agda#L11](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/GeneratedGroup.agda#L11)                                             |                                                                                                                                          |
| Definition 5.15    | [Pi/Lehmer/Lehmer2.agda#L7](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/Lehmer2.agda#L7)                                                               |                                                                                                                                          |
| Definition 5.17    | [Pi/Coxeter/Lehmer2CoxeterEquiv.agda#L23](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Lehmer2CoxeterEquiv.agda#L23)                                   |                                                                                                                                          |
| Theorem 5.18.1     | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)         | Defined using [Pi/Coxeter/LehmerImmersion.agda#L19](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/LehmerImmersion.agda#L19) |
| Theorem 5.18.2     | [Pi/Coxeter/NormEquiv.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/NormEquiv.agda)                                                               |                                                                                                                                          |
| Corollary 5.19     | [Pi/Coxeter/Lehmer2SnEquiv.agda#L20](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Coxeter/Lehmer2SnEquiv.agda#L20)                                             |                                                                                                                                          |
| Definition 5.20    | [Pi/Lehmer/FinExcept.agda#L48](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/FinExcept.agda#L48)                                                         |                                                                                                                                          |
| Lemma 5.21.1       | [Pi/Lehmer/FinExcept.agda#L159](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/FinExcept.agda#L159)                                                       |                                                                                                                                          |
| Lemma 5.21.2       | [Pi/Lehmer/FinExcept.agda#L224](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/FinExcept.agda#L224)                                                       |                                                                                                                                          |
| Theorem 5.22       | [Pi/Lehmer/Lehmer2FinEquiv.agda#L18](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Lehmer/Lehmer2FinEquiv.agda#L18)                                             |                                                                                                                                          |
| Corollary 5.23     | Composition of previous corollaries                                                                                                                                  |                                                                                                                                          |

#### Section 6

This section presents the equivalence between the syntax and semantics. In the formalisation, this is done by
constructing functions eval/quote for 0, 1, and 2-cells, between each variant of the language and finally with `UFin`.
Instead of following the list of claims in the text, we state what each file does.

 - [Pi/Syntax/Pi+/NonIndexed.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Syntax/Pi+/NonIndexed.agda): (Non-indexed) syntax for Pi+.
 - [Pi/Syntax/Pi+/Indexed.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Syntax/Pi+/Indexed.agda): (Indexed) syntax for Pi+.
 - [Pi/Syntax/Pi^.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Syntax/Pi^.agda): Syntax for Pi^.
 - [Pi/Equiv/Equiv0.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv0.agda): The proof of equivalence between Pi+ types and 0-cells in UFin. A composition of:
  - [Pi/Equiv/Equiv0Hat.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv0Hat.agda): The proof of equivalence between Pi+ types and Pi^ types.
   - [Pi/Equiv/Equiv0Norm.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv0Norm.agda): The proof of equivalence between Pi^ types (natural numbers) and 0-cells in UFin.
 - [Pi/Equiv/Equiv1.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv1.agda): The proof of equivalence between the 1-combinators of Pi+ and 1-paths in UFin. A composition of:
  - [Pi/Equiv/Equiv1Hat.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv1Hat.agda): The proof of equivalence between Pi+ 1-combinators and Pi^ 1-combinators.
   - [Pi/Equiv/Equiv1Norm.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv1Norm.agda): The proof of equivalence between Pi^ 1-combinators and 1-cells in UFin.
 - [Pi/Equiv/Equiv2.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv2.agda): The proof of equivalence between the 2-combinators of Pi+ and 2-paths in UFin. A composition of:
  - [Pi/Equiv/Equiv2Hat.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv2Hat.agda): The proof of equivalence between Pi+ 1-combinators and Pi^ 1-combinators.
   - [Pi/Equiv/Equiv2Norm.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Equiv2Norm.agda): The proof of equivalence between Pi^ 2-combinators and 2-paths in UFin.
 - [Pi/Equiv/Translation2.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Equiv/Translation2.agda): Translation of Pi to Pi+ and back.
 - [Pi/Examples/Interp.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Interp.agda) - The interpreters for Pi, Pi+, Pi^.

#### Section 7

The formalisation includes several examples, including those mentioned in the paper, and others. Despite postulates, the
examples are written in such a way that they _will compute_.

The files are more-or-less self-documented -- we define each reversible circuit, compute their normal forms, then quote
them back, step-by-step using the semantics. One can inspect each term using Agda's interactive mode, using the "Compute
Normal Form" command (in Emacs, make sure to add `C-u C-u` to compute the most normalised form).

Note that computing normal forms for some circuits can be _really slow_.

 - [Pi/Examples/Adder.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Adder.agda): Reversible 3-bit/4-bit adder.
 - [Pi/Examples/Base.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Base.agda): Helpers and tests.
 - [Pi/Examples/Copy.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Copy.agda): Reversible copy.
 - [Pi/Examples/ExamplesL.lagda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/ExamplesL.lagda): Examples used in the paper text, `reversibleOrNorm`
   function is implemented as `adder3` in [Pi/Examples/Adder.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Adder.agda).
 - [Pi/Examples/ExpMod.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/ExpMod.agda): Reversible exponentiation modulo 2^n.
 - [Pi/Examples/Incr.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Incr.agda): Reversible increment.
 - [Pi/Examples/Interp.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Interp.agda): Interpreters for 1-combinators of Pi, Pi+, Pi^, and various tests.
 - [Pi/Examples/Reset.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Reset.agda): Reversible reset.
 - [Pi/Examples/Toffoli.agda](https://github.com/vikraman/2DTypes/blob/popl22/Pi/Examples/Toffoli.agda): Toffoli gate (controlled controlled NOT)

### Comments

  - In the formalisation, there is an additional step of going through Pi+ variant where types are indexed by their
    cardinality, this makes it easier to write some proofs which perform induction on the syntax, and eliminate some
    absurd cases (using the `eq-size` rewrite).
  - Proving termination for certain functions is difficult in Agda, and we assert they're terminating. On paper, it is
    easy to see that they terminate.
  - In HoTT-Agda, univalence/HITs are asserted as postulates, and they don't compute. Further, computing or proving with
    the identity type relies on beta/eta reduction done "by hand", which is not explicitly done in the paper. This makes
    some formalised proofs verbose.
  - Using the formalised rewriting system to compute the normalisation function is _very_ slow. We include several
    examples in the formalisation and it takes a while to compute them. Some computations are intractable, and we have
    left them commented out.
  - Translating commutative diagrams for large coherence results to Pi syntax using combinators is tedious. Similarly,
    using decidable equality and case matches to define large functions and reductions and then proving things about
    them is tedious. Some parts of the formalisation have been left as `TODO`s but we provide references for them, or
    give a proof outline on paper.
  - `FSMG` is a HIT for free symmetric monoida groupoids, this is experimental and left as future work. `Experiments`
    contains alternative definitions using HITs and some earlier attempts at proving the main equivalence.
