import ChineseRemainder.Basic

namespace ChineseRemainder

example : ∃ x, x ≡ 2 [MOD 3] ∧ x ≡ 3 [MOD 5] := crt_exists (by decide) 2 3

example : 8 ≡ 2 [MOD 3] ∧ 8 ≡ 3 [MOD 5] := by decide

end ChineseRemainder
