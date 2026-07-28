import BlackHolesCanonicalLaneLean.BlackHoleObjects

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure AdmissibleClass where
  object : BlackHoleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BlackHoleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BlackHolesCanonicalLaneLean
end HautevilleHouse