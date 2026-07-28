import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SingularityTheoremPackage where
  geodesicIncompleteness : Prop
  trappedSurface : Prop
  strongEnergyCondition : Prop
  singularityStatement : Prop

structure SingularityTheoremEvidence (S : SingularityTheoremPackage) where
  geodesicIncompletenessClosed : S.geodesicIncompleteness
  trappedSurfaceClosed : S.trappedSurface
  strongEnergyConditionClosed : S.strongEnergyCondition
  singularityStatementClosed : S.singularityStatement

def SingularityTheoremClosed (S : SingularityTheoremPackage) : Prop :=
  S.geodesicIncompleteness ∧ S.trappedSurface ∧ S.strongEnergyCondition ∧ S.singularityStatement

theorem singularity_theorem_closed_from_evidence (S : SingularityTheoremPackage)
    (ev : SingularityTheoremEvidence S) : SingularityTheoremClosed S := by
  exact And.intro ev.geodesicIncompletenessClosed
    (And.intro ev.trappedSurfaceClosed
      (And.intro ev.strongEnergyConditionClosed ev.singularityStatementClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse