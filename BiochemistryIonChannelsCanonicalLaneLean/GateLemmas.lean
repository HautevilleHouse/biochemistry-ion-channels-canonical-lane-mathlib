import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse