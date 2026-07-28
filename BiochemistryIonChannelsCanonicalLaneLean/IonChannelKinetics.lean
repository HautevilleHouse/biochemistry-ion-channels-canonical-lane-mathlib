import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure IonChannelKinetics where
  openProbability : Prop
  closeRate : Prop
  openRate : Prop
  beta : Prop
  alpha : Prop
  equilibriumOpen : openProbability → openProbability → Prop

structure IonChannelKineticsEvidence (K : IonChannelKinetics) where
  openProbabilityClosed : K.openProbability
  closeRateClosed : K.closeRate
  openRateClosed : K.openRate
  betaClosed : K.beta
  alphaClosed : K.alpha
  equilibriumOpenClosed : K.equilibriumOpen K.openProbability K.openProbability

def IonChannelKineticsClosed (K : IonChannelKinetics) : Prop :=
  K.openProbability ∧ K.closeRate ∧ K.openRate ∧ K.beta ∧ K.alpha ∧
  K.equilibriumOpen K.openProbability K.openProbability

theorem ion_channel_kinetics_closed_from_evidence (K : IonChannelKinetics)
    (E : IonChannelKineticsEvidence K) : IonChannelKineticsClosed K :=
  And.intro E.openProbabilityClosed
    (And.intro E.closeRateClosed
      (And.intro E.openRateClosed
        (And.intro E.betaClosed
          (And.intro E.alphaClosed E.equilibriumOpenClosed))))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse