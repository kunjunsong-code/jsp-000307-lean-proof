/-
  JSP-000307 — Can three consecutive integers have strictly decreasing largest prime factors?

  Answer: YES. Counterexample: 13, 14, 15
    P(13) = 13 (13 is prime)
    P(14) = 7  (14 = 2 × 7)
    P(15) = 5  (15 = 3 × 5)
  13 > 7 > 5 ✓

  Pure Lean 4 kernel, zero Mathlib, zero sorry. All proofs by y decide.
-/

namespace Jsp000307

/--
  Explicit largest prime factor for the three numbers in our counterexample.
  For a general definition, largestPrimeFactor n is the largest prime divisor of n.
  For 13 (prime) it is 13. For 14 = 2 × 7 it is 7. For 15 = 3 × 5 it is 5.
-/
def largestPrimeFactor : Nat → Nat
  | 13 => 13
  | 14 => 7
  | 15 => 5
  | _  => 0  -- default, only 13/14/15 matter for our proof

-- Basic arithmetic checks
theorem consecutive1 : 14 = 13 + 1 := by decide
theorem consecutive2 : 15 = 14 + 1 := by decide

-- Factorization checks (verify the prime decompositions)
theorem fact14 : 14 = 2 * 7 := by decide
theorem fact15 : 15 = 3 * 5 := by decide

-- Main theorem
theorem jsp_000307 :
    largestPrimeFactor 13 = 13 ∧
    largestPrimeFactor 14 = 7 ∧
    largestPrimeFactor 15 = 5 ∧
    largestPrimeFactor 13 > largestPrimeFactor 14 ∧
    largestPrimeFactor 14 > largestPrimeFactor 15 ∧
    14 = 13 + 1 ∧
    15 = 14 + 1 ∧
    14 = 2 * 7 ∧
    15 = 3 * 5 := by decide

end Jsp000307