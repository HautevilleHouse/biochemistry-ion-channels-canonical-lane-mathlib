import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure GatingMechanismPackage where
  gateStates : Type
  voltageDependence : Prop
  ligandGating : Prop
  inactivation : Prop
  gateTransitionRates : Prop
  voltageDependenceValid : voltageDependence
  ligandGatingValid : ligandGating
  inactivationValid : inactivation
  gateTransitionRatesValid : gateTransitionRates

structure GatingMechanismEvidence (G : GatingMechanismPackage) where
  voltageDependenceClosed : G.voltageDependence
  ligandGatingClosed : G.ligandGating
  inactivationClosed : G.inactivation
  gateTransitionRatesClosed : G.gateTransitionRates

def GatingMechanismClosed (G : GatingMechanismPackage) : Prop :=
  G.voltageDependence ∧ G.ligandGating ∧ G.inactivation ∧ G.gateTransitionRates

theorem gating_mechanism_closed_from_evidence (G : GatingMechanismPackage)
    (E : GatingMechanismEvidence G) : GatingMechanismClosed G := by
  exact And.intro E.voltageDependenceClosed (And.intro E.ligandGatingClosed
    (And.intro E.inactivationClosed E.gateTransitionRatesClosed))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse