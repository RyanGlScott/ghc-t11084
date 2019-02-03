{-# LANGUAGE TypeFamilies #-}
module T11084Aux where

type family F a
type instance F a = Int
