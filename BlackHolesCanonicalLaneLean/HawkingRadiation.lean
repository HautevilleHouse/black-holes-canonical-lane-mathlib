import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure HawkingRadiationPackage where
  blackHoleMass : ℝ
  hawkingTemperature : ℝ
  particleCreation : Prop
  blackHoleEvaporation : Prop
  informationLoss : Prop

structure HawkingRadiationEvidence (H : HawkingRadiationPackage) where
  temperatureFormula : H.hawkingTemperature = 1 / (8 * π * H.blackHoleMass)
  particleCreationClosed : H.particleCreation
  blackHoleEvaporationClosed : H.blackHoleEvaporation
  informationLossClosed : H.informationLoss

def HawkingRadiationClosed (H : HawkingRadiationPackage) : Prop :=
  H.particleCreation ∧ H.blackHoleEvaporation ∧ H.informationLoss

theorem hawking_radiation_closed_from_evidence (H : HawkingRadiationPackage) (E : HawkingRadiationEvidence H) : HawkingRadiationClosed H :=
  And.intro E.particleCreationClosed (And.intro E.blackHoleEvaporationClosed E.informationLossClosed)

end BlackHolesCanonicalLaneLean
end HautevilleHouse
