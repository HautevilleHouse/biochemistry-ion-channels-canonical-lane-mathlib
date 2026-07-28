import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure EquilibriumBindingPackage where
  dissociationConstant : Prop
  bindingSitesOccupied : Prop
  cooperativity : Prop
  saturationFunction : Prop
  dissociationConstantValid : dissociationConstant
  bindingSitesOccupiedValid : bindingSitesOccupied
  cooperativityValid : cooperativity
  saturationFunctionValid : saturationFunction

structure EquilibriumBindingEvidence (B : EquilibriumBindingPackage) where
  dissociationConstantClosed : B.dissociationConstant
  bindingSitesOccupiedClosed : B.bindingSitesOccupied
  cooperativityClosed : B.cooperativity
  saturationFunctionClosed : B.saturationFunction

def EquilibriumBindingClosed (B : EquilibriumBindingPackage) : Prop :=
  B.dissociationConstant ∧ B.bindingSitesOccupied ∧ B.cooperativity ∧ B.saturationFunction

theorem equilibrium_binding_closed_from_evidence (B : EquilibriumBindingPackage)
    (E : EquilibriumBindingEvidence B) : EquilibriumBindingClosed B := by
  exact And.intro E.dissociationConstantClosed (And.intro E.bindingSitesOccupiedClosed
    (And.intro E.cooperativityClosed E.saturationFunctionClosed))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse