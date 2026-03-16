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