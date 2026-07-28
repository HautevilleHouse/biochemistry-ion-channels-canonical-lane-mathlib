import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelAdmittedObject where
  channelType : String
  conductance : ℝ
  openProbability : ℝ
  bindingAffinity : ℝ
  conclusion : Prop

structure AdmissibleClass where
  object : IonChannelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse