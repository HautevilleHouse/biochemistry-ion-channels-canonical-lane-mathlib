import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure ThermodynamicEquilibrium where
  freeEnergyDifference : Prop
  entropyChange : Prop
  enthalpyChange : Prop
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibrium) where
  freeEnergyDifferenceClosed : T.freeEnergyDifference
  entropyChangeClosed : T.entropyChange
  enthalpyChangeClosed : T.enthalpyChange
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibrium) : Prop :=
  T.freeEnergyDifference ∧ T.entropyChange ∧ T.enthalpyChange ∧
  T.equilibriumConstant ∧ T.gibbsFreeEnergy

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibrium)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T :=
  And.intro E.freeEnergyDifferenceClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.enthalpyChangeClosed
        (And.intro E.equilibriumConstantClosed E.gibbsFreeEnergyClosed)))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse