import BlackHolesCanonicalLaneLean.BlackHoleObjects

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleMetricPackage (M : BlackHoleSpacetime) where
  metricField : Type u
  lorentzianSignature : Prop
  ricciFlatness : Prop
  asymptoticFlatness : M.asymptoticallyFlat
  smoothness : Prop

structure BlackHoleMetricEvidence (M : BlackHoleSpacetime) (P : BlackHoleMetricPackage M) where
  lorentzianSignatureClosed : P.lorentzianSignature
  ricciFlatnessClosed : P.ricciFlatness
  asymptoticFlatnessClosed : P.asymptoticFlatness
  smoothnessClosed : P.smoothness

def BlackHoleMetricClosed (M : BlackHoleSpacetime) (P : BlackHoleMetricPackage M) : Prop :=
  P.lorentzianSignature ∧ P.ricciFlatness ∧ P.asymptoticFlatness ∧ P.smoothness

theorem black_hole_metric_closed_from_evidence (M : BlackHoleSpacetime) (P : BlackHoleMetricPackage M)
    (E : BlackHoleMetricEvidence M P) : BlackHoleMetricClosed M P := by
  exact And.intro E.lorentzianSignatureClosed
    (And.intro E.ricciFlatnessClosed
      (And.intro E.asymptoticFlatnessClosed E.smoothnessClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse