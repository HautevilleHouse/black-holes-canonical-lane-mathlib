import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleSpacetime where
  manifold : Type u
  metric : Type v
  nullInfinity : Type w
  asymptoticallyFlat : Prop
  globallyHyperbolic : Prop

structure BlackHoleAdmittedObject where
  spacetime : BlackHoleSpacetime
  eventHorizonExists : Prop
  singularityTheoremSatisfied : Prop
  endpointCondition : Prop
  conclusion : eventHorizonExists ∧ singularityTheoremSatisfied

def BlackHoleWitnessClosed (O : BlackHoleAdmittedObject) : Prop :=
  O.eventHorizonExists ∧ O.singularityTheoremSatisfied

end BlackHolesCanonicalLaneLean
end HautevilleHouse