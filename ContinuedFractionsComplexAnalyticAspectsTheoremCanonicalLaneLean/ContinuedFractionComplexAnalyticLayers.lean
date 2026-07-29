import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

/-!
# Continued fraction complex analytic layers

This module defines the core structures for representing continued fraction
complex analytic aspects, including convergence regions and analytic functions.
-/

structure ConvergenceRegion where
  region : String
  checked : Bool

deriving Repr, DecidableEq

structure AnalyticFunctionDatum where
  functionLabel : String
  region : ConvergenceRegion
  analyticContinuationPossible : Bool

deriving Repr, DecidableEq

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse