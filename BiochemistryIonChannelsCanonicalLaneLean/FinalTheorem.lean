import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.ChannelConductanceBridge

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

def ConstrainedIonChannelClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ion_channel_endgame (A : AdmissibleClass) :
    ConstrainedIonChannelClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse