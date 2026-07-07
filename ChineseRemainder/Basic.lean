import Mathlib

/-!
# The Chinese remainder theorem

For coprime `m, n`, the pair of congruences `x ≡ a [MOD m]`, `x ≡ b [MOD n]`
has a solution below `m * n`, and any two solutions agree modulo `m * n`.
-/

namespace ChineseRemainder

/-- For coprime moduli, congruence mod `m * n` splits into both congruences. -/
theorem modEq_mul_iff {m n x y : ℕ} (h : Nat.Coprime m n) :
    x ≡ y [MOD m * n] ↔ x ≡ y [MOD m] ∧ x ≡ y [MOD n] :=
  (Nat.modEq_and_modEq_iff_modEq_mul h).symm

/-- Uniqueness: two solutions agree modulo `m * n`. -/
theorem crt_unique {m n x y : ℕ} (h : Nat.Coprime m n) (hm : x ≡ y [MOD m])
    (hn : x ≡ y [MOD n]) : x ≡ y [MOD m * n] :=
  (modEq_mul_iff h).mpr ⟨hm, hn⟩

/-- **Chinese remainder theorem**, existence. -/
theorem crt_exists {m n : ℕ} (h : Nat.Coprime m n) (a b : ℕ) :
    ∃ x, x ≡ a [MOD m] ∧ x ≡ b [MOD n] :=
  let c := Nat.chineseRemainder h a b
  ⟨c.1, c.2.1, c.2.2⟩

/-- The solution can be chosen below `m * n`. -/
theorem crt_exists_lt {m n : ℕ} (h : Nat.Coprime m n) (hm : m ≠ 0) (hn : n ≠ 0) (a b : ℕ) :
    ∃ x < m * n, x ≡ a [MOD m] ∧ x ≡ b [MOD n] := by
  sorry

end ChineseRemainder
