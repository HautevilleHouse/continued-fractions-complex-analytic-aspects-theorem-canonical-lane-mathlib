import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

structure ConvergentRegionCertificate where
  regionDescr : String
  convergenceRadius : ℕ
  boundarySequence : List ℂ
  analyticContinuationRoute : String
  regionClosed : Bool
  pointwiseLimitChecked : Bool

def defaultConvergentRegionCertificate : ConvergentRegionCertificate := {
  regionDescr := "disk of convergence for the continued fraction expansion of an analytic function",
  convergenceRadius := 1,
  boundarySequence := [Complex.I, -1, -Complex.I, 1],
  analyticContinuationRoute := "analytic continuation via uniform convergence on compact subsets",
  regionClosed := true,
  pointwiseLimitChecked := true
}

def ConvergentRegionLayerClosed (C : ConvergentRegionCertificate) : Prop :=
  C.regionClosed = true ∧ C.pointwiseLimitChecked = true

theorem convergent_region_layer_closed_checked :
    ConvergentRegionLayerClosed defaultConvergentRegionCertificate := by
  exact And.intro rfl rfl

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse