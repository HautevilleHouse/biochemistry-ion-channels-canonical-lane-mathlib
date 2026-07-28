import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure AdmissibleIonChannel where
  channel : IonChannelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleIonChannel) : Prop :=
  ChannelConductanceBridge.bridgeClosed (AdmissibleClass.mk A.channel A.endpointSatisfied A.remainderRecorded A.gateWitness) ∧
  ChannelConductanceBridge.gateClosed (AdmissibleClass.mk A.channel A.endpointSatisfied A.remainderRecorded A.gateWitness)

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse