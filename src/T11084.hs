{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
module T11084 where

import T11084Aux

type family G where
  G = F Char
