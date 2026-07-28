import HautevilleHouse.BiochemistryIonChannelsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure OrbitalPackage (A : AdmissibleClass) where
  hamiltonianMatrix : Type u
  molecularOrbitals : Type v
  energyLevels : Type w
  homoEnergy : ℝ
  lumoEnergy : ℝ
  symmetryAdapted : Prop
  electronegativityScaled : Prop

structure OrbitalEvidence (A : AdmissibleClass) (O : OrbitalPackage A) where
  symmetryAdaptedClosed : O.symmetryAdapted
  electronegativityScaledClosed : O.electronegativityScaled

def OrbitalClosed (A : AdmissibleClass) (O : OrbitalPackage A) : Prop :=
  O.symmetryAdapted ∧ O.electronegativityScaled

theorem orbital_closed_from_evidence (A : AdmissibleClass) (O : OrbitalPackage A) (E : OrbitalEvidence A O) : OrbitalClosed A O :=
  And.intro E.symmetryAdaptedClosed E.electronegativityScaledClosed

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse