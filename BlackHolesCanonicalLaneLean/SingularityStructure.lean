import BlackHolesCanonicalLaneLean.BlackHoleMetric

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SingularityTheoremPackage (M : BlackHoleSpacetime) (G : BlackHoleMetricPackage M) where
  geodesicIncompleteness : Prop
  energyCondition : Prop
  trappedSurface : Prop
  conclusion : geodesicIncompleteness ∧ energyCondition ∧ trappedSurface

structure SingularityTheoremEvidence (M : BlackHoleSpacetime) (G : BlackHoleMetricPackage M)
    (S : SingularityTheoremPackage M G) where
  geodesicIncompletenessClosed : S.geodesicIncompleteness
  energyConditionClosed : S.energyCondition
  trappedSurfaceClosed : S.trappedSurface

def SingularityTheoremClosed (M : BlackHoleSpacetime) (G : BlackHoleMetricPackage M)
    (S : SingularityTheoremPackage M G) : Prop :=
  S.geodesicIncompleteness ∧ S.energyCondition ∧ S.trappedSurface

theorem singularity_theorem_closed_from_evidence (M : BlackHoleSpacetime) (G : BlackHoleMetricPackage M)
    (S : SingularityTheoremPackage M G) (E : SingularityTheoremEvidence M G S) :
    SingularityTheoremClosed M G S := by
  exact And.intro E.geodesicIncompletenessClosed
    (And.intro E.energyConditionClosed E.trappedSurfaceClosed)

end BlackHolesCanonicalLaneLean
end HautevilleHouse