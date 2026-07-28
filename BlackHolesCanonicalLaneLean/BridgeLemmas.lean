import BlackHolesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlackHoleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BlackHolesCanonicalLaneLean
end HautevilleHouse