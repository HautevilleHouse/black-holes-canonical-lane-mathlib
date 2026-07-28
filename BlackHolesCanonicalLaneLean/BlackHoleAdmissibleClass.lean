import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleAdmittedObject where
  spacetime : Type u
  topology : TopologicalSpace spacetime
  smoothStructure : Prop
  lorentzianMetric : Prop
  einsteinEquation : Prop
  conclusion : smoothStructure ∧ lorentzianMetric ∧ einsteinEquation

structure AdmissibleClass where
  object : BlackHoleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BlackHoleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BlackHoleWitnessClosed (O : BlackHoleAdmittedObject) : Prop :=
  O.smoothStructure ∧ O.lorentzianMetric ∧ O.einsteinEquation

end BlackHolesCanonicalLaneLean
end HautevilleHouse