import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure EventHorizonPackage where
  trappedSurface : ℝ → ℝ
  nullGeodesics : Prop
  causalBoundary : Prop
  blackHoleRegion : Prop
  eventHorizonDefined : Prop

structure EventHorizonEvidence (E : EventHorizonPackage) where
  trappedSurfaceClosed : E.trappedSurface = (fun r => r)
  nullGeodesicsClosed : E.nullGeodesics
  causalBoundaryClosed : E.causalBoundary
  blackHoleRegionClosed : E.blackHoleRegion
  eventHorizonDefinedClosed : E.eventHorizonDefined

def EventHorizonClosed (E : EventHorizonPackage) : Prop :=
  E.nullGeodesics ∧ E.causalBoundary ∧ E.blackHoleRegion ∧ E.eventHorizonDefined

theorem event_horizon_closed_from_evidence (E : EventHorizonPackage) (Ev : EventHorizonEvidence E) : EventHorizonClosed E :=
  And.intro Ev.nullGeodesicsClosed (And.intro Ev.causalBoundaryClosed (And.intro Ev.blackHoleRegionClosed Ev.eventHorizonDefinedClosed))

end BlackHolesCanonicalLaneLean
end HautevilleHouse
