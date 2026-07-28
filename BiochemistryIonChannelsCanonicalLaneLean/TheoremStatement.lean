import BiochemistryIonChannelsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace BiochemistryIonChannelsCanonicalLaneLean

structure ChannelTheoremStatement where
  sourceKey : String
  theoremName : String
  channelType : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceChannelTheorem : ChannelTheoremStatement := {
  sourceKey := "biochemistry-ion-channels-canonical-lane",
  theoremName := "IonChannelClosure",
  channelType := "VoltageGatedPotassium",
  classicalBoundary := "unrestricted classical closure carried",
  constrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "channel_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end BiochemistryIonChannelsCanonicalLaneLean
end HautevilleHouse