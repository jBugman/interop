module Main where

import Foreign.C.Types
import Foreign.C.String

foreign import ccall unsafe "HelloFromGo" helloFromGo :: CString

main :: IO ()
main = peekCString helloFromGo >>= putStrLn
