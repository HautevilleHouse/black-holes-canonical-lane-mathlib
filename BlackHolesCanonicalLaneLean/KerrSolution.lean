import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure KerrMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  mass : ℝ
  angularMomentum : ℝ
  riemannTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothLorentzianFourManifold : Prop
  metricSmooth : Prop
  einsteinTensorVanishes : Prop
  kerrParametersPositive : mass > 0 ∧ angularMomentum ≠ 0

structure KerrMetricEvidence (K : KerrMetricPackage) where
  smoothLorentzianFourManifoldClosed : K.smoothLorentzianFourManifold
  metricSmoothClosed : K.metricSmooth
  einsteinTensorVanishesClosed : K.einsteinTensorVanishes
  kerrParametersPositiveClosed : K.mass > 0 ∧ K.angularMomentum ≠ 0

def KerrMetricClosed (K : KerrMetricPackage) : Prop :=
  K.smoothLorentzianFourManifold ∧ K.metricSmooth ∧ K.einsteinTensorVanishes ∧ (K.mass > 0) ∧ (K.angularMomentum ≠ 0)

theorem kerr_metric_closed_from_evidence
    (K : KerrMetricPackage) (E : KerrMetricEvidence K) : KerrMetricClosed K := by
  exact And.intro E.smoothLorentzianFourManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.einsteinTensorVanishesClosed
        (And.intro (And.left E.kerrParametersPositiveClosed) (And.right E.kerrParametersPositiveClosed))))

end BlackHolesCanonicalLaneLean
end HautevilleHouse