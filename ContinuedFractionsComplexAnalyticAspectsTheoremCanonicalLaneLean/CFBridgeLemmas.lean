import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.ContinuedFractionComplexAnalyticLayers

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

/-!
# Bridge lemmas for continued fraction complex analytic aspects

This module connects the convergence region and analytic function data
to the admissible class bridge.
-/

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let cfData : AnalyticFunctionDatum := A.cfAnalyticData
  cfData.region.checked ∧ cfData.analyticContinuationPossible

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : A.cfAnalyticData.region.checked := A.cfAnalyticData.region.proof
  have h2 : A.cfAnalyticData.analyticContinuationPossible := A.cfAnalyticData.analyticProof
  exact And.intro h1 h2

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse