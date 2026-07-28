import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelModel where
  carrier : Type
  topology : TopologicalSpace carrier

structure IonChannelState where
  channel : IonChannelModel
  openProbability : Prop
  conductance : Prop
  voltageDependence : Prop

structure IonChannelAdmittedObject where
  state : IonChannelState
  gatingClosed : Prop
  permeationVerified : Prop
  selectivityProven : Prop
  conclusion : gatingClosed ∧ permeationVerified ∧ selectivityProven

structure IonChannelEndgameState where
  object : IonChannelAdmittedObject

def IonChannelWitnessClosed (O : IonChannelAdmittedObject) : Prop :=
  O.gatingClosed ∧ O.permeationVerified ∧ O.selectivityProven

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse