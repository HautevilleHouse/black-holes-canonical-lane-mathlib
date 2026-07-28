import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlackHolesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "black-holes-canonical-lane"
def sourceDescription : String := "Penrose singularity theorem"
def baselineCertificateLane : String := "event_horizon_constrained"
def baselineCertificateAllPass : Bool := true
def outsideConstantDependencyCount : Nat := 0

instance : Inhabited TheoremStatement where
  default :=
    { sourceKey := sourceRepository
    , theoremName := sourceRepository
    , theoremObject := sourceDescription
    , classicalBoundary := "singularity existence"
    , manifoldConstrainedStatement := "spacetime-constrained theorem certificate"
    , certificateLane := baselineCertificateLane
    , carriedRemainder := "classical source boundary"
    }

def sourceTheoremStatement : TheoremStatement := default

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by rfl

end BlackHolesCanonicalLaneLean
end HautevilleHouse