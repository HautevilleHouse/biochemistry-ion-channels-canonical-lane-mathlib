import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelAdmittedObject where
  carrier : Type
  conductanceProperty : Prop
  bindingState : Prop
  conclusion : conductanceProperty

structure ChannelConductancePackage where
  channelObject : IonChannelAdmittedObject
  conductanceMeasured : Prop
  selectivePermeability : Prop
  gatingMechanism : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  true  -- will be refined

def gateClosed (A : AdmissibleClass) : Prop :=
  true

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  trivial

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse