# Phase 1 — Dart Fundamentals

Notes, explanations, and mini projects from weeks 1–2. Everything here is CLI — no Flutter yet, just getting comfortable with Dart before touching widgets.

> Note: AI was used exclusively to refine the grammar and clarity of this README. It was not used to generate any code or project logic. 

---

## Projects

### Unit Converter

[`UnitConverter.dart`](/PhaseOne/UnitConverter.dart)

First project after going through types, null safety, variables, and functions Controll Flow.

The idea is simple: pass a weight in kilograms, get back a readable string telling you the equivalent in pounds.

The function has one constant — the conversion rate — and one parameter for the input. It multiplies them together and returns a formatted string rather than a raw number, which felt like a more honest representation of what a converter should actually give you.

**What I practiced:** declaring constants with `const`, function parameters, string interpolation, and return types.


### Grade Tracker

[`GradeTracker`](/PhaseOne/GradeTracker)

Second project after going through collections: List, Map, and Set.

The core data structure is a `Map<String, List<int>>` — each student's name maps to a list of their scores. That pairing felt natural once I understood Maps: the name is the key you look up, the list is everything attached to it. I used the `collection` package for `.average`, `.max`, and `.min` on the lists rather than writing the math manually, since the point of this project was collections, not arithmetic.

The report prints in a single `forEach` loop over the Map. While iterating I also track the top student by comparing each average against a running high score — so there's no second pass over the data. The class average gets calculated after the loop using a running sum accumulated during it.

**What I practiced:** `Map`, `List`, `forEach`, the `collection` package, string padding with `padRight`, and tracking state across a loop with running variables.

### Bank Account

[`BankAccount`](/PhaseOne/BankAccount)

Third project after going through classes and OOP patterns.

The class holds one piece of state — `balance` — and exposes two operations on it: deposit and withdraw. Both return a formatted string rather than just mutating silently, which made testing in `main()` feel immediate. The withdraw method checks for a zero balance before doing anything, which was the first time I had a method that needed to think before acting rather than just execute.


**What I practiced:** class declaration, constructors, instance variables, methods with return types, and basic conditional logic inside a method.

Here's the section in the same style:

---

### Fake API Fetcher

[`FakeAPIFetcher`](/PhaseOne/FakeAPIFetcher)

Fourth project after going through async/await and Futures.

The program fetches a single product from [fakestoreapi.com](https://fakestoreapi.com) and prints its title, ID, and description. Simple on the surface, but this is the first project where the order of execution stopped being top-to-bottom — `main()` has to wait for `fetchData()` to come back before it can do anything, and making peace with that was the actual lesson here.

`fetchData()` returns a `Future<Post>`, which meant I had to think about what the function *promises* rather than what it immediately gives. The status code check was the first time error handling felt necessary rather than theoretical — a silent failure from a bad response would have been genuinely hard to debug without it. The JSON decoding step made `Map<String, dynamic>` click in a way the collections project didn't fully capture: the type is vague by necessity, not by laziness.

The `Post` class is minimal on purpose — just enough to give the response data names instead of string keys.

**What I practiced:** `async`/`await`, `Future<T>` as a return type, the `http` package, `dart:convert` for JSON decoding, status code handling, and mapping raw API data onto a typed class.