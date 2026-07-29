import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.RiemannMappingLayer

/-!
# Value distribution layer
This layer captures the distribution of values of continued fraction functions.
-/

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

structure ValueDistributionDatum where
  functionF : ℂ → ℂ
  exceptionalValues : Set ℂ
  nevanlinnaCharacteristic : ℝ → ℝ
  deficiencySum : ℝ

def meromorphicOn (f : ℂ → ℂ) (U : Set ℂ) : Prop := False -- placeholder

theorem picard_meromorphic (f : ℂ → ℂ) (U : Set ℂ) (hM : MeromorphicOn f U) (hU : IsConnected U) :
    (Set.range (f \ U)).finite := by
  sorry

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse
