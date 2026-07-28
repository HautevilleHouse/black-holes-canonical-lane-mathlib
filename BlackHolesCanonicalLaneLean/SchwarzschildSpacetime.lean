import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SchwarzschildSpacetimePackage where
  mass : ℝ
  metricComponents : Type u
  eventHorizonRadius : ℝ
  regularity : Prop
  asymptoticFlatness : Prop

structure SchwarzschildSpacetimeEvidence (S : SchwarzschildSpacetimePackage) where
  regularityClosed : S.regularity
  asymptoticFlatnessClosed : S.asymptoticFlatness

def SchwarzschildSpacetimeClosed (S : SchwarzschildSpacetimePackage) : Prop :=
  S.regularity ∧ S.asymptoticFlatness

theorem schwarzschild_spacetime_closed_from_evidence
    (S : SchwarzschildSpacetimePackage) (E : SchwarzschildSpacetimeEvidence S) :
    SchwarzschildSpacetimeClosed S := by
  exact And.intro E.regularityClosed E.asymptoticFlatnessClosed

end BlackHolesCanonicalLaneLean
end HautevilleHouse