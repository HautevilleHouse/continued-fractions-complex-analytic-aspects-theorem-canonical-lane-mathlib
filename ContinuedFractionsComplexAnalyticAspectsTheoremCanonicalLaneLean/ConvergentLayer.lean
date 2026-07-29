import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Convergent layer
This layer records the admissible convergence of continued fractions in the complex plane.
-/

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

structure ConvergentDatum where
  partialQuotientSequence : List ℂ
  limitValue : ℂ
  convergenceRadius : ℝ
  analyticContinuationPossible : Bool

def primitiveConvergentDatum : ConvergentDatum := {
  partialQuotientSequence := [0, 1, 1, 2, 3, 5]
  limitValue := (1 + Complex.sqrt 5) / 2
  convergenceRadius := ∞
  analyticContinuationPossible := true
}

theorem convergence_radius_infinite : primitiveConvergentDatum.convergenceRadius = ∞ := by
  rfl

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse
