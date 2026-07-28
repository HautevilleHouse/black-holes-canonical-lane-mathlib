import HautevilleHouse.BlackHolesCanonicalLaneLean.EinsteinEquations

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleSolutionPackage {G : SpacetimePackage} {E : EinsteinEquationsPackage G} where
  singularityExistence : Prop
  eventHorizonDefined : Prop
  stationaryAsymptoticallyFlat : Prop
  hawkingPenroseEnergyCondition : Prop
  causalStructure : Prop

structure BlackHoleSolutionEvidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} (B : BlackHoleSolutionPackage G E) where
  singularityExistenceClosed : B.singularityExistence
  eventHorizonDefinedClosed : B.eventHorizonDefined
  stationaryAsymptoticallyFlatClosed : B.stationaryAsymptoticallyFlat
  hawkingPenroseEnergyConditionClosed : B.hawkingPenroseEnergyCondition

def BlackHoleSolutionClosed {G : SpacetimePackage} {E : EinsteinEquationsPackage G} (B : BlackHoleSolutionPackage G E) : Prop :=
  B.singularityExistence ∧ B.eventHorizonDefined ∧ B.stationaryAsymptoticallyFlat ∧ B.hawkingPenroseEnergyCondition

theorem black_hole_solution_closed_from_evidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} (B : BlackHoleSolutionPackage G E) (Ev : BlackHoleSolutionEvidence B) : BlackHoleSolutionClosed B := by
  exact And.intro Ev.singularityExistenceClosed (And.intro Ev.eventHorizonDefinedClosed (And.intro Ev.stationaryAsymptoticallyFlatClosed Ev.hawkingPenroseEnergyConditionClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse
