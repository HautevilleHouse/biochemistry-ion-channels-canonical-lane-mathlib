import BiochemistryIonChannelsCanonicalLaneLean.KineticsEvidence

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure GatingKineticsCertificate (K : GatingKineticsPackage) where
  openRateModel : Prop
  closeRateModel : Prop
  voltageSensorModel : Prop
  openRateModelClosed : openRateModel
  closeRateModelClosed : closeRateModel
  voltageSensorModelClosed : voltageSensorModel
  kineticsEvidence : GatingKineticsEvidence K

def GatingKineticsCertificateClosed {K : GatingKineticsPackage} (C : GatingKineticsCertificate K) : Prop :=
  C.openRateModel ∧ C.closeRateModel ∧ C.voltageSensorModel ∧ GatingKineticsClosed K

theorem gating_kinetics_certificate_closed {K : GatingKineticsPackage} (C : GatingKineticsCertificate K) :
    GatingKineticsCertificateClosed C := by
  exact And.intro C.openRateModelClosed (And.intro C.closeRateModelClosed (And.intro C.voltageSensorModelClosed (gating_kinetics_closed_from_evidence K C.kineticsEvidence)))

structure PermeationCertificate (P : PermeationPackage) where
  ionicCurrentModel : Prop
  selectivityModel : Prop
  blockModel : Prop
  ionicCurrentModelClosed : ionicCurrentModel
  selectivityModelClosed : selectivityModel
  blockModelClosed : blockModel
  permeationEvidence : PermeationEvidence P

def PermeationCertificateClosed {P : PermeationPackage} (C : PermeationCertificate P) : Prop :=
  C.ionicCurrentModel ∧ C.selectivityModel ∧ C.blockModel ∧ PermeationClosed P

theorem permeation_certificate_closed {P : PermeationPackage} (C : PermeationCertificate P) :
    PermeationCertificateClosed C := by
  exact And.intro C.ionicCurrentModelClosed (And.intro C.selectivityModelClosed (And.intro C.blockModelClosed (permeation_closed_from_evidence P C.permeationEvidence)))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse