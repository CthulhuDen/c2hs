-- | Internal data types
module C2HS.Types where

-- | Foreign import can be a) unmodified (default) b) unsafe c) interruptible
data ForeignModifier = Unsafe | Interruptible
  deriving (Show, Eq)

showForeignModifier' :: ForeignModifier -> String
showForeignModifier' Unsafe        = "unsafe"
showForeignModifier' Interruptible = "interruptible"

showForeignModifier :: Maybe ForeignModifier -> String
showForeignModifier = maybe "safe" showForeignModifier'
