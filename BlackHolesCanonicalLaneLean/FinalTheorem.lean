import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlackHolesCanonicalLaneLean.EventHorizonStructure
import HautevilleHouse.BlackHolesCanonicalLaneLean.SingularityTheorems
import HautevilleHouse.BlackHolesCanonicalLaneLean.BlackHoleThermodynamics

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleAdmissibleObject where
  eventHorizon : EventHorizonPackage
  singularity : SingularityTheoremPackage
  thermodynamics : BlackHoleThermodynamicsPackage
  horizonClosedEventHorizon : EventHorizonClosed eventHorizon
  horizonClosedSingularity : SingularityTheoremClosed singularity
  horizonClosedThermodynamics : BlackHoleThermodynamicsClosed thermodynamics

structure AdmissibleClass where
  object : BlackHoleAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.horizonClosedEventHorizon ∧ obj.horizonClosedSingularity ∧ obj.horizonClosedThermodynamics

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let obj := A.object
  exact And.intro obj.horizonClosedEventHorizon
    (And.intro obj.horizonClosedSingularity obj.horizonClosedThermodynamics)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBlackHoleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem black_hole_endgame (A : AdmissibleClass) : ConstrainedBlackHoleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlackHolesCanonicalLaneLean
end HautevilleHouse