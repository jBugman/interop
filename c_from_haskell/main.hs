module Main where

import Foreign.C.Types
import Foreign.C.String

foreign import ccall unsafe helloFromC :: CString

main :: IO ()
main = peekCString helloFromC >>= putStrLn
