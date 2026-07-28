import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure KerrMetricPackage where
  mass : ℝ
  angularMomentum : ℝ
  metricComponents : ℝ → ℝ → ℝ → ℝ → ℝ
  outerEventHorizon : ℝ
  ergosphereExists : Prop
  axisymmetry : Prop

structure KerrMetricEvidence (K : KerrMetricPackage) where
  massPositive : K.mass > 0
  angularMomentumBounded : K.angularMomentum * K.angularMomentum ≤ K.mass * K.mass
  outerEventHorizonFormula : K.outerEventHorizon = K.mass + Real.sqrt (K.mass * K.mass - K.angularMomentum * K.angularMomentum)
  ergosphereExistsClosed : K.ergosphereExists
  axisymmetryClosed : K.axisymmetry

def KerrMetricClosed (K : KerrMetricPackage) : Prop :=
  K.ergosphereExists ∧ K.axisymmetry

theorem kerr_metric_closed_from_evidence (K : KerrMetricPackage) (E : KerrMetricEvidence K) : KerrMetricClosed K :=
  And.intro E.ergosphereExistsClosed E.axisymmetryClosed

end BlackHolesCanonicalLaneLean
end HautevilleHouse
