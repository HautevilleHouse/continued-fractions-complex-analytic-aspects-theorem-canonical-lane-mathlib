import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.ComplexAnalyticContinuationLayer

/-!
# Riemann mapping layer
This layer encodes the Riemann mapping theorem and its relation to continued fraction expansions.
-/

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

structure RiemannMappingDatum where
  sourceDomain : Set ℂ
  targetDomain : Set ℂ
  conformalMap : ℂ → ℂ
  mappingConformal : Bool

def unitDisc : Set ℂ := {z | Complex.abs z < 1}
def upperHalfPlane : Set ℂ := {z | Complex.im z > 0}

theorem riemann_mapping_exists (U : Set ℂ) (hU : IsSimplyConnected U) (hU_ne : U ≠ Set.univ) :
    ∃ f : ℂ → ℂ, ConformalOn f U ∧ f '' U = unitDisc := by
  sorry

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse
