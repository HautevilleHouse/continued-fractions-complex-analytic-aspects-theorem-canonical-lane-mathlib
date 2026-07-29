import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.CFBridgeLemmas

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

/-!
# Gate lemmas for continued fraction complex analytic aspects

This module defines the gate closure condition.
-/

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse