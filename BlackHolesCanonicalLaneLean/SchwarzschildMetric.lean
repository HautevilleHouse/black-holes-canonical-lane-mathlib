import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SchwarzschildMetricPackage where
  mass : ℝ
  metricComponent : ℝ → ℝ → ℝ
  schwarzschildRadius : ℝ
  asymptoticFlatness : Prop
  eventHorizonExists : Prop

structure SchwarzschildMetricEvidence (S : SchwarzschildMetricPackage) where
  massPositive : S.mass > 0
  metricComponentDefined : ∀ r t, S.metricComponent r t = 1 - 2 * S.mass / r
  schwarzschildRadiusPositive : S.schwarzschildRadius = 2 * S.mass
  asymptoticFlatnessClosed : S.asymptoticFlatness
  eventHorizonExistsClosed : S.eventHorizonExists

def SchwarzschildMetricClosed (S : SchwarzschildMetricPackage) : Prop :=
  S.asymptoticFlatness ∧ S.eventHorizonExists

theorem schwarzschild_metric_closed_from_evidence (S : SchwarzschildMetricPackage) (E : SchwarzschildMetricEvidence S) : SchwarzschildMetricClosed S :=
  And.intro E.asymptoticFlatnessClosed E.eventHorizonExistsClosed

end BlackHolesCanonicalLaneLean
end HautevilleHouse
