import ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.analyticContinuationModelWitness,
    A.object.riemannMappingBridgeWitness,
    A.object.valueDistributionLedgerWitness,
    A.object.classicalRemainderCarried⟩

end ContinuedFractionsComplexAnalyticAspectsTheoremCanonicalLaneLean
end HautevilleHouse