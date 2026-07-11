# Chinese Remainder Theorem

For coprime moduli, simultaneous congruences have a solution, unique modulo the product.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. Coprime `m, n` both divide `x - y` iff `m * n` does.
2. That gives uniqueness modulo `m * n`.
3. Existence comes from Bézout coefficients, packaged as `Nat.chineseRemainder`.
4. Reducing the solution mod `m * n` puts it below `m * n`.

## Contents

- [`ChineseRemainder/Basic.lean`](ChineseRemainder/Basic.lean): the main development
- [`ChineseRemainder/Examples.lean`](ChineseRemainder/Examples.lean): small worked examples

Declarations:

- `ChineseRemainder.modEq_mul_iff`
- `ChineseRemainder.crt_unique`
- `ChineseRemainder.crt_exists`
- `ChineseRemainder.crt_exists_lt`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
