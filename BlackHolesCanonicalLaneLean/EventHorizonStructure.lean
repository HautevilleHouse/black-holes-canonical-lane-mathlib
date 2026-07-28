import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure EventHorizonPackage where
  horizonExists : Prop
  horizonSmooth : Prop
  horizonAreaFinite : Prop
  noEscapeCondition : Prop

structure EventHorizonEvidence (E : EventHorizonPackage) where
  horizonExistsClosed : E.horizonExists
  horizonSmoothClosed : E.horizonSmooth
  horizonAreaFiniteClosed : E.horizonAreaFinite
  noEscapeConditionClosed : E.noEscapeCondition

def EventHorizonClosed (E : EventHorizonPackage) : Prop :=
  E.horizonExists ∧ E.horizonSmooth ∧ E.horizonAreaFinite ∧ E.noEscapeCondition

theorem event_horizon_closed_from_evidence (E : EventHorizonPackage)
    (ev : EventHorizonEvidence E) : EventHorizonClosed E := by
  exact And.intro ev.horizonExistsClosed
    (And.intro ev.horizonSmoothClosed
      (And.intro ev.horizonAreaFiniteClosed ev.noEscapeConditionClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse