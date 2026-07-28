import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure SpacetimePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  lorentzianMetric : Type w
  dimensionFour : Prop
  timeOrientation : Prop
  metricSmooth : Prop
  curvatureTensor : Type x
  ricciTensor : Type y
  scalarCurvature : Type z

structure SpacetimeEvidence (G : SpacetimePackage) where
  dimensionFourClosed : G.dimensionFour
  timeOrientationClosed : G.timeOrientation
  metricSmoothClosed : G.metricSmooth
  curvatureTensorClosed : G.curvatureTensor

def SpacetimeClosed (G : SpacetimePackage) : Prop :=
  G.dimensionFour ∧ G.timeOrientation ∧ G.metricSmooth

theorem spacetime_closed_from_evidence (G : SpacetimePackage) (E : SpacetimeEvidence G) : SpacetimeClosed G := by
  exact And.intro E.dimensionFourClosed (And.intro E.timeOrientationClosed E.metricSmoothClosed)

end BlackHolesCanonicalLaneLean
end HautevilleHouse
