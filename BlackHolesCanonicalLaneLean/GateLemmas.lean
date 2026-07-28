import BlackHolesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BlackHolesCanonicalLaneLean
end HautevilleHouse