module Hello where

import Foreign.C.Types
import Foreign.C.String

foreign export ccall helloFromHaskell :: IO CString

helloFromHaskell :: IO CString
helloFromHaskell = newCString "Hello from Haskell"
