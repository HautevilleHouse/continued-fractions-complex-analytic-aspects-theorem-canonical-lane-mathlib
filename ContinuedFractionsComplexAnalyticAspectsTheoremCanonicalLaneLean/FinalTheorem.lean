import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.ConformalDynamicsBridge
import HautevilleHouse.ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.ConvergenceRegionLayer

/-!
# Final theorem closure for continued fractions complex analytic aspects

This module defines the epistemological closure structure for the
continued fractions complex analytic aspects theorem, combining conformal
dynamics and convergence region bridges.
-/

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

def ConstrainedCFCAClosure (A : AdmissibleClass) : Prop :=
  ConformalDynamicsBridgeClosed conformalDynamicsCertificate ∧
  ConvergenceRegionLayerClosed convergenceCertificate ∧
  bridgeClosed A ∧ gateClosed A

theorem constrained_cfca_endgame (A : AdmissibleClass) :
    ConstrainedCFCAClosure A := by
  exact And.intro conformal_dynamics_bridge_closed_checked
    (And.intro convergence_region_layer_closed_checked
    (And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)))

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse