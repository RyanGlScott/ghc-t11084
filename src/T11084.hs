{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
module T11084 (Lookup) where

import PEq

type family Case key x y xys t where
  Case key x y xys 'True = 'Just y
  Case key x y xys 'False = Lookup key xys

type family Lookup (n :: a) (hs :: [(a, b)]) :: Maybe b where
  Lookup _key '[]             = 'Nothing
  Lookup key  ('(x, y) : xys) = Case key x y xys (key == x)
