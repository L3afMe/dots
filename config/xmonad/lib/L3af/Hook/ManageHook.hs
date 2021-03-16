module L3af.Hook.ManageHook ( manage'
                            ) where

import XMonad.ManageHook ( ( =?  )
                         , ( --> )
                         , className
                         , composeAll
                         , doIgnore )

manage' = composeAll
    [ className =? "Polybar" --> doIgnore
    ]
