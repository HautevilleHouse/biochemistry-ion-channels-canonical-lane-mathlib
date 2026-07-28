import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.system.conductionActive

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.system.conductionActive

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse