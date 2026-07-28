import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure MolecularOrbitalBinding where
  bindingSite : Type
  orbitalEnergyLevels : Type
  electronDensity : Prop
  ligandAffinity : Prop
  conductanceModulation : Prop

structure MolecularOrbitalBindingEvidence (M : MolecularOrbitalBinding) where
  bindingSiteClosed : M.bindingSite
  orbitalEnergyLevelsClosed : M.orbitalEnergyLevels
  electronDensityClosed : M.electronDensity
  ligandAffinityClosed : M.ligandAffinity
  conductanceModulationClosed : M.conductanceModulation

def MolecularOrbitalBindingClosed (M : MolecularOrbitalBinding) : Prop :=
  M.electronDensity ∧ M.ligandAffinity ∧ M.conductanceModulation

theorem molecular_orbital_binding_closed_from_evidence (M : MolecularOrbitalBinding)
    (E : MolecularOrbitalBindingEvidence M) : MolecularOrbitalBindingClosed M :=
  And.intro E.electronDensityClosed
    (And.intro E.ligandAffinityClosed E.conductanceModulationClosed)

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse