# Artifact for "Symmetries in Reversible Programming"

[![ci](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/ci.yml/badge.svg)](https://github.com/vikraman/popl22-symmetries-artifact)
[![docker](https://github.com/vikraman/popl22-symmetries-artifact/actions/workflows/docker.yml/badge.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)
[![docker pulls](https://img.shields.io/docker/pulls/vikraman/popl22-symmetries-artifact.svg)](https://hub.docker.com/r/vikraman/popl22-symmetries-artifact)

This repository contains the accompanying formalisation for the POPL'22 paper "Symmetries in Reversible Programming:
From Symmetric Rig Groupoids to Reversible Programming Languages".

The purpose of this artifact is to:
 - Provide a partial formalisation of the semantics presented in the paper and related results.
 - Show applications of the semantics, using a collection of examples showing normalisation-by-evaluation, synthesis,
   and equivalence of reversible circuits.

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

To step through the proofs and examples interactively, one has to use the interactive Agda mode, which is available for
Emacs and VSCode. To use it:
 - In Emacs, simply use `agda-mode locate` and load the file to get the major mode for Agda. Use `C-c C-l` to load the
   Agda file, and `C-u C-c C-n` to compute the normal form of a term.
 - In VSCode, install `agda-mode` extension and point it to the location of Agda executable in your system. The usage
   instructions are provided in the extension's documentation. To load the file, use `C-c C-l`. After loading the file,
   inspect the normal form of a chosen expression by using `C-u C-n`.

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

  - `Common`: Common lemmas and definitions about natural numbers and lists, used in the project.
  - `Coxeter`: Definition and properties of the Coxeter relation and the rewriting system based on it.
  - `Equiv`: The main proof of equivalence between Pi and UFin.
  - `Examples`: Examples of reversible boolean circuits showing applications of the semantics.
  - `Experiments`: Various experiments, alternative approaches and earlier results.
  - `FSMG`: Free symmetric monoidal groupoids.
  - `Lehmer`: Lehmer codes.
  - `Syntax`: Syntax of Pi and its variants.
  - `UFin`: Construction of UFin and various properties.

### List of Claims

#### Section 3

This section presents the syntax of Pi and its soundness with respect to finite sets and bijections.

| Claim       | Formalisation                                      | Note  |
| ----------- | -------------------------------------------------- | ----- |
| Figure 3    | [Pi/Syntax/Pi.agda](Pi/Syntax/Pi.agda)             |       |
| Theorem 3.1 | [Pi/Examples/Interp.agda](Pi/Examples/Interp.agda) | Check |

#### Section 4

This section develops the theory of univalent subuniverses, and the construction of $U_{fin}$ and its algebraic
structure. We list the claims and their corresponding formalisations in the table below.

| Claim            | Formalisation                                                                              | Note |
| ---------------- | ------------------------------------------------------------------------------------------ | ---- |
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

The main theorems in the section - equivalences between `Sn`, normalization function image and Lehmer codes -  appear
exactly in the Agda code. The intermediate steps were, however, slightly modified in the paper, as to simplify the
presentation. The main difference is that the main proofs of the properties of Coxeter relations are initially done, for
technical and historical reasons, without using parametrizing it over `n` - i.e., work on `List ℕ` instead of `List (Fin
n)`, ([Pi/Coxeter/NonParametrized](Pi/Coxeter/NonParametrized)), and only later is this changed, in
([Pi/Coxeter/Parametrized](Pi/Coxeter/Parametrized))

Another difference is that, again for mostly the historical reasons, we have used two definitions of Lehmer codes
([Pi/Lehmer/Lehmer.agda](Pi/Lehmer/Lehmer.agda) and [Pi/Lehmer/Lehmer2.agda](Pi/Lehmer/Lehmer2.agda)), and proved them
to be equivalent.

The functions marked with `{-# TERMINATING #-}` are proven to be terminating on paper, using the fact that the Coxeter
reduction relation decreases the lexicographical order of words.

| Claim              | Formalisation                                                                                                        | Comment                                                                                  |
| ------------------ | -------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| Proposition 5.1    | Not formalised and not used, included just for presentation purposes                                                 |                                                                                          |
| Definition 5.2     | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](HoTT-Agda/core/lib/groups/GeneratedGroup.agda)                       |                                                                                          |
| Definition C.2     | Not formalised and not used, included just for presentation purposes                                                 |                                                                                          |
| Proposition 5.3    | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](HoTT-Agda/core/lib/groups/GeneratedGroup.agda)                       |                                                                                          |
| Definition 5.4     | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](HoTT-Agda/core/lib/groups/GeneratedGroup.agda)                       |                                                                                          |
| Proposition 5.5    | [HoTT-Agda/core/lib/groups/GeneratedGroup.agda](HoTT-Agda/core/lib/groups/GeneratedGroup.agda)                       |                                                                                          |
| Definition 5.6     | [Pi/Coxeter/Coxeter.agda#L38](Pi/Coxeter/Coxeter.agda#L38)                                                           | Missing successor in the paper                                                           |
| Definition 5.7     | [Pi/Common/ListN.agda#L37](Pi/Common/ListN.agda#L37)                                                                 | Not using Fin for the result                                                             |
| Definition 5.8     | [Pi/Coxeter/NonParametrized/ReductionRel.agda#L13](Pi/Coxeter/NonParametrized/ReductionRel.agda#L13)                 | Slightly different (but equivalent) form of constructors                                 |
| Definition C.3     | [Pi/Coxeter/Coxeter.agda#L43](Pi/Coxeter/Coxeter.agda#L43)                                                           |                                                                                          |
| Definition C.4     | [Pi/Coxeter/NonParametrized/ReductionRel.agda#L18](Pi/Coxeter/NonParametrized/ReductionRel.agda#L18)                 |                                                                                          |
| Definition C.5     | [Pi/Coxeter/NonParametrized/ReductionRel%2B.agda#L14](Pi/Coxeter/NonParametrized/ReductionRel%2B.agda#L14)           |                                                                                          |
| Theorem 5.9.1      | [Pi/Coxeter/NonParametrized/Diamond.agda#L23](Pi/Coxeter/NonParametrized/Diamond.agda#L23)                           |                                                                                          |
| Theorem 5.9.2      | Proven on paper - lexicographic ordering                                                                             |                                                                                          |
| Theorem 5.9.3      | [Pi/Coxeter/NonParametrized/Diamond.agda#L170](Pi/Coxeter/NonParametrized/Diamond.agda#L170)                         |                                                                                          |
| Theorem 5.9.4.a    | [Pi/Coxeter/NonParametrized/LehmerReduction.agda#L372](Pi/Coxeter/NonParametrized/LehmerReduction.agda#L372)         | Exists `v`                                                                               |
| Theorem 5.9.4.b    | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232](Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)         | `v` is NF                                                                                |
| Theorem 5.9.4.c    | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L294](Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L294)         | NF is unique                                                                             |
| Proposition 5.10   | [Pi/Coxeter/NonParametrized/CoxeterMCoxeterEquiv.agda#L37](Pi/Coxeter/NonParametrized/CoxeterMCoxeterEquiv.agda#L37) | Also proven for other versions of Coxeter                                                |
| Proposition 5.11.1 | [Pi/Coxeter/Norm.agda#L19](Pi/Coxeter/Norm.agda#L19)                                                                 |                                                                                          |
| Proposition 5.11.2 | [Pi/Coxeter/Norm.agda#L25](Pi/Coxeter/Norm.agda#L25)                                                                 |                                                                                          |
| Definition 5.12    | [Pi/Coxeter/Sn.agda#L22](Pi/Coxeter/Sn.agda#L22)                                                                     |                                                                                          |
| Proposition 5.13.1 | [Pi/Coxeter/Norm.agda](Pi/Coxeter/Norm.agda)                                                                         |                                                                                          |
| Proposition 5.13.2 | [Pi/Coxeter/Norm.agda#L163](Pi/Coxeter/Norm.agda#L163)                                                               |                                                                                          |
| Theorem 5.14.1     | [Pi/Coxeter/Group.agda#L14](Pi/Coxeter/Group.agda#L14)                                                               |                                                                                          |
| Theorem 5.14.2     | [Pi/Coxeter/GeneratedGroup.agda#L11](Pi/Coxeter/GeneratedGroup.agda#L11)                                             |                                                                                          |
| Definition 5.15    | [Pi/Lehmer/Lehmer2.agda#L7](Pi/Lehmer/Lehmer2.agda#L7)                                                               |                                                                                          |
| Definition 5.17    | [Pi/Coxeter/Lehmer2CoxeterEquiv.agda#L23](Pi/Coxeter/Lehmer2CoxeterEquiv.agda#L23)                                   |                                                                                          |
| Theorem 5.18.1     | [Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232](Pi/Coxeter/NonParametrized/LehmerCanonical.agda#L232)         | Defined using [Pi/Coxeter/LehmerImmersion.agda#L19](Pi/Coxeter/LehmerImmersion.agda#L19) |
| Theorem 5.18.2     | [Pi/Coxeter/NormEquiv.agda](Pi/Coxeter/NormEquiv.agda)                                                               |                                                                                          |
| Corollary 5.19     | [Pi/Coxeter/Lehmer2SnEquiv.agda#L20](Pi/Coxeter/Lehmer2SnEquiv.agda#L20)                                             |                                                                                          |
| Definition 5.20    | [Pi/Lehmer/FinExcept.agda#L48](Pi/Lehmer/FinExcept.agda#L48)                                                         |                                                                                          |
| Lemma 5.21.1       | [Pi/Lehmer/FinExcept.agda#L159](Pi/Lehmer/FinExcept.agda#L159)                                                       |                                                                                          |
| Lemma 5.21.2       | [Pi/Lehmer/FinExcept.agda#L224](Pi/Lehmer/FinExcept.agda#L224)                                                       |                                                                                          |
| Theorem 5.22       | [Pi/Lehmer/Lehmer2FinEquiv.agda#L18](Pi/Lehmer/Lehmer2FinEquiv.agda#L18)                                             |                                                                                          |
| Corollary 5.23     | Composition of previous corollaries                                                                                  |                                                                                          |

#### Section 6

This section presents the equivalence between the syntax and semantics. In the formalisation, this is done by
constructing functions eval/quote for 0, 1, and 2-cells, between each variant of the language and finally with
$U_{fin}$. Instead of following the list of claims in the text, we state what each file does.

 - [Pi/Syntax/Pi+/NonIndexed.agda](Pi/Syntax/Pi+/NonIndexed.agda): (Non-indexed) syntax for Pi+.
 - [Pi/Syntax/Pi+/Indexed.agda](Pi/Syntax/Pi+/Indexed.agda): (Indexed) syntax for Pi+.
 - [Pi/Syntax/Pi^.agda](Pi/Syntax/Pi^.agda): Syntax for Pi^.
 - [Pi/Equiv/Equiv0.agda](Pi/Equiv/Equiv0.agda): The proof of equivalence between Pi+ types and 0-cells in UFin. A composition of:
  - [Pi/Equiv/Equiv0Hat.agda](Pi/Equiv/Equiv0Hat.agda): The proof of equivalence between Pi+ types and Pi^ types.
   - [Pi/Equiv/Equiv0Norm.agda](Pi/Equiv/Equiv0Norm.agda): The proof of equivalence between Pi^ types (natural numbers) and 0-cells in UFin.
 - [Pi/Equiv/Equiv1.agda](Pi/Equiv/Equiv1.agda): The proof of equivalence between the 1-combinators of Pi+ and 1-paths in UFin. A composition of:
  - [Pi/Equiv/Equiv1Hat.agda](Pi/Equiv/Equiv1Hat.agda): The proof of equivalence between Pi+ 1-combinators and Pi^ 1-combinators.
   - [Pi/Equiv/Equiv1Norm.agda](Pi/Equiv/Equiv1Norm.agda): The proof of equivalence between Pi^ 1-combinators and 1-cells in UFin.
 - [Pi/Equiv/Equiv2.agda](Pi/Equiv/Equiv2.agda): The proof of equivalence between the 2-combinators of Pi+ and 2-paths in UFin. A composition of:
  - [Pi/Equiv/Equiv2Hat.agda](Pi/Equiv/Equiv2Hat.agda): The proof of equivalence between Pi+ 1-combinators and Pi^ 1-combinators.
   - [Pi/Equiv/Equiv2Norm.agda](Pi/Equiv/Equiv2Norm.agda): The proof of equivalence between Pi^ 2-combinators and 2-paths in UFin.
 - [Pi/Equiv/Translation.agda](Pi/Equiv/Translation.agda), [Pi/Equiv/Translation2.agda](Pi/Equiv/Translation2.agda): Translation of Pi to Pi+ and back.
 - [Pi/Examples/Interp.agda](Pi/Examples/Interp.agda) - The interpreter for Pi.

#### Section 7

The formalisation includes several examples, including those mentioned in the paper, and several others.

The files are more-or-less self-documented -- we define each reversible circuit, compute their normal forms, then quote
them back, step-by-step using the semantics. One can inspect each term using Agda's interactive mode, using the "Compute
Normal Form" command.

 - [Pi/Examples/Adder.agda](Pi/Examples/Adder.agda): Reversible 3-bit/4-bit adder.
 - [Pi/Examples/Base.agda](Pi/Examples/Base.agda): Helpers and tests.
 - [Pi/Examples/Copy.agda](Pi/Examples/Copy.agda): Reversible copy.
 - [Pi/Examples/ExamplesL.lagda](Pi/Examples/ExamplesL.lagda): Examples used in the paper text, `reversibleOrNorm`
   function  is implemented as `adder3` in [Pi/Examples/Adder.agda](Pi/Examples/Adder.agda).
 - [Pi/Examples/ExpMod.agda](Pi/Examples/ExpMod.agda): Reversible exponentiation modulo 2^n.
 - [Pi/Examples/Incr.agda](Pi/Examples/Incr.agda): Reversible increment.
 - [Pi/Examples/Interp.agda](Pi/Examples/Interp.agda): Interpreters for 1-combinators of Pi, Pi+, Pi^, and various tests.
 - [Pi/Examples/Reset.agda](Pi/Examples/Reset.agda): Reversible reset.
 - [Pi/Examples/Toffoli.agda](Pi/Examples/Toffoli.agda): Toffoli gate (controlled controlled NOT)

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
