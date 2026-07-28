import HautevilleHouse.BlackHolesCanonicalLaneLean.HorizonStructure

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleUniquenessPackage {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} {H : HorizonStructurePackage G E B S} where
  isrealUniqueness : Prop
  kerrFamilyComplete : Prop
  noHairTheorem : Prop
  massAngularMomentumRelation : Prop

structure BlackHoleUniquenessEvidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} {H : HorizonStructurePackage G E B S} (U : BlackHoleUniquenessPackage G E B S H) where
  isrealUniquenessClosed : U.isrealUniqueness
  kerrFamilyCompleteClosed : U.kerrFamilyComplete
  noHairTheoremClosed : U.noHairTheorem
  massAngularMomentumRelationClosed : U.massAngularMomentumRelation

def BlackHoleUniquenessClosed {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} {H : HorizonStructurePackage G E B S} (U : BlackHoleUniquenessPackage G E B S H) : Prop :=
  U.isrealUniqueness ∧ U.kerrFamilyComplete ∧ U.noHairTheorem ∧ U.massAngularMomentumRelation

theorem black_hole_uniqueness_closed_from_evidence {G : SpacetimePackage} {E : EinsteinEquationsPackage G} {B : BlackHoleSolutionPackage G E} {S : SingularityTheoremPackage G E B} {H : HorizonStructurePackage G E B S} (U : BlackHoleUniquenessPackage G E B S H) (Ev : BlackHoleUniquenessEvidence U) : BlackHoleUniquenessClosed U := by
  exact And.intro Ev.isrealUniquenessClosed (And.intro Ev.kerrFamilyCompleteClosed (And.intro Ev.noHairTheoremClosed Ev.massAngularMomentumRelationClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse
