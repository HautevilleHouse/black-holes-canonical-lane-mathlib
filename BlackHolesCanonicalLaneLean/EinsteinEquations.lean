import HautevilleHouse.BlackHolesCanonicalLaneLean.SpacetimeGeometry

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure EinsteinEquationsPackage {G : SpacetimePackage} where
  stressEnergyTensor : Type u
  cosmologicalConstant : Type v
  einsteinTensorDefined : Prop
  fieldEquations : Prop
  initialData : Prop

structure EinsteinEquationsEvidence {G : SpacetimePackage} (E : EinsteinEquationsPackage G) where
  einsteinTensorDefinedClosed : E.einsteinTensorDefined
  fieldEquationsClosed : E.fieldEquations
  initialDataClosed : E.initialData

def EinsteinEquationsClosed {G : SpacetimePackage} (E : EinsteinEquationsPackage G) : Prop :=
  E.einsteinTensorDefined ∧ E.fieldEquations ∧ E.initialData

theorem einstein_equations_closed_from_evidence {G : SpacetimePackage} (E : EinsteinEquationsPackage G) (Ev : EinsteinEquationsEvidence E) : EinsteinEquationsClosed E := by
  exact And.intro Ev.einsteinTensorDefinedClosed (And.intro Ev.fieldEquationsClosed Ev.initialDataClosed)

end BlackHolesCanonicalLaneLean
end HautevilleHouse
