import BiochemistryIonChannelsCanonicalLaneLean.IonChannelConductance

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelSelectivityPackage {G : IonChannelConductancePackage} where
  selectivitySequence : Prop
  poreDiameter : Prop
  chargeSelectivity : Prop
  dehydrationCost : Prop

structure IonChannelSelectivityEvidence {G : IonChannelConductancePackage}
    (S : IonChannelSelectivityPackage G) where
  selectivitySequenceClosed : S.selectivitySequence
  poreDiameterClosed : S.poreDiameter
  chargeSelectivityClosed : S.chargeSelectivity
  dehydrationCostClosed : S.dehydrationCost

def IonChannelSelectivityClosed {G : IonChannelConductancePackage}
    (S : IonChannelSelectivityPackage G) : Prop :=
  S.selectivitySequence ∧ S.poreDiameter ∧ S.chargeSelectivity ∧ S.dehydrationCost

theorem ion_channel_selectivity_closed_from_evidence
    {G : IonChannelConductancePackage} (S : IonChannelSelectivityPackage G)
    (E : IonChannelSelectivityEvidence S) : IonChannelSelectivityClosed S := by
  exact And.intro E.selectivitySequenceClosed
    (And.intro E.poreDiameterClosed
      (And.intro E.chargeSelectivityClosed E.dehydrationCostClosed))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse
