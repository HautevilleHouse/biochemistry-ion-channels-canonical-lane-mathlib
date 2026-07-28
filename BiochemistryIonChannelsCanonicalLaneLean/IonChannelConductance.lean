import BiochemistryIonChannelsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelConductancePackage where
  channelType : Type u
  membranePotential : Type v
  ionicCurrent : Type w
  conductanceValue : Prop
  ohmicBehavior : Prop
  rectification : Prop
  ionSpecificConductance : Prop

structure IonChannelConductanceEvidence (G : IonChannelConductancePackage) where
  conductanceValueClosed : G.conductanceValue
  ohmicBehaviorClosed : G.ohmicBehavior
  rectificationClosed : G.rectification
  ionSpecificConductanceClosed : G.ionSpecificConductance

def IonChannelConductanceClosed (G : IonChannelConductancePackage) : Prop :=
  G.conductanceValue ∧ G.ohmicBehavior ∧ G.rectification ∧ G.ionSpecificConductance

theorem ion_channel_conductance_closed_from_evidence
    (G : IonChannelConductancePackage) (E : IonChannelConductanceEvidence G) :
    IonChannelConductanceClosed G := by
  exact And.intro E.conductanceValueClosed
    (And.intro E.ohmicBehaviorClosed
      (And.intro E.rectificationClosed E.ionSpecificConductanceClosed))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse
