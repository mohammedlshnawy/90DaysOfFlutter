# Phase 1 — Dart Fundamentals

Notes, explanations, and mini projects from weeks 1–2. Everything here is CLI — no Flutter yet, just getting comfortable with Dart before touching widgets.

> Note: AI was used exclusively to refine the grammar and clarity of this README. It was not used to generate any code or project logic. 

---

## Projects

### Unit Converter

[`1_UnitConverter.dart`](/PhaseOne/1_UnitConverter.dart)

First project after going through types, null safety, variables, and functions.

The idea is simple: pass a weight in kilograms, get back a readable string telling you the equivalent in pounds.

The function has one constant — the conversion rate — and one parameter for the input. It multiplies them together and returns a formatted string rather than a raw number, which felt like a more honest representation of what a converter should actually give you.

**What I practiced:** declaring constants with `const`, function parameters, string interpolation, and return types.


### Grade Tracker

[`2_GradeTracker.dart`](/PhaseOne/2_GradeTracker.dart)

Second project after going through collections: List, Map, and Set.

The core data structure is a `Map<String, List<int>>` — each student's name maps to a list of their scores. That pairing felt natural once I understood Maps: the name is the key you look up, the list is everything attached to it. I used the `collection` package for `.average`, `.max`, and `.min` on the lists rather than writing the math manually, since the point of this project was collections, not arithmetic.

The report prints in a single `forEach` loop over the Map. While iterating I also track the top student by comparing each average against a running high score — so there's no second pass over the data. The class average gets calculated after the loop using a running sum accumulated during it.

**What I practiced:** `Map`, `List`, `forEach`, the `collection` package, string padding with `padRight`, and tracking state across a loop with running variables.