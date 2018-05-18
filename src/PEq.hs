{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
module PEq where

type family (x :: a) == (y :: a) :: Bool
type instance a == b = EqBool a b

type family EqBool (a :: Bool) (b :: Bool) :: Bool where
  EqBool 'False      'False = 'True
  EqBool 'True       'True  = 'True
  EqBool _           _      = 'False
