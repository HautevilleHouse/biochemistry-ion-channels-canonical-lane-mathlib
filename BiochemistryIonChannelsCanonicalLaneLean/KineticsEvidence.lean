import BiochemistryIonChannelsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure GatingKineticsPackage where
  openRate : Prop
  closeRate : Prop
  voltageSensitivity : Prop
  timeConstant : Prop

structure GatingKineticsEvidence (K : GatingKineticsPackage) where
  openRateClosed : K.openRate
  closeRateClosed : K.closeRate
  voltageSensitivityClosed : K.voltageSensitivity
  timeConstantClosed : K.timeConstant

def GatingKineticsClosed (K : GatingKineticsPackage) : Prop :=
  K.openRate ∧ K.closeRate ∧ K.voltageSensitivity ∧ K.timeConstant

theorem gating_kinetics_closed_from_evidence (K : GatingKineticsPackage) (E : GatingKineticsEvidence K) :
    GatingKineticsClosed K := by
  exact And.intro E.openRateClosed (And.intro E.closeRateClosed (And.intro E.voltageSensitivityClosed E.timeConstantClosed))

structure PermeationPackage where
  ionicCurrent : Prop
  selectivityRatio : Prop
  conductanceVoltage : Prop
  blockMechanism : Prop

structure PermeationEvidence (P : PermeationPackage) where
  ionicCurrentClosed : P.ionicCurrent
  selectivityRatioClosed : P.selectivityRatio
  conductanceVoltageClosed : P.conductanceVoltage
  blockMechanismClosed : P.blockMechanism

def PermeationClosed (P : PermeationPackage) : Prop :=
  P.ionicCurrent ∧ P.selectivityRatio ∧ P.conductanceVoltage ∧ P.blockMechanism

theorem permeation_closed_from_evidence (P : PermeationPackage) (E : PermeationEvidence P) :
    PermeationClosed P := by
  exact And.intro E.ionicCurrentClosed (And.intro E.selectivityRatioClosed (And.intro E.conductanceVoltageClosed E.blockMechanismClosed))

structure IonChannelAnalyticFoundation where
  gating : GatingKineticsPackage
  gatingEvidence : GatingKineticsEvidence gating
  permeation : PermeationPackage
  permeationEvidence : PermeationEvidence permeation

def IonChannelAnalyticFoundationClosed (A : IonChannelAnalyticFoundation) : Prop :=
  GatingKineticsClosed A.gating ∧ PermeationClosed A.permeation

theorem ion_channel_analytic_foundation_closed_from_evidence (A : IonChannelAnalyticFoundation) :
    IonChannelAnalyticFoundationClosed A := by
  exact And.intro (gating_kinetics_closed_from_evidence A.gating A.gatingEvidence)
                   (permeation_closed_from_evidence A.permeation A.permeationEvidence)

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse