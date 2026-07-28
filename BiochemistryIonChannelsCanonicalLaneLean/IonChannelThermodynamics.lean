import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  spontaneityCondition : Prop
  gibbsFreeEnergyValid : gibbsFreeEnergy
  enthalpyValid : enthalpy
  entropyValid : entropy
  spontaneityConditionValid : spontaneityCondition

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  spontaneityConditionClosed : T.spontaneityCondition

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.spontaneityCondition

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyClosed
    (And.intro E.entropyClosed E.spontaneityConditionClosed))

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse