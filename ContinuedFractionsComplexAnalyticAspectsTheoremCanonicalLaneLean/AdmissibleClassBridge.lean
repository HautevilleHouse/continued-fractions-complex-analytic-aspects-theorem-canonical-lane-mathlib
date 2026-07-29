import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.AnalyticContinuationLayer

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

/-!
# Admissible class bridge for continued fraction complex analytic aspects

This module defines the admissible class object and its bridge to the
admissible class structure.
-/

open HautevilleHouse.CanonicalLaneMathlib

structure CFAdmittedTheoremObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

deriving Repr, DecidableEq

def cfTheoremSpecificObject : CFAdmittedTheoremObject := {
  sourceKey := "continued-fractions-complex-analytic-aspects-canonical-lane",
  theoremObject := "Continued Fractions Complex Analytic Aspects Theorem",
  claimBoundary := "Convergence and analytic continuation of continued fractions"
}

-- Extend AdmissibleClass with CF-specific data
structure CFAdmissibleClass extends AdmissibleClass where
  cfAnalyticData : AnalyticFunctionDatum
  cfBridgeWitness : bridgeClosed (CFAdmissibleClass.toAdmissibleClass this)

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse