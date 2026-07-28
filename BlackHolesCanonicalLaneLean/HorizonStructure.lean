import HautevilleHouse.BlackHolesCanonicalLaneLean.SingularityTheorem

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure HorizonStructurePackage {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} where
  eventHorizonTopology : Prop
  cauchyHorizonDefined : Prop
  isoperimetricInequality : Prop
  horizonStability : Prop

structure HorizonStructureEvidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} (H : HorizonStructurePackage G E B S) where
  eventHorizonTopologyClosed : H.eventHorizonTopology
  cauchyHorizonDefinedClosed : H.cauchyHorizonDefined
  isoperimetricInequalityClosed : H.isoperimetricInequality
  horizonStabilityClosed : H.horizonStability

def HorizonStructureClosed {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} (H : HorizonStructurePackage G E B S) : Prop :=
  H.eventHorizonTopology ∧ H.cauchyHorizonDefined ∧ H.isoperimetricInequality ∧ H.horizonStability

theorem horizon_structure_closed_from_evidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} (H : HorizonStructurePackage G E B S) (Ev : HorizonStructureEvidence H) : HorizonStructureClosed H := by
  exact And.intro Ev.eventHorizonTopologyClosed (And.intro Ev.cauchyHorizonDefinedClosed (And.intro Ev.isoperimetricInequalityClosed Ev.horizonStabilityClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse
