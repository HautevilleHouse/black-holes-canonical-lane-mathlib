import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure BlackHoleThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  entropyFormula : Prop

structure BlackHoleThermodynamicsEvidence (T : BlackHoleThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  entropyFormulaClosed : T.entropyFormula

def BlackHoleThermodynamicsClosed (T : BlackHoleThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.entropyFormula

theorem black_hole_thermodynamics_closed_from_evidence (T : BlackHoleThermodynamicsPackage)
    (ev : BlackHoleThermodynamicsEvidence T) : BlackHoleThermodynamicsClosed T := by
  exact And.intro ev.firstLawClosed
    (And.intro ev.secondLawClosed
      (And.intro ev.thirdLawClosed ev.entropyFormulaClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse