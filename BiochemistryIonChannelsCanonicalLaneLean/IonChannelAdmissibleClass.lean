import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelSystem where
  channelProtein : Type
  openStateProbability : Prop
  ionSelectivity : Prop
  conductionActive : Prop

structure IonChannelAdmittedObject where
  system : IonChannelSystem
  bindingKinetics : Prop
  thermodynamicFavorability : Prop
  gatingMechanism : Prop
  conclusion : system.conductionActive

def admittedClosure (A : IonChannelAdmittedObject) : Prop :=
  A.system.conductionActive ∧ (A.bindingKinetics ∨ A.thermodynamicFavorability)

structure AdmissibleClass where
  object : IonChannelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse