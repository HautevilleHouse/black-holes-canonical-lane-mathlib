import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SingularityTheoremPackage where
  spacetime : Type
  timelikeGeodesicIncompleteness : Prop
  energyCondition : Prop
  trappingHorizon : Prop
  singularityFormation : Prop

structure SingularityTheoremEvidence (S : SingularityTheoremPackage) where
  timelikeGeodesicIncompletenessClosed : S.timelikeGeodesicIncompleteness
  energyConditionClosed : S.energyCondition
  trappingHorizonClosed : S.trappingHorizon
  singularityFormationClosed : S.singularityFormation

def SingularityTheoremClosed (S : SingularityTheoremPackage) : Prop :=
  S.timelikeGeodesicIncompleteness ∧ S.energyCondition ∧ S.trappingHorizon ∧ S.singularityFormation

theorem singularity_theorem_closed_from_evidence (S : SingularityTheoremPackage) (E : SingularityTheoremEvidence S) : SingularityTheoremClosed S :=
  And.intro E.timelikeGeodesicIncompletenessClosed (And.intro E.energyConditionClosed (And.intro E.trappingHorizonClosed E.singularityFormationClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse
